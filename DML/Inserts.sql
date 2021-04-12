
--Create Procedure InsertRecord (@CaseId Int, @employeeId Int, @convictedId Int null, @suspectedId Int null, @creationDate DateTime)
--As
--Declare @ID Int
--Select @ID = Max(r.ID)
--From Record r
--If @ID is null Set @ID = 1
--Else Set @ID = @ID + 1

--Begin 
--	Insert into Record(ID, ID_Case, ID_Employee, ID_Convicted, ID_Suspected, CreationDate)
--	values (@ID, @CaseId, @employeeId, @convictedId, @suspectedId, @creationDate)
--End

---------------------
--Create Procedure InsertCase (@articleId Int, @statusId Int, @content NVarChar(60), @startProcessDate DateTime, @endProcessDate DateTime null)
--As
--Declare @ID Int
--Select @ID = Max(c.ID)
--From [Case] c
--If @ID is null Set @ID = 1
--Else Set @ID = @ID + 1

--Begin 
--	Insert into [Case] (ID, ID_Article, ID_Status, Content, StartProcessDate, EndProcessDate) 
--	values (@ID, @articleId, @statusId, @content, @startProcessDate, @endProcessDate )
--End
------------------------
--Create Procedure InsertEmployee (@personId Int, @rank NVarChar(20), @position NVarChar(20))
--As
--Declare @ID Int
--Select @ID = Max(e1.ID)
--From Employee e1
--If @ID is null Set @ID = 1
--Else Set @ID = @ID + 1

--Declare @RankID Int
--Select @RankID = r.ID
--From [Rank] r
--Where r.[Rank] Like @rank

--Declare @PositionID Int
--Select @PositionID = p.ID 
--From Position p
--Where p.Position Like @position

--Begin
--	Insert into Employee(ID, ID_Person, ID_Position, ID_Rank) values (@ID, @personId, @PositionID, @RankID)
--End
--------------------------
--Create Procedure InsertConvicted(@personId Int, @term DateTime)
--As
--Declare @ID Int
--Select @ID = Max(c1.ID)
--From Convicted c1
--If @ID is null Set @ID = 1
--Else Set @ID = @ID + 1
--Begin
--	Insert into Convicted(ID, ID_Person,Term) values (@ID,@personId,@term)
--End
--------------------------
--Create Procedure InsertPerson(@gen NVarChar(20), @fn NVarChar(30), @ln NVarChar(30), @mn NVarChar(30), @b DateTime, @c NVarChar(50))
--As
--Declare @ID Int
--Select @ID = Max(p1.ID)
--From Person p1
--If @ID is null Set @ID = 1
--Else Set @ID = @ID + 1

--Declare @Gender Int
--Select @Gender = g.ID
--From Gender g
--Where g.Gender Like @gen

--Begin
--	Insert into Person (ID,Gender,FirstName,LastName,MiddleName,Birthday,Contact) values (@ID,@Gender,@fn,@ln,@mn,@b,@c)
--End
--------------------------
