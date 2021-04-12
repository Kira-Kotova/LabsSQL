Exec InsertRecord 10, 7, 8, null, '12.04.2021'

Exec InsertCase 3, 2, N'Похищение с изнасилованием.', '04.05.2004', '30.09.2005'

Exec InsertEmployee 16, N'Без звания', N'Следователь'

Exec InsertConvicted 15,'30.08.2022'

Exec InsertPerson N'male', N'Виктор', N'Мохов', N'Васильевич', '22.06.1950', N'РФ г.Скопин'

------

Exec GetPerson_In_ConvCaseList 'Пичушкин'

Exec GetRecord_by_Name 'Леоне'

Exec GetRecord_by_ID 6