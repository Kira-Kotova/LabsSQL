--Create view RecordList as
--select  R.ID_Case as 'Номер Дела',
--		concat(P1.LastName,' ', isnull(P1.FirstName,'Отсутствует'), ' ', isnull(P1.MiddleName, '')) as 'ФИО следователя',
--		concat(P2.LastName,' ', isnull(P2.FirstName,'Отсутствует'), ' ', isnull(P2.MiddleName, '')) as 'ФИО осуждённого',
--		concat(P3.LastName,' ', isnull(P3.FirstName,'Отсутствует'), ' ', isnull(P3.MiddleName, '')) as 'ФИО подозреваемого',
--		R.CreationDate as 'Дата создания записи'
--from [Record] R
--	left join [Employee] E on R.ID_Employee = E.ID
--	left join [Person] P1 on E.ID_Person = P1.ID
--	left join [Convicted] C on R.ID_Convicted = C.ID
--	left join [Person] P2 on C.ID_Person = P2.ID
--	left join [Suspected] S on R.ID_Suspected = S.ID
--	left join [Person] P3 on S.ID_Person = P3.ID
-----------------------------------------
--Create view ConvCaseList as
--Select concat(P.LastName,' ', P.FirstName, ' ', isnull(P.MiddleName, '')) as 'ФИО Осуждённого',
--		Record.ID_Case as 'Номер Дела'
--From [Record], [Person] as P
--Inner join [Convicted] as C
--on P.ID = C.ID_Person
--Where Record.ID_Convicted = C.ID
------------------------------------------
--Create view EmpCaseList as
--Select concat(P.LastName,' ', P.FirstName, ' ', isnull(P.MiddleName, '')) as 'ФИО Следователя',
--		Record.ID_Case as 'Номер Дела'
--From [Record], [Person] as P
--Inner join [Employee] as E
--on P.ID = E.ID_Person
--Where Record.ID_Employee = E.ID and E.ID_Position = 2
------------------------------------------
--Create view CaseList as
--Select  C.ID as 'Номер дела',
--		A.ArticleNumber as 'Номер статьи',
--		A.ArticleName as 'Содержание статьи',
--		S.[Status] as 'Статус дела',
--		C.Content as 'Содержание',
--		C.StartProcessDate as 'Дата создания дела',
--		C.EndProcessDate as 'Дата закрытия дела'
--From [Case] as C
--	left join [Article] A on C.ID_Article = A.ID
--left join [Status] S on C.ID_Status = S.ID
-------------------------------------------
Create view ConvList as
Select  concat(P.LastName,' ', P.FirstName, ' ', isnull(P.MiddleName, '')) as 'ФИО Осуждённого',
		(Case when DATEDIFF(YEAR,SYSDATETIME(),C.Term) > 200 then N'пожизненное'
		else concat(DATEDIFF(YEAR,SYSDATETIME(),C.Term), ' лет')end) as 'Срок заключения'
From Person as P
 join Convicted as C on P.ID = C.ID_Person
