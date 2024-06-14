-- Query 1
 Select * from teamsfranchises 
 Order By franchName ASC;

-- Query 3 
Select Distinct playerID,  startingPos from allstarfull 
where startingPos IS Null;

--Query 5
 Select top 10 yearId, teamID, playerID from salaries 
 where yearID < 1990;

--Query 7
Select nameFirst + ', ' + nameLast + ', ' + birthCity As playersThatLiveInTheCity from players 
where birthCity LIKE 'San%';

-- Query 9
Select schoolID, schoolName, schoolState from schools 
where Not schoolState IN ('NY' , 'LA' , 'CA' , 'MN');

-- Query 11
Select playerID, awardID As AwardNames, yearID AS AwardYear,  tie from awardsplayers 
where Not Tie IS Null AND yearID Between 1990 AND 2000;

--Query 13
 Select playerID,deathMonth,birthMonth,deathDay,birthDay from players 
 where deathMonth = birthMonth AND  deathDay = birthday;

--Query 15
Select hofID, yearID, "closeOrNot" = 
Case 
When votes = needed or votes > needed  then 'Won'
When votes - needed < ballots % 5 then 'Nail Biter' 
Else 'LandSlide'
End  
from halloffame ;