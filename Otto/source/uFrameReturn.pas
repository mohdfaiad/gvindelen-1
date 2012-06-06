unit uFrameReturn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrameBase1, StdCtrls, ExtCtrls, ImgList, PngImageList,
  ActnList, FIBDatabase, pFIBDatabase, TBXStatusBars, TB2Dock, TB2Toolbar,
  TBX, JvExStdCtrls, JvGroupBox, Mask, JvExMask, JvMaskEdit,
  DBCtrlsEh, NativeXml, TB2Item, JvValidators, JvErrorIndicator,
  JvComponentBase;

type
  TFrameMoneyBack = class(TFrameBase1)
    grpBankMovement: TJvGroupBox;
    edBankAccount: TLabeledEdit;
    grpCommon: TJvGroupBox;
    edBelPostBarCode: TLabeledEdit;
    edClientAccount: TLabeledEdit;
    edBankName: TLabeledEdit;
    edBankUNP: TLabeledEdit;
    edBankMFO: TLabeledEdit;
    edPersonalNum: TLabeledEdit;
    edPassportNum: TLabeledEdit;
    edtPassportIssued: TDBDateTimeEditEh;
    lblPasportIssued: TLabel;
    edPassportIssuer: TLabeledEdit;
    rgMoneyBackKind: TRadioGroup;
    edBonus: TDBNumberEditEh;
    lblBonus: TLabel;
    chkPayByFirm: TCheckBox;
    btnMakeReturn: TTBXItem;
    actCreateReturn: TAction;
    rgArtReturnKind: TRadioGroup;
    procedure rgMoneyBackKindClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actCreateReturnExecute(Sender: TObject);
    procedure rgArtReturnKindClick(Sender: TObject);
  private
    function GetOrderId: Integer;
    function Valid: Boolean;
    { Private declarations }
  public
    ndOrder: TXmlNode;
    ndClient: TXmlNode;
    ndOrderMoneys: TXmlNode;
    ndMoneyBack: TXmlNode;
    procedure InitData; override;
    procedure FreeData; override;
    procedure OpenTables; override;
    procedure Read; override;
    procedure Write; override;
    procedure UpdateCaptions; override;
    property OrderId: Integer read GetOrderId;
  end;


implementation

{$R *.dfm}
uses
  GvNativeXml, udmOtto, GvStr;

procedure TFrameMoneyBack.FreeData;
begin
  inherited;

end;

function TFrameMoneyBack.GetOrderId: Integer;
begin
  Result:= ndOrder.ReadAttributeInteger('ID', 0)
end;

procedure TFrameMoneyBack.InitData;
begin
  inherited;

end;

procedure TFrameMoneyBack.OpenTables;
begin
  inherited;

end;

procedure TFrameMoneyBack.Read;
var
  ReturnKind: string;
begin
  edBelPostBarCode.Text:= GetXmlAttr(ndOrder, 'BELPOST_BAR_CODE');
  rgMoneyBackKind.ItemIndex:= WordNo(GetXmlAttr(ndOrder, 'MONEYBACK_KIND'), 'LEAVE;BELPOST;BANK', ';');

  edPassportNum.Text:= GetXmlAttr(ndClient, 'PASSPORT_NUM');
  edtPassportIssued.Value:= GetXmlAttrValue(ndClient, 'PASSPORT_ISSUED');
  edPassportIssuer.Text:= GetXmlAttr(ndClient, 'PASSPORT_ISSUER');

  edBankAccount.Text:= GetXmlAttr(ndClient, 'BANK_ACCOUNT_NUM');
  edClientAccount.Text:= GetXmlAttr(ndClient, 'BANK_CLIENT_ACCOUNT');
  edBankName.Text:= GetXmlAttr(ndClient, 'BANK_NAME');
  edBankMFO.Text:= GetXmlAttr(ndClient, 'BANK_MFO');
  edBankUNP.Text:= GetXmlAttr(ndClient, 'BANK_UNP');
  edPersonalNum.Text:= GetXmlAttr(ndClient, 'PERSONAL_NUM');
end;

procedure TFrameMoneyBack.rgMoneyBackKindClick(Sender: TObject);
begin
  grpBankMovement.Enabled:= rgMoneyBackKind.ItemIndex = 2;
end;

procedure TFrameMoneyBack.UpdateCaptions;
begin
  inherited;

end;

procedure TFrameMoneyBack.Write;
var
  ReturnKind: string;
