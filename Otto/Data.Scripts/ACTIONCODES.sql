INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('CLIENT_CREATE', '������� �������', 'CLIENT', 'CLIENT_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERTAX_STORE', '��������� �������� ��  ������', 'ORDERTAX', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_CREATE', '������� ��������� ������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ACCOUNT_CREDIT_EUR', '������������ ������������� EUR', 'ACCOUNT', 'ACCOUNT_CREDIT');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ACCOUNT_DEBIT', '����������� ������', 'ACCOUNT', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_CREATE', '������� ������� ������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ADRESS_CREATE', '������� �����', 'ADRESS', 'ADRESS_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('MESSAGE_CREATE', '���������������� ���������', 'MESSAGE', 'MESSAGE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('MESSAGE_STATUS', '���������� ������ ���������', 'MESSAGE', 'MESSAGE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('MESSAGE_BUSY', '������ ���������', 'MESSAGE', 'MESSAGE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('MESSAGE_SUCCESS', '��������� ����������', 'MESSAGE', 'MESSAGE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('MESSAGE_ERROR', '������ ��� ����������', 'MESSAGE', 'MESSAGE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_DISAPPROVE', '��������� ��������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_STATUS', '���������� ������ �������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('PLACE_STATUS', '���������� ������', 'PLACE', 'PLACE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_ACCEPT', '����� �� ������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('CLIENT_STORE', '��������� �������', 'CLIENT', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('MESSAGE_STORE', '��������� ���������', 'MESSAGE', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_STORE', '��������� ������� ������', 'ORDERITEM', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('PLACE_STORE', '��������� ����� ����������', 'PLACE', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ADRESS_STORE', '��������� �����', 'ADRESS', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_STORE', '��������� ������', 'ORDER', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_STATUS', '���������� ������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('MAGAZINE_STORE', '��������� ������ ��������', 'MAGAZINE', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('MAGAZINE_LOADED', '������ ��������', 'MAGAZINE', 'MAGAZINE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_APPROVE', '�������� ������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERTAX_CREATE', '��������� �����', 'ORDERTAX', 'ORDERTAX_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_PAID', '������ ��������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('CLIENT_APPROVE', '����������� �������', 'CLIENT', 'CLIENT_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERTAX_APPROVE', '�������� ������������ ����', 'ORDERTAX', 'ORDERTAX_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_APPROVE', '�������� �������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_FOREACH_ORDERITEM', '�������� �� ��������� ������', 'ORDER', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_FOREACH_ORDERTAX', '�������� �� ������', 'ORDER', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ACCOUNT_STORE', '��������� ����', 'ACCOUNT', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_ACCEPTREQUEST', '������ �� ��������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_ACCEPTREQUEST', '������ �� ��������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_DRAFT', '�������� ����������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERTAX_DRAFT', '�������� ����������', 'ORDERTAX', 'ORDERTAX_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('EVENT_STORE', '��������� �������', 'EVENT', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('EVENT_CREATE', '������� �������', 'EVENT', 'EVENT_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ACCOUNT_CREATE', '������� ����', 'ACCOUNT', 'ACCOUNT_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_FOREACH_TAXRATE', '��������  �� �������� ������', 'ORDER', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_ACCEPT', '������ ������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_BUNDLING', '�������������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_PACKED', '���������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('INVOICE_CREATE', '������� ���������', 'INVOICE', 'INVOICE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('INVOICE_PAID', '���������� ���������', 'INVOICE', 'INVOICE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('INVOICE_PRINT', '�������� ���������', 'INVOICE', 'INVOICE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_INVOICE', '������� ��������� �� ������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('PAYMENT_ASSIGN', '�������� ������', 'PAYMENT', 'PAYMENT_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('PAYMENT_CREATE', '������� ������', 'PAYMENT', 'PAYMENT_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('PAYMENT_STORE', '��������� ������', 'PAYMENT', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_REQUESTSEND', '��������� ���� � ��������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_SMSREJECTSEND', '���������� ��������� �������� SMS �� ������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_CANCELREQUEST', '������ �� ��������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('INVOICE_PAYSENT', '������� ���������', 'INVOICE', 'INVOICE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_REJECT', '����� �� �������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_CANCEL', '�������� �������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_DELIVERING', '���������� � �������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_PACKED', '���������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_DELIVERING', '���������� ������ ���������� � �������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_PAY', '������ ������� ������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERMONEY_STORE', '��������� ������ �� ������', 'ORDERMONEY', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ACCOUNT_CREDITORDER', '�������� ������� �� ������', 'ACCOUNT', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ACCOUNT_DEBITORDER', '������� ������� � ������', 'ACCOUNT', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ACCOUNT_MANUALCREDIT', '������ �������� �� ����� ', 'ACCOUNT', 'ACCOUNT_CREDIT');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ACCOUNT_MANUALDEBIT', '������ ���������� �� ����', 'ACCOUNT', 'ACCOUNT_DEBIT');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ACCOUNT_PAYMENTIN', '�������� ������', 'ACCOUNT', NULL);
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('PLACE_CREATE', '��������������� ���������� �����', 'PLACE', 'PLACE_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_ANULLED', '����������� �������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERTAX_CANCELLED', '��������', 'ORDERTAX', 'ORDERTAX_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_ANULLED', '���������� �������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_CANCELLED', '���������� ��������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_RETURN', '������� �������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERTAX_RETURN', '�������� �� �������', 'ORDERTAX', 'ORDERTAX_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_HAVERETURN', '������� �� ������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_DRAFT', '��������� �������� ������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_DELIVERED', '������� ����������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_DISCARD', '���� ��������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_DISCARD', '���� � ������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_DELIVERED', '������ ����������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDERITEM_PREPACK', '��������������� �������', 'ORDERITEM', 'ORDERITEM_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ORDER_PREPACKED', '� ��������', 'ORDER', 'ORDER_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('MONEYBACK_CREATE', '������� ������� �����', 'MONEYBACK', 'MONEYBACK_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('MONEYBACK_APPROVE', '����������� ������� �����', 'MONEYBACK', 'MONEYBACK_STORE');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ACCOUNT_CREDIT_BYR', '������������ ������������� BYR', 'ACCOUNT', 'ACCOUNT_CREDIT');
INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME) VALUES ('ACCOUNT_CREDIT', '������������ �������������', 'ACCOUNT', 'ACCOUNT_CREDIT');

COMMIT WORK;

