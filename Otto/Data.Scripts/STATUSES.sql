INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (1, '�����', 'PLACE', 1, 'NEW', NULL, ',ACTIVE,DELETEABLE,NEW,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (2, '��������', 'PLACE', NULL, 'ACTIVE', NULL, ',ACTIVE,APPROVED,DELETEABLE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (3, '��������', 'PLACE', NULL, 'ARCHIVE', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (4, '������', 'PLACE', NULL, 'DELETED', NULL, ',DELETED,PASSIVE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (6, '���������', 'PLACE', NULL, 'CONSTANT', NULL, ',ACTIVE,APPROVED,PERMANENT,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (11, '��������', 'CATALOG', 1, 'ACTIVE', NULL, ',ACTIVE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (12, '�������������', 'CATALOG', NULL, 'PAUSE', NULL, ',PASSIVE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (13, '������', 'CATALOG', NULL, 'DELETED', NULL, ',DELETED,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (21, '������', 'MAGAZINE', 1, 'HANDMADE', 'MAGAZINE_STORE', ',ACTIVE,EDITABLE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (23, '���������', 'MAGAZINE', NULL, 'EXPIRED', NULL, ',PASSIVE,READONLY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (22, '��������', 'MAGAZINE', NULL, 'LOADED', NULL, ',ACTIVE,APPROVED,READONLY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (24, '������', 'MAGAZINE', NULL, 'DELETED', NULL, ',DELETED,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (32, '��������', 'ARTICLECODE', NULL, 'LOADED', NULL, ',APPROVED,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (34, '����������', 'ARTICLECODE', NULL, 'APPROVED', NULL, ',FINISHED,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (41, '�����', 'CLIENT', 1, 'DRAFT', 'CLIENT_CREATE', ',NEW,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (42, '��������', 'CLIENT', NULL, 'APPROVED', NULL, ',ACTIVE,BALANCE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (49, '������', 'CLIENT', NULL, 'DELETED', NULL, ',DELETED,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (31, '�����', 'ARTICLECODE', 1, 'HANDMADE', NULL, ',NEW,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (51, '�����', 'MESSAGE', 1, 'NEW', NULL, ',NEW,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (43, '� ������ ������', 'CLIENT', NULL, 'BLACKLIST', NULL, ',ACTIVE,CREDIT,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (53, '���������', 'MESSAGE', NULL, 'SUCCESS', NULL, ',SUCCESS,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (54, '������', 'MESSAGE', NULL, 'ERROR', NULL, ',ERROR,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (201, '�����', 'ORDER', 1, 'NEW', 'ORDER_CREATE', ',APPENDABLE,CANCELABLE,DELETEABLE,EDITABLE,NEW,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (203, '���������', 'ORDER', NULL, 'APPROVED', NULL, ',APPENDABLE,APPROVED,CANCELABLE,EDITABLE,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (171, '�����', 'ORDERITEM', 1, 'NEW', 'ORDERITEM_CREATE', ',CREDIT,DELETEABLE,DRAFT,EDITABLE,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (81, '�����', 'ADRESS', 1, 'NEW', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (82, '��������', 'ADRESS', NULL, 'APPROVED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (89, '������', 'ADRESS', NULL, 'DELETED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (180, '�������', 'ORDERITEM', NULL, 'ACCEPTED', NULL, ',APPROVED,CANCELABLE,CREDIT,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (91, '�����������', 'ARTICLESIGN', 1, NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (101, '�����', 'ARTICLE', 1, 'HANDMADE', NULL, ',NEW,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (111, '�����', 'TAXPLAN', 1, 'NEW', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (102, '� �������', 'ARTICLE', NULL, 'AVAILABLE', NULL, ',AVAILABLE,CREDIT,DELETEABLE,DRAFT,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (115, '�����������', 'TAXPLAN', NULL, 'ACTIVE', NULL, ',ACTIVE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (119, '��������', 'TAXPLAN', NULL, 'ARCHIVE', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (121, '�����', 'TAXSERV', 1, 'NEW', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (122, '�����������', 'TAXSERV', NULL, 'ACTIVE', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (131, '�����', 'TAXRATE', 1, 'NEW', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (132, '�����������', 'TAXRATE', NULL, 'ACTIVE', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (141, '�����', 'VENDOR', 1, 'NEW', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (142, '�����������', 'VENDOR', NULL, 'ACTIVE', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (143, '����������������', 'VENDOR', NULL, 'PAUSED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (151, '�����', 'PRODUCT', 1, 'NEW', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (155, '�����������', 'PRODUCT', NULL, 'ACTIVE', NULL, ',ACTIVE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (159, '����������������', 'PRODUCT', NULL, 'PAUSED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (71, '�����', 'EVENT', 1, 'NEW', 'EVENT_CREATE', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (105, '�������� 3 ������', 'ARTICLE', NULL, 'DELAY3WEEK', NULL, ',APPROVED,AVAILABLE,CREDIT,DELAY,DELETEABLE,DRAFT,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (175, '����������', 'ORDERITEM', NULL, 'ACCEPTREQUEST', NULL, ',CANCELABLE,CREDIT,SENT,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (161, '�����', 'ORDERTAX', 1, 'NEW', 'ORDERTAX_CREATE', ',CREDIT,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (169, '������', 'ORDERTAX', NULL, 'DELETED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (204, '����������', 'ORDER', NULL, 'ACCEPTREQUEST', NULL, ',APPENDABLE,CANCELABLE,SENT,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (188, '������ � ����', 'ORDERITEM', NULL, 'WRONGPRICE', NULL, ',DELETEABLE,DRAFT,ERROR,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (107, '�������� 5 ������', 'ARTICLE', NULL, 'DELAY5WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (174, '���������', 'ORDERITEM', NULL, 'APPROVED', NULL, ',APPROVED,CANCELABLE,CREDIT,DELETEABLE,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (202, '��������', 'ORDER', NULL, 'DRAFT', NULL, ',APPENDABLE,CANCELABLE,DELETEABLE,DRAFT,EDITABLE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (178, '�����', 'ORDERITEM', NULL, 'REJECTED', NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (103, '����������', 'ARTICLE', NULL, 'UNAVAILABLE', NULL, ',DELETEABLE,DRAFT,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (179, '������', 'ORDERITEM', NULL, 'WRONG', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (181, '����������� �������', 'ORDERITEM', NULL, 'ANULLED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (182, '������ �� ��������', 'ORDERITEM', NULL, 'CANCELREQUEST', NULL, ',CREDIT,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (183, '����������� ��������', 'ORDERITEM', NULL, 'CANCELLED', NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (184, '������������', 'ORDERITEM', NULL, 'BUNDLING', NULL, ',CANCELABLE,CREDIT,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (185, '� ��������', 'ORDERITEM', NULL, 'PACKED', NULL, ',CREDIT,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (186, '���������� � �������', 'ORDERITEM', NULL, 'DELIVERING', NULL, ',CREDIT,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (187, '�������', 'ORDERITEM', NULL, 'RETURNING', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (205, '������', 'ORDER', NULL, 'ACCEPTED', NULL, ',APPENDABLE,CANCELABLE,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (206, '����������', 'ORDER', NULL, 'OUTSTANDED', NULL, ',BALANCEABLE,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (207, '��������', 'ORDER', NULL, 'PAID', NULL, ',CANCELABLE,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (208, '������ �� ��������', 'ORDER', NULL, 'CANCELREQUEST', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (209, '�����������', 'ORDER', NULL, 'CANCELLED', NULL, ',BALANCEABLE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (210, '� ��������', 'ORDER', NULL, 'PACKED', NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (211, '���������� � �������', 'ORDER', NULL, 'DELIVERING', NULL, ',BALANCEABLE,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (218, '���������', 'ORDER', NULL, 'DELIVERED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (219, '������', 'ORDER', NULL, 'DELETED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (172, '������', 'ORDERITEM', NULL, 'ERROR', NULL, ',DELETEABLE,DRAFT,ERROR,', 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (108, '�������� 6 ������', 'ARTICLE', NULL, 'DELAY6WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (109, '�������� 7 ������', 'ARTICLE', NULL, 'DELAY7WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (110, '�������� 8 ������', 'ARTICLE', NULL, 'DELAY8WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (106, '�������� 4 ������', 'ARTICLE', NULL, 'DELAY4WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (104, '��������', 'ARTICLE', NULL, 'DELAY', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (154, '��-���������', 'PRODUCT', NULL, 'DEFAULT', NULL, ',ACTIVE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (173, '����������', 'ORDERITEM', NULL, 'SOLD', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (162, '��������', 'ORDERTAX', NULL, 'APPROVED', NULL, ',CREDIT,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (163, '����������', 'ORDERTAX', NULL, 'CANCELLED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (241, '�����', 'PAYMENT', 1, 'NEW', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (242, '��������', 'PAYMENT', NULL, 'ASSIGNED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (61, '�����������', 'ACCOUNT', 1, 'ACTIVE', 'ACCOUNT_CREATE', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (35, '������', 'ARTICLECODE', NULL, 'ERROR', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (252, '� �������', 'ORDERITEM', NULL, 'AVAILABLE', NULL, ',AVAILABLE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (254, '��������', 'ORDERITEM', NULL, 'DELAY', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (253, '����������', 'ORDERITEM', NULL, 'UNAVAILABLE', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (255, '�������� 3 ������', 'ORDERITEM', NULL, 'DELAY3WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (257, '�������� 5 ������', 'ORDERITEM', NULL, 'DELAY5WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (258, '�������� 6 ������', 'ORDERITEM', NULL, 'DELAY6WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (259, '�������� 7 ������', 'ORDERITEM', NULL, 'DELAY7WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (260, '�������� 8 ������', 'ORDERITEM', NULL, 'DELAY8WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (256, '�������� 4 ������', 'ORDERITEM', NULL, 'DELAY4WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (114, '��-���������', 'TAXPLAN', NULL, 'DEFAULT', NULL, ',ACTIVE,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (261, '������ �� ������ ���������', 'ORDERITEM', NULL, 'CANCELREQUESTSENT', NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (262, 'SMS ����������', 'ORDERITEM', NULL, 'SMSREJECTSENT', 'ORDERITEM_SMSREJECTSEND', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (263, '������ �������� ���������', 'ORDERITEM', NULL, 'ACCEPTREQUESRSENT', NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (264, '�������� 2 ������', 'ORDERITEM', NULL, 'DELAY2WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (265, '�������� 9 ������', 'ORDERITEM', NULL, 'DELAY9WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (240, '��������', 'ORDERMONEY', 1, 'PREPAY', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (270, '������ ����������', 'ORDER', NULL, 'PAYSENT', NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (212, '����������� �������', 'ORDER', NULL, 'ANULLED', NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (215, '������ ��������� ��������', 'ORDER', NULL, 'RETURNED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (216, '��������', 'ORDER', NULL, 'CLOSED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (217, '������� �� ������', 'ORDER', NULL, 'HAVERETURN', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (189, '����������', 'ORDERITEM', NULL, 'PREPACKED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (213, '����������', 'ORDER', NULL, 'PREPACKED', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (266, '�������� 10 ������', 'ORDERITEM', NULL, 'DELAY10WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (267, '�������� 11 ������', 'ORDERITEM', NULL, 'DELAY11WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (268, '�������� 12 ������', 'ORDERITEM', NULL, 'DELAY12WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (269, '�������� 13 ������', 'ORDERITEM', NULL, 'DELAY13WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (271, '�������� 14 ������', 'ORDERITEM', NULL, 'DELAY14WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (272, '�������� 15 ������', 'ORDERITEM', NULL, 'DELAY15WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (273, '�������� 16 ������', 'ORDERITEM', NULL, 'DELAY16WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (274, '�������� 17 ������', 'ORDERITEM', NULL, 'DELAY17WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (275, '�������� 18 ������', 'ORDERITEM', NULL, 'DELAY18WEEK', NULL, ',AVAILABLE,DELAY,', NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE) VALUES (276, '�������� 19 ������', 'ORDERITEM', NULL, 'DELAY19WEEK', NULL, ',AVAILABLE,DELAY,', NULL);

COMMIT WORK;

