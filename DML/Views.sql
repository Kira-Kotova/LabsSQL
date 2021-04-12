--Create view RecordList as
--select  R.ID_Case as '����� ����',
--		concat(P1.LastName,' ', isnull(P1.FirstName,'�����������'), ' ', isnull(P1.MiddleName, '')) as '��� �����������',
--		concat(P2.LastName,' ', isnull(P2.FirstName,'�����������'), ' ', isnull(P2.MiddleName, '')) as '��� ����������',
--		concat(P3.LastName,' ', isnull(P3.FirstName,'�����������'), ' ', isnull(P3.MiddleName, '')) as '��� ��������������',
--		R.CreationDate as '���� �������� ������'
--from [Record] R
--	left join [Employee] E on R.ID_Employee = E.ID
--	left join [Person] P1 on E.ID_Person = P1.ID
--	left join [Convicted] C on R.ID_Convicted = C.ID
--	left join [Person] P2 on C.ID_Person = P2.ID
--	left join [Suspected] S on R.ID_Suspected = S.ID
--	left join [Person] P3 on S.ID_Person = P3.ID
-----------------------------------------
--Create view ConvCaseList as
--Select concat(P.LastName,' ', P.FirstName, ' ', isnull(P.MiddleName, '')) as '��� ����������',
--		Record.ID_Case as '����� ����'
--From [Record], [Person] as P
--Inner join [Convicted] as C
--on P.ID = C.ID_Person
--Where Record.ID_Convicted = C.ID
------------------------------------------
--Create view EmpCaseList as
--Select concat(P.LastName,' ', P.FirstName, ' ', isnull(P.MiddleName, '')) as '��� �����������',
--		Record.ID_Case as '����� ����'
--From [Record], [Person] as P
--Inner join [Employee] as E
--on P.ID = E.ID_Person
--Where Record.ID_Employee = E.ID and E.ID_Position = 2
------------------------------------------
--Create view CaseList as
--Select  C.ID as '����� ����',
--		A.ArticleNumber as '����� ������',
--		A.ArticleName as '���������� ������',
--		S.[Status] as '������ ����',
--		C.Content as '����������',
--		C.StartProcessDate as '���� �������� ����',
--		C.EndProcessDate as '���� �������� ����'
--From [Case] as C
--	left join [Article] A on C.ID_Article = A.ID
--left join [Status] S on C.ID_Status = S.ID
-------------------------------------------
Create view ConvList as
Select  concat(P.LastName,' ', P.FirstName, ' ', isnull(P.MiddleName, '')) as '��� ����������',
		(Case when DATEDIFF(YEAR,SYSDATETIME(),C.Term) > 200 then N'�����������'
		else concat(DATEDIFF(YEAR,SYSDATETIME(),C.Term), ' ���')end) as '���� ����������'
From Person as P
 join Convicted as C on P.ID = C.ID_Person
