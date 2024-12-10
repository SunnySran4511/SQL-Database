/*
project step05
Student Name: Farin Vaez
Student Id: 100367241

Instructions: write the SQL query for each question below it, uncommented.

Example: 
Ex.1. Select all alumni works for other companies.

----------------------------------------------------------------------------------------------------*/
SELECT COUNT(MemberId)
FROM Alum_worksfor_Company;

/*
Ex.2. display first name , last name and how many days each alumni works for company.
----------------------------------------------------------------------------------------------------*/
SELECT m.firstname,m.lastname,DATEDIFF(EndDate,StartDate) AS days
from Alum_worksfor_Company alumnc ,Members m
where m.MemberId=alumnc.MemberId;

/*
Ex.3. display howm many memebers joing each group
----------------------------------------------------------------------------------------------------*/
SELECT DISTINCT count(cg.MemberId),g.groupname
from Member_Join_Clubgroup cg, Clubgroup g
where g.groupID=cg.groupID
group by  cg.groupID;

/*
Ex.4. display howm much money each group get .
----------------------------------------------------------------------------------------------------*/
SELECT DISTINCT gproj.groupID,SUM(pfund.FundAmount)
FROM Groups_worksOn_Project gproj,Project p,Project_Fund_Member pfund
where  gproj.projectId=pfund.projectId
GROUP BY groupID ;

/*
Ex.5. For the table Project_Fund_Member, show the columns MemberId and MoneyPaidMember and a column showing
MoneyPaidMember REDUCE BY 20% administration fee
----------------------------------------------------------------------------------------------------*/
SELECT MemberId,MoneyPaidMember
FROM Project_Fund_Member;
UPDATE Project_Fund_Member
SET MoneyPaidMember=MoneyPaidMember*0.8;

/*
Ex.6. Display the Eventnumber, eventsubject,  for event 
    whose fee is below the average price of all event. 
----------------------------------------------------------------------------------------------------*/
SELECT Eventnumber,eventsubject
FROM groupEvent
WHERE fee<(SELECT AVG(fee) FROM groupEvent);

/*
Ex.7. Display first name and last name of the memebres who still has membership 
----------------------------------------------------------------------------------------------------*/
SELECT DISTINCT firstname,lastname
from Members
left join Member_Join_Clubgroup
on Member_Join_Clubgroup.MemberId=Members.MemberId
where Member_Join_Clubgroup.EndDate is null;

/*
Ex.8. Display only evenets which is happen in seconld half of the year
----------------------------------------------------------------------------------------------------*/
DELETE FROM Members WHERE membertype='s';

/*
Ex.9. number of evenets each group held in year 2021
----------------------------------------------------------------------------------------------------*/
select COUNT(gev.Eventnumber),gog.groupID,cg.groupname
FROM groupEvent gev, Group_Orgenize_groupEvent gog,Clubgroup cg
WHERE gev.Eventnumber=gog.Eventnumber and  cg.groupID= gog.groupID  and eventDate BETWEEN '2021-01-01' AND '2021-12-31'
group by gog.groupID; 

/*
Ex.10. display  groupid and group name of the group in which memberid=1 is a memeber of. 
----------------------------------------------------------------------------------------------------*/
select mjc.groupID,cg.groupname
from Member_Join_Clubgroup mjc ,Clubgroup cg
where mjc.groupID=cg.groupID and MemberId='1';
  


 11/*  selct members who are students */

select  firstname
from   Members
where  memberType= 'student'

12
/* select members who   works as enginner */

select  firstname
from   Members , Alum_worksfor_Company
where   position = 'engineer'
13
/* select member who leads culturalclub  8 */

14
select firstname
from Members As M  ,  Member_Lead_club As   C
where M.MemberId = C.MemberId AND  C.clubname = 'cultural'
15
/* select groups  in arts club  */

select groupname , groupdescription
from   clubgroup As C  , Club_has_Clubgroup As  d
where    d.name = 'arts' AND     c.groupId = d.groupId


/*16   select member who are in  persian group     */

select firstname 
from members As M  , Member_Join_Clubgroup As  C , clubgroup As g
where  g.groupname ='persian' AND  g.groupId =  C.groupId  AND   C.memberId  = M.memberID ;



/*  17  select member who are in persian group and student s */


select  firstname 
from members AS  M  , Member_Join_Clubgroup AS C  ,  clubgroup AS  g 
where    M.membertype ='student' AND  g.groupname ='persian' AND  g.groupId =  C.groupId  AND   C.memberId  = M.memberId


/*  18  select events happening for soccer practice  */

select   eventsubject , eventtime , eventdate ,buildingnumber  , roomnumber  , floor
from  groupevent 
where  eventsubject =  'soccer practice';

/* 19  select projects by  tennis  group  */
select   projectdescription
from  Groups_worksOn_Project AS GP  , Project AS P , clubgroup AS C
where  C.name  = 'tennis' AND C.groupId =GP.groupId AND  P.ProjectId  =   GP.ProjectId

/* 20     selct members  who  earned less than more than 10000 in fund */
select firstname
from Members AS M  , Project_Fund_Member AS PM 
where M.memberId = PM.memberId  AND    PM.moneyPaidMember > 10000