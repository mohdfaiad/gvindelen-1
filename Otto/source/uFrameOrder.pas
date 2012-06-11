unit uFrameOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrameBase1, ImgList, PngImageList, ActnList, FIBDatabase,
  pFIBDatabase, TBXStatusBars, TB2Dock, TB2Toolbar, TBX, DBGridEh,
  DB, FIBDataSet, pFIBDataSet, GridsEh, ExtCtrls,
  JvExExtCtrls, JvNetscapeSplitter, JvExStdCtrls, JvEdit, JvValidateEdit,
  DBCtrlsEh, StdCtrls, Mask, DBLookupEh, JvGroupBox, NativeXml,
  JvComponentBase, JvEmbeddedForms, JvPanel, DBGridEhGrouping;

type
  TFrameOrder = class(TFrameBase1)
    grBoxOrder: TJvGroupBox;
    lblOrderProduct: TLabel;
    lbl3: TLabel;
    lblExchEUR: TLabel;
    lbl4: TLabel;
    lcbProduct: TDBLookupComboboxEh;
    lcbTaxPlan: TDBLookupComboboxEh;
    edtBYR2EUR: TJvValidateEdit;
    edtOrderWeight: TJvValidateEdit;
    grBox1: TJvGroupBox;
    split1: TJvNetscapeSplitter;
    grd1: TDBGridEh;
    qryTaxPlans: TpFIBDataSet;
    dsTaxPlans: TDataSource;
    qryProducts: TpFIBDataSet;
    dsProducts: TDataSource;
    qryOrderDates: TpFIBDataSet;
    dsOrderDates: TDataSource;
  private
    { Private declarations }
    function GetOrderId: Integer;
  public
    { Public declarations }
    ndOrder: TXmlNode;
    procedure InitData; override;
    procedure FreeData; override;
    procedure OpenTables; override;
    procedure Read; override;
    procedure Write; override;
    procedure UpdateCaptions; override;
    property OrderId: Integer read GetOrderId;
  end;

var
  FrameOrder: TFrameOrder;

implementation

uses
  udmOtto, GvNativeXml, GvStr;

{$R *.dfm}

{ TFrameOrder }

function TFrameOrder.GetOrderId: Integer;
begin
  Result:= ndOrder.ReadAttributeInteger('ID', 0)
end;

procedure TFrameOrder.Read;
var
  HasDeleteableFlag: Boolean;
begin
  HasDeleteableFlag:= IsWordPresent('DELETEABLE', GetXmlAttr(ndOrder, 'STATUS_FLAG_LIST'), ',');
  lcbProduct.Enabled:= HasDeleteableFlag;
  lcbTaxPlan.Enabled:= HasDeleteableFlag;
  lcbProduct.Value:= GetXmlAttrValue(ndOrder, 'PRODUCT_ID',
    qryProducts.Lookup('STATUS_SIGN', 'DEFAULT', 'PRODUCT_ID'));
  lcbTaxPlan.Value:= GetXmlAttrValue(ndOrder, 'TAXPLAN_ID',
    qryTaxPlans.Lookup('STATUS_SIGN', 'DEFAULT', 'TAXPLAN_ID'));
  edtBYR2EUR.Text:= GetXmlAttrValue(ndOrder, 'BYR2EUR');

  if AttrExists(ndOrder, 'WEIGHT') then
    edtOrderWeight.Value:= GetXmlAttrValue(ndOrder, 'WEIGHT');
end;

procedure TFrameOrder.Write;
var
  OrderCode: string;
begin
  inherited;
  if XmlAttrIn(ndOrder, 'STATUS_SIGN', 'NEW') then
  begin
    SetXmlAttr(ndOrder, 'PRODUCT_ID', lcbProduct.Value);
    SetXmlAttr(ndOrder, 'TAXPLAN_ID', lcbTaxPlan.Value);
    dmOtto.ActionExecute(trnWrite, ndOrder, 'DRAFT');
  end
  else
  if XmlAttrIn(ndOrder, 'STATUS_SIGN', 'APPROVED') then
  begin
    if GetXmlAttrValue(ndOrder, 'PRODUCT_ID') <> lcbProduct.Value then
    begin
      if MessageDlg('�� ������������� ������ �������� ��� ��������?',
                    mtConfirmation, mbOKCancel, 0) = mrOk then
      begin
        SetXmlAttr(ndOrder, 'PRODUCT_ID', lcbProduct.Value);
        OrderCode:= dmOtto.GetNextCounterValue('PRODUCT', 'ORDER_CODE', lcbProduct.Value);
        SetXmlAttr(ndOrder, 'ORDER_CODE', OrderCode);
        dmOtto.ActionExecute(trnWrite, ndOrder);
      end;
    end;
  end;
  dmOtto.ObjectGet(ndOrder, OrderId, trnWrite);
end;

procedure TFrameOrder.FreeData;
begin
  inherited;
end;

procedure TFrameOrder.InitData;
begin
  inherited;
end;

procedure TFrameOrder.OpenTables;
begin
  inherited;
  qryProducts.Open;
  qryTaxPlans.Open;
  qryOrderDates.OpenWP([OrderId]);
end;

procedure TFrameOrder.UpdateCaptions;
begin
  grBoxOrder.Caption:= DetectCaption(ndOrder, '������');
end;

end.