begin
  trnWrite.SetSavePoint('OnMoneyBack');
  try
    SetXmlAttr(ndOrder, 'MONEYBACK_KIND', ExtractWord(rgMoneyBackKind.ItemIndex+1, 'LEAVE;BELPOST;BANK', ';'));
    SetXmlAttr(ndOrder, 'BELPOST_BAR_CODE', edBelPostBarCode.Text);
    SetXmlAttr(ndOrder, 'BONUS_EUR', edBonus.text);

    SetXmlAttr(ndClient, 'PASSPORT_NUM', edPassportNum.Text);
    SetXmlAttr(ndClient, 'PASSPORT_ISSUED', edtPassportIssued.Value);
    SetXmlAttr(ndClient, 'PASSPORT_ISSUER', edPassportIssuer.Text);

    SetXmlAttr(ndClient, 'BANK_ACCOUNT_NUM', edBankAccount.Text);
    SetXmlAttr(ndClient, 'BANK_CLIENT_ACCOUNT', edClientAccount.Text);
    SetXmlAttr(ndClient, 'BANK_NAME', edBankName.Text);
    SetXmlAttr(ndClient, 'BANK_MFO', edBankMFO.Text);
    SetXmlAttr(ndClient, 'BANK_UNP', edBankUNP.Text);
    SetXmlAttr(ndClient, 'PERSONAL_NUM', edPersonalNum.Text);

    dmOtto.ActionExecute(trnWrite, ndOrder);
    dmOtto.ObjectGet(ndOrder, OrderId, trnWrite);

    dmOtto.ActionExecute(trnWrite, ndClient);
    dmOtto.ObjectGet(ndClient, GetXmlAttrValue(ndOrder, 'CLIENT_ID'), trnWrite);
  except
    trnWrite.RollBackToSavePoint('OnMoneyBack');
    raise;
  end;
end;

procedure TFrameMoneyBack.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=vk_Return then
    Key:= 0;
end;

function TFrameMoneyBack.Valid: Boolean;
var
  Msgs: TStringList;
begin
  Msgs:= TStringList.Create;
  try
    if rgArtReturnKind.ItemIndex = -1 then
      Msgs.Add('�� ������ ��� ��������');
    if Length(edPassportNum.Text) <> 9 then
      Msgs.Add('����������� ������ ����� ��������');
    if edtPassportIssued.Value = null then
      Msgs.Add('���������� ���� ������ ��������');
    if edPassportIssuer.Text = '' then
      Msgs.Add('���������� �����, �������� �������');
    if (rgArtReturnKind.ItemIndex in [1..2]) and (edBelPostBarCode.Text = '') then
      Msgs.Add('���������� ����� ��������� �����������');
    if rgMoneyBackKind.ItemIndex = -1 then
      Msgs.Add('�� ������� �������� � ��������');
    if rgMoneyBackKind.ItemIndex = 2 then
    begin
      if Length(edBankAccount.Text) <> 13 then
        Msgs.Add('�� ����� ������ ����� ����� � �����');
      if edClientAccount.Text = '' then
        Msgs.Add('�� ������ ���� �������');
      if edBankName.Text = '' then
        Msgs.Add('�� ������� ������������ �����');
      if edBankMFO.Text = '' then
        Msgs.Add('�� ������� ��� �����');
      if edBankUNP.Text = '' then
        Msgs.Add('�� ������� ��� �����');
      if Length(edPersonalNum.Text) <> 14 then
        Msgs.Add('�� ������ ������ ����� �������');
    end;
    Result:= Msgs.Count = 0;
    if Msgs.Count> 0 then
      ShowMessage(Msgs.Text);
  finally
    Msgs.Free;
  end;
end;

procedure TFrameMoneyBack.actCreateReturnExecute(Sender: TObject);
var
  MoneyEur: Double;
begin
  inherited;
  Write;
  if Valid then
  try
    SetXmlAttr(ndOrder, 'NEW.STATUS_SIGN', 'HAVERETURN');
    dmOtto.ActionExecute(trnWrite, ndOrder);
    dmOtto.ObjectGet(ndOrder, OrderId, trnWrite);
    if GetXmlAttrValue(ndOrder, 'MONEYBACK_KIND') = 'LEAVE' then
    begin
      MoneyEur:= trnWrite.DefaultDatabase.QueryValue(
        'select cost_eur from v_order_summary os where os.order_id = :order_id',
        0, [GetXmlAttrValue(ndOrder, 'ID')]);
      dmOtto.ActionExecute(trnWrite, 'ACCOUNT', 'ACCOUNT_DEBITORDER',
        XmlAttrs2Vars(ndOrder, 'ID=ACCOUNT_ID;ORDER_ID=ID',
        Value2Vars(MoneyEur, 'AMOUNT_EUR')));
    end;
    trnWrite.Commit;
    trnRead.Commit;
    ShowMessage('������� ��������');
    TForm(Owner).Close;
  except
    trnWrite.Rollback;
  end;
end;

procedure TFrameMoneyBack.rgArtReturnKindClick(Sender: TObject);
begin
  edBelPostBarCode.Enabled:= rgArtReturnKind.ItemIndex in [1..2];
end;

end.
