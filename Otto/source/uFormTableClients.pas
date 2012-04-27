unit uFormTableClients;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseNSIForm, FIBDatabase, pFIBDatabase,
  ImgList, PngImageList, ActnList, DB, FIBDataSet, pFIBDataSet, GridsEh,
  DBGridEh, StdCtrls, JvExStdCtrls, JvGroupBox, ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, TB2Item, TBX, TB2Dock, TB2Toolbar, ComCtrls,
  DBGridEhGrouping;

type
  TFormTableClients = class(TBaseNSIForm)
    pcClientDetail: TPageControl;
    tsClientOrders: TTabSheet;
    tsClientAccountMovements: TTabSheet;
    grdClientOrders: TDBGridEh;
    grdAccountMovements: TDBGridEh;
    qryAccountMovements: TpFIBDataSet;
    dsAccountMovements: TDataSource;
    qryClientOrders: TpFIBDataSet;
    dsClientOrders: TDataSource;
    actAccountManualDebit: TAction;
    actAccountManualCredit: TAction;
    btnAccountUserDebit: TTBXItem;
    btnAccountUserCredit: TTBXItem;
    tsAdresses: TTabSheet;
    grdAdresses: TDBGridEh;
    qryAdresses: TpFIBDataSet;
    dsAdresses: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure actAccountManualDebitExecute(Sender: TObject);
    procedure actAccountManualCreditExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTableClients: TFormTableClients;

implementation

uses
  udmOtto, NativeXml, GvNativeXml, uDlgPayment;

{$R *.dfm}

procedure TFormTableClients.FormCreate(Sender: TObject);
begin
  inherited;
  trnNSI.StartTransaction;
  qryMain.Open;
  qryAccountMovements.Open;
  qryClientOrders.Open;
  qryAdresses.Open;
  tlBarNsiActions.Visible:= dmOtto.isAdminRole;
end;

procedure TFormTableClients.actAccountManualDebitExecute(Sender: TObject);
var
  AccountId: Integer;
  Amount_Eur: Double;
  Byr2Eur: Integer;
  Xml: TNativeXml;
  ndClient: TXmlNode;
  DlgManualPayment: TDlgManualPayment;
  Annotate: string;
begin
  DlgManualPayment:= TDlgManualPayment.Create(self);
  try
    DlgManualPayment.Caption:= '������ ���������� �� ����';
    if DlgManualPayment.ShowModal = mrOk then
    begin
      Amount_Eur:= DlgManualPayment.edtAmountEur.Value;
      Byr2Eur:= DlgManualPayment.edtByr2Eur.Value;
      Xml:= TNativeXml.CreateName('CLIENT');
      Annotate:= DlgManualPayment.memAnnotate.Lines.Text;
      ndClient:= Xml.Root;
      try
        trnWrite.StartTransaction;
        dmOtto.ObjectGet(ndClient, qryMain['CLIENT_ID'], trnWrite);
        try
        if GetXmlAttrValue(ndClient, 'ACCOUNT_ID') = null then
          begin
            // ������� ����
            AccountId:= dmOtto.GetNewObjectId('ACCOUNT');
            dmOtto.ActionExecute(trnWrite, 'ACCOUNT', 'ACCOUNT_CREATE', '', AccountId);
            SetXmlAttr(ndClient, 'ACCOUNT_ID', AccountId);
            dmOtto.ActionExecute(trnWrite, ndClient);
          end
          else
            AccountId:= qryMain['ACCOUNT_ID'];
          dmOtto.ActionExecute(trnWrite, 'ACCOUNT','ACCOUNT_MANUALDEBIT',
            Value2Vars(Amount_EUR, 'AMOUNT_EUR',
            Value2Vars(Byr2Eur, 'BYR2EUR',
            Value2Vars(Annotate, 'ANNOTATE'))), AccountId);
          trnWrite.Commit;
        except
          on E:Exception do
            begin
              trnWrite.Rollback;
              ShowMessage(E.Message);
            end
        end;
      finally
        Xml.Free;
      end;
    end;
    qryMain.CloseOpen(True);
    qryAccountMovements.CloseOpen(True);
  finally
    DlgManualPayment.Free;
  end;
end;

procedure TFormTableClients.actAccountManualCreditExecute(Sender: TObject);
var
  AccountId: Integer;
  Amount_Eur: Double;
  Byr2Eur: Integer;
  Xml: TNativeXml;
  ndClient: TXmlNode;
  DlgManualPayment: TDlgManualPayment;
  Annotate: string;
begin
  DlgManualPayment:= TDlgManualPayment.Create(self);
  try
    DlgManualPayment.Caption:= '������ �������� �� �����';
    if DlgManualPayment.ShowModal = mrOk then
    begin
      Amount_Eur:= DlgManualPayment.edtAmountEur.Value;
      Byr2Eur:= DlgManualPayment.edtByr2Eur.Value;
      Annotate:= DlgManualPayment.memAnnotate.Lines.Text;
      Xml:= TNativeXml.CreateName('CLIENT');
      ndClient:= Xml.Root;
      try
        trnWrite.StartTransaction;
        dmOtto.ObjectGet(ndClient, qryMain['CLIENT_ID'], trnWrite);
        try
        if GetXmlAttrValue(ndClient, 'ACCOUNT_ID') = null then
          begin
            // ������� ����
            AccountId:= dmOtto.GetNewObjectId('ACCOUNT');
            dmOtto.ActionExecute(trnWrite, 'ACCOUNT', 'ACCOUNT_CREATE', '', AccountId);
            SetXmlAttr(ndClient, 'ACCOUNT_ID', AccountId);
            dmOtto.ActionExecute(trnWrite, ndClient);
          end
          else
            AccountId:= qryMain['ACCOUNT_ID'];
          dmOtto.ActionExecute(trnWrite, 'ACCOUNT','ACCOUNT_MANUALCREDIT',
            Value2Vars(Amount_EUR, 'AMOUNT_EUR',
            Value2Vars(Byr2Eur, 'BYR2EUR',
            Value2Vars(Annotate, 'ANNOTATE'))), AccountId);
          trnWrite.Commit;
        except
          on E:Exception do
            begin
              trnWrite.Rollback;
              ShowMessage(E.Message);
            end
        end;
      finally
        Xml.Free;
      end;
    end;
    qryMain.CloseOpen(True);
    qryAccountMovements.CloseOpen(True);
  finally
    DlgManualPayment.Free;
  end;
end;

end.
