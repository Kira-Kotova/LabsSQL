Exec InsertRecord 10, 7, 8, null, '12.04.2021'

Exec InsertCase 3, 2, N'��������� � ��������������.', '04.05.2004', '30.09.2005'

Exec InsertEmployee 16, N'��� ������', N'�����������'

Exec InsertConvicted 15,'30.08.2022'

Exec InsertPerson N'male', N'������', N'�����', N'����������', '22.06.1950', N'�� �.������'

------

Exec GetPerson_In_ConvCaseList '��������'

Exec GetRecord_by_Name '�����'

Exec GetRecord_by_ID 6