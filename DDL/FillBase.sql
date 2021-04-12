Insert into [Article] Values
(1, N'105', N'��������'),
(2, N'110.1', N'��������� � ���������� ������������'),
(3, N'131', N'�������������'),
(4, N'158', N'�����'),
(5, N'205', N'���������������� ���')
---------------------------
Insert into [Status] Values
(1, N'�������'),
(2, N'�������'),
(3, N'��������'),
(4, N'���� ���� ��������')
---------------------------
Insert into [Rank] Values
(1, N'������'),
(2, N'��������'),
(3, N'�������'),
(4, N'���������'),
(5, N'�������'),
(6, N'��� ������')
---------------------------
Insert into [Position] Values
(1, N'��������� ������'),
(2, N'�����������'),
(3, N'��������'),
(4, N'�������')
---------------------------
Insert into [Gender] Values
(1, N'Unknow'),
(2, N'Male'),
(3, N'Female')

---------------------------
Insert into [Person] Values
(1, 2, N'���������', N'��������', N'�������', '09.04.1974', N'�� �.������ ��.���������� 2'),
(2, 2,N'������', N'��������', N'�������������', '26.10.1959', N'�� �� ����������� �-� ���.�����-10'),
(3, 2,N'������', N'��������', N'���������', '16.10.1936', N'�� ����������� ��� ���� ��������'),
(4, 2,N'������', N'�����', null, '05.05.1975', N'�� �.������ ��.������������ 9'),
(5, 2,N'����', N'�������', N'�������������', '16.02.1989', N'�� �.������ ��.������������ 25'),
(6, 2,N'������', N'������', null, '23.04.1968', N'��� ���� ���-����, �������'),
(7, 2,N'�����', N'�����', N'���������', '25.01.1932', N'��� ���-����, �������'),
(8, 2,N'����', N'�������', N'�����������', '08.08.1942', N'���� ������-��������� ����, �������'),
(9, 2,N'����', N'�����', N'���������', '16.04.1926', N'���� �������� ����, �.�����'),
(10, 2,N'�������', N'��������', N'����������', '01.01.1953', N'���� �������� ����, �.������'),
(11, 2,N'��������', N'��������', '�������', '07.09.1947', N'�� �.������'),
(12, 3,N'������', N'����', null, '13.03.1982', N'�� �.������'),
(13, 1,N'����', N'�������', null, '26.08.1953', N'�� �.�����������'),
(14, 3,N'�����', N'��������', null, '15.12.1990', N'�� �.������')
---------------------------
Insert into [Employee] Values
(1, 5, 3, 2),
(2, 8, 4, 2),
(3, 9, 4, 2),
(4, 11, 2, 2),
(5, 12, 6, 4),
(6, 14, 6, 1)
---------------------------
Insert into [Convicted] Values
(1, 1, '31.12.9999'),
(2, 2, '31.12.9999'),
(3, 3, '31.12.9999'),
(4, 4, '20.04.2080'),
(5, 6, '31.12.9999'),
(6, 7, '14.07.2056'),
(7, 10, '02.05.2025')
---------------------------
Insert into [Suspected] Values
(1, 2),
(2, 3),
(3, 7)
---------------------------
Insert into [Case] Values
(1, 1, 2, N'�������� ��������� ������� ����� ������������.', '01.01.1982', '01.05.1983'),
(2, 1, 3, N'�������� ��������� ����� �������������', '01.09.1983', '01.02.1984'),
(3, 1, 2, N'����� ������� �� ���������� ���������� �������', '03.02.1984', '14.02.1994'),
(4, 4, 4, N'���������� ���������� �������� �� �������� �����.', '16.05.1984', '16.05.1992'),
(5, 5, 2, N'���������������� ��� � ����������� ������ ��������-����', '19.04.1995', '13.06.1997'),
(6, 1, 1, N'�������� ���������� ������� Ը������', '7.03.2002',null),
(7, 2, 2, N'��������� ��������� ����� ���������� �� ������������', '25.10.2012', '05.02.2013'),
(8, 3, 1, N'������������� ��������� ���� ��������', '20.09.2018', null),
(9, 3, 2, N'������������� ��������� ������ ��������', '28.08.1985', '14.02.1994')
---------------------------
Insert into [Record] Values
(1, 1, 3, 7, null, '02.01.1982'),
(2, 2, 4, null, 2, '02.09.1983'),
(3, 2, 2, null, 1, '04.02.1984'),
(4, 3, 2, 3, null, '04.02.1984'),
(5, 4, 4, null, 3, '17.05.1984'),
(6, 5, 4, 5, null, '20.04.1995'),
(7, 6, 2, 1, null, '08.03.2002'),
(8, 7, 1, 4, null, '26.10.2012'),
(9, 8, 1, null, null, '21.09.2018'),
(10, 9, 2, 3, null, '04.02.1984')