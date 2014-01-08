unit uReportReturnedOrderItems;

interface
uses
  GvXml, FIBDatabase, pFIBDatabase, frxClass;

procedure ReportReturnedOrderItems(aTransaction: TpFIBTransaction);

implementation

uses
  udmOtto, GvStr, GvFile, SysUtils, GvXmlUtils, DateUtils, uMain;

procedure ExportProduct(aTransaction: TpFIBTransaction; ndProducts: TGvXmlNode; aProductId: Integer);
var
  ndProduct: TGvXmlNode;
  OrderItemList, FileName, Text: string;
  OrderItemId: variant;
begin
  ndProduct:= ndProducts.FindOrCreate('PRODUCT');
  try
    if not aTransaction.Active then
      aTransaction.StartTransaction;
    try
      dmOtto.ObjectGet(ndProduct, aProductId, aTransaction);
      OrderItemList:= aTransaction.DefaultDatabase.QueryValue(
        'select list(distinct o.orderitem_id) '+
        'from orderitems oi '+
        'inner join statuses s1 on (s1.status_id = oi.status_id and s1.status_sign = ''RETURNING'') '+
        'left join statuses s2 on (s2.status_id = oi.state_id) '+
        'inner join orders o on (o.order_id = oi.order_id) '+
        'where coalesce(s2.status_sign, '''')  <> ''RETURNSENTVILNIUS'' '+
        '  and o.product_id = :product_id',
        0, [aProductId], aTransaction);
      while OrderItemList <> '' do
      begin
        OrderItemId:= TakeFront5(OrderItemList, ',');
//        ExportOrderItem(aTransaction, ndProduct, OrderItemId);
      end;
      ForceDirectories(Path['ReturnRequests']);
      FileName:= GetNextFileName(Format('%sr%s_%%.2u.%.3d', [
        Path['ReturnRequests'], ndProduct['PARTNER_NUMBER'],
        DayOfTheYear(Date)]));
      SaveStringAsFile(Text, FileName);
//      dmOtto.CreateAlert('������ �� ��������', Format('����������� ���� %s', [ExtractFileName(FileName)]), mtInformation, 10000);
      aTransaction.Commit;
    except
      aTransaction.Rollback;
    end;
  finally
    ndProduct.Clear;
  end;
end;


procedure ReportOrderItemsByProduct(aTransaction: TpFIBTransaction;
  ndProducts: TGvXmlNode; aProductId: Integer);
var
  ndProduct, ndFastReport: TGvXmlNode;
  FileName, PartnerNumber: String;
  i: Integer;
  Att: TGvXmlAttribute;
begin
  ndProduct:= ndProducts.AddChild('PRODUCT');
  ndFastReport:= ndProducts.FindOrCreate('FASTREPORT');
  dmOtto.ObjectGet(ndProduct, aProductId, aTransaction);
  ForceDirectories(Path['Returns']);
  FileName:= GetNextFileName(Format(
    '%s%s_retart_%%.2u.%.3d', [
    Path['Returns'], ndProduct['PARTNER_NUMBER'], DayOfTheYear(Date)]));
  with dmOtto do
  begin
    frxExportXLS.DefaultPath:= Path['Returns'];
    frxExportXLS.FileName:= FileName+'.xls';
    frxExportXLS.Background:= True;
    frxExportXLS.OverwritePrompt:= False;
    frxExportXLS.ShowDialog:= False;
    frxExportXLS.ShowProgress:= True;

    frxPDFExport.DefaultPath:= Path['Returns'];
    frxPDFExport.FileName:= FileName+'.pdf';
    frxPDFExport.ShowDialog:= False;

    frxReport.LoadFromFile(Path['FastReport'] + 'OrderItemReturns.fr3');
    for i:= 0 to ndFastReport.Attributes.Count-1 do
    begin
      Att:= ndFastReport.Attributes[i];
      frxReport.Variables[Att.Name]:= Att.AsString;
    end;
    frxReport.Variables['ProductId']:= aProductId;
    frxReport.PrepareReport(true);
    for i:= 0 to frxReport.Variables.Count-1 do
      ndFastReport[frxReport.Variables.Items[i].Name]:= frxReport.Variables.Items[i].Value;

    frxReport.Export(frxExportXLS);
    frxReport.Export(frxPDFExport);
    frxExportXLS.ShowDialog:= true;
    frxPDFExport.ShowDialog:= True;
  end;
end;

procedure ReportReturnedOrderItems(aTransaction: TpFIBTransaction);
var
  Xml: TGvXml;
  ndProducts: TGvXmlNode;
  ProductId: Variant;
  ProductList: string;
begin
  xml:= TGvXml.Create('PRODUCTS');
  try
    ndProducts:= Xml.Root;
    ProductList:= aTransaction.DefaultDatabase.QueryValue(
      'select list(distinct o.product_id) '+
      'from OrderItems oi '+
      '  inner join flags2statuses f2s on (f2s.status_id = oi.status_id and f2s.flag_sign = ''RETURN'') '+
      '  inner join orders o on (o.order_id = oi.order_id)',
      0, aTransaction);
    while ProductList <> '' do
    begin
      ProductId:= TakeFront5(ProductList, ',');
      ReportOrderItemsByProduct(aTransaction, ndProducts, ProductId);
    end;
  finally
    xml.Free;
  end;
end;

procedure ExportReturns(aTransaction: TpFIBTransaction; frxReport: TFrxReport);
var
  Xml: TGvXml;
  ndProducts: TGvXmlNode;
  ProductId: Variant;
  ProductList: string;
begin
  xml:= TGvXml.Create('PRODUCTS');
  try
    ndProducts:= Xml.Root;
    ProductList:= aTransaction.DefaultDatabase.QueryValue(
      'select list(distinct o.product_id) '+
      'from v_orderitems_returning oi',
       0, aTransaction);
    while ProductList <> '' do
    begin
      ProductId:= TakeFront5(ProductList, ',');
      ExportProduct(aTransaction, ndProducts, ProductId);
    end;
  finally
    Xml.Free;
  end;
end;


end.
