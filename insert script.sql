INSERT INTO Club(clubname , clubdescription)
VALUES ('cultural','it is the place where studends can showcase what they have got.');
INSERT INTO Club(clubname , clubdescription)
VALUES ('Art','it is a place where students can practice the arts.');
INSERT INTO Club(clubname , clubdescription)
VALUES ('Sport','it is place that aims is offer to the students');

INSERT INTO Members( firstname, lastname, email, Phone,membertype)
VALUES ('Steve','Mckay','smckay@uni.ca','1235167987','student');
INSERT INTO Members( firstname, lastname, email, Phone,membertype)
VALUES ('jonaathan','Brown','jbrown@uni.ca','1235149998','student');
INSERT INTO Members( firstname, lastname, email, Phone,membertype)
VALUES ('casamiro','Howard','choward@uni.ca','1235668749','student');
INSERT INTO Members( firstname, lastname, email, Phone,membertype)
VALUES ('kaja','juric','Kjuric@uni.ca','1239687546','student');
INSERT INTO Members( firstname, lastname, email, Phone,membertype)
VALUES ('Royce','Hambleton','rhambleton@uni.ca','1234958654','student');
INSERT INTO Members( firstname, lastname, email, Phone,membertype)
VALUES ('arya','Struna','astruna@uni.ca','1235445633','Alum');
INSERT INTO Members( firstname, lastname, email, Phone,membertype)
VALUES ('Ajit','Tiw','atiw@uni.ca','1230222232','Alum');
INSERT INTO Members( firstname, lastname, email, Phone,membertype)
VALUES ('Declan','Ryer','dryer@uni.ca','1235468878','Alum');
INSERT INTO Members( firstname, lastname, email, Phone,membertype)
VALUES ('Morgan','Alizondo','malizondo@uni.ca','1230220058','Alum');
INSERT INTO Members( firstname, lastname, email, Phone,membertype)
VALUES ('Hannah','Annani','hannnani@uni.ca','1235558709','Alum');



INSERT INTO Clubgroup( groupname, groupdescription)
VALUES ('persian','introducing Iranian culture and food');
INSERT INTO Clubgroup( groupname, groupdescription)
VALUES ('indian','introducing Indian culture and food');
INSERT INTO Clubgroup( groupname, groupdescription)
VALUES ('indegenous','introducing indegenous culture and food');
INSERT INTO Clubgroup( groupname, groupdescription)
VALUES ('music','engage musically talented students in club activity');
INSERT INTO Clubgroup( groupname, groupdescription)
VALUES ('Dance','learn dance style from diffrent cultural backgrounds');
INSERT INTO Clubgroup( groupname, groupdescription)
VALUES ('Film','to learn from professional films and improve their own skills.');
INSERT INTO Clubgroup( groupname, groupdescription)
VALUES ('Soccer','develope individual and team soccer excellence in order to compete at the highest level');
INSERT INTO Clubgroup( groupname, groupdescription)
VALUES ('Tennis','develope individual and team tennis excellence in order to compete at the highest level');



INSERT INTO groupEvent( eventDate, eventTime, builindgnumber,  floorNumber, roomnumber, fee, eventsubject)
VALUES ('2021-09-15' ,	'8AM',	'1', '0',	'Gym', 	'10',	'soccer practice');
INSERT INTO groupEvent( eventDate, eventTime, builindgnumber,  floorNumber, roomnumber, fee, eventsubject)
VALUES ('2021-10-10' ,	'8AM',	'1', '0',	'Gym', 	'10',	'soccer practice');
INSERT INTO groupEvent( eventDate, eventTime, builindgnumber,  floorNumber, roomnumber, fee, eventsubject)
VALUES ('2022-01-18' ,	'5PM',	'22', '5',	'A', 	'15',	'Piano concert');
INSERT INTO groupEvent( eventDate, eventTime, builindgnumber,  floorNumber, roomnumber, fee, eventsubject)
VALUES ('2021-03-21' ,	'2PM',	'12', '2',	'A', 	'26',	'Persian new year');
INSERT INTO groupEvent( eventDate, eventTime, builindgnumber,  floorNumber, roomnumber, fee, eventsubject)
VALUES ('2021-11-15' ,	'12PM',	'5', '1',	'B', 	'12',	'dance performance');


INSERT INTO Project(projectdescription)
VALUES ('renovating uni tennis court');
INSERT INTO Project(projectdescription)
VALUES ('building dance studio');
INSERT INTO Project(projectdescription)
VALUES ('creating partnership with professional dance groups');



INSERT INTO Alum_worksfor_Company (MemberId,EndDate, StartDate, Positions)
VALUES ('6','','2019-02-27','engineer');
INSERT INTO Alum_worksfor_Company (MemberId,EndDate, StartDate, Positions)
VALUES ('7','2021-09-27','2020-11-15','technician');
INSERT INTO Alum_worksfor_Company (MemberId,EndDate, StartDate, Positions)
VALUES ('8','','2016-12-01','accountant');
INSERT INTO Alum_worksfor_Company (MemberId,EndDate, StartDate, Positions)
VALUES ('9','2022-02-16','2021-05-01','developer');
INSERT INTO Alum_worksfor_Company (MemberId,EndDate, StartDate, Positions)
VALUES ('10','2020-09-01','2017-06-15','operator');


INSERT INTO Member_Lead_club (MemberId,clubname)
VALUES ('1','Cultural');
INSERT INTO Member_Lead_club (MemberId,clubname)
VALUES ('2','Music');
INSERT INTO Member_Lead_club (MemberId,clubname)
VALUES ('3','Soccer');

INSERT INTO Member_Head_Clubgroup (MemberId, groupID)
VALUES ('1','1');
INSERT INTO Member_Head_Clubgroup (MemberId, groupID)
VALUES ('5','2');
INSERT INTO Member_Head_Clubgroup (MemberId, groupID)
VALUES ('6','3');
INSERT INTO Member_Head_Clubgroup (MemberId, groupID)
VALUES ('7','4');
INSERT INTO Member_Head_Clubgroup (MemberId, groupID)
VALUES ('8','5');
INSERT INTO Member_Head_Clubgroup (MemberId, groupID)
VALUES ('2','6');
INSERT INTO Member_Head_Clubgroup (MemberId, groupID)
VALUES ('4','7');
INSERT INTO Member_Head_Clubgroup (MemberId, groupID)
VALUES ('3','8');



INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('1','1','2020-12-01','');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('1','4','2020-12-02','2021-06-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('1','7','2020-12-03','2022-01-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('2','3','2020-12-04','');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('2','6','2020-12-05','2021-06-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('3','2','2020-12-06','2022-01-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('3','5','2020-12-07','2022-01-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('3','7','2020-12-08','');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('3','8','2020-12-09','2021-06-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('4','1','2020-12-10','2022-01-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('4','7','2020-12-11','2022-01-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('5','2','2020-12-12','');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('6','1','2020-12-13','2021-06-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('6','3','2020-12-14','2022-01-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('6','4','2020-12-15','2022-01-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('6','8','2020-12-16','');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('7','2','2020-12-17','2021-06-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('7','4','2020-12-18','2022-01-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('8','3','2020-12-19','2022-01-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('8','5','2020-12-20','');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('8','7','2020-12-21','2021-06-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('9','4','2020-12-22','2022-01-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('9','8','2020-12-23','2022-01-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('10','1','2020-12-24','');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('10','3','2020-12-25','2021-06-01');
INSERT INTO Member_Join_Clubgroup (MemberId, groupID,StartDate,EndDate)
VALUES ('10','6','2020-12-26','2022-01-01');

INSERT INTO Club_has_Clubgroup (clubname, groupID)
VALUES ('Cultural','1');
INSERT INTO Club_has_Clubgroup (clubname, groupID)
VALUES ('Cultural','2');
INSERT INTO Club_has_Clubgroup (clubname, groupID)
VALUES ('Cultural','3');

INSERT INTO Club_has_Clubgroup (clubname, groupID)
VALUES ('Art','4');
INSERT INTO Club_has_Clubgroup (clubname, groupID)
VALUES ('Art','5');
INSERT INTO Club_has_Clubgroup (clubname, groupID)
VALUES ('Art','6');

INSERT INTO Club_has_Clubgroup (clubname, groupID)
VALUES ('Sports','7');
INSERT INTO Club_has_Clubgroup (clubname, groupID)
VALUES ('Sports','8');

INSERT INTO Group_Orgenize_groupEvent (groupID, Eventnumber)
VALUES ('7','1');
INSERT INTO Group_Orgenize_groupEvent (groupID, Eventnumber)
VALUES ('7','2');
INSERT INTO Group_Orgenize_groupEvent (groupID, Eventnumber)
VALUES ('4','3');
INSERT INTO Group_Orgenize_groupEvent (groupID, Eventnumber)
VALUES ('1','4');
INSERT INTO Group_Orgenize_groupEvent (groupID, Eventnumber)
VALUES ('5','5');


INSERT INTO Groups_worksOn_Project (groupID, projectId)
VALUES ('8','1');
INSERT INTO Groups_worksOn_Project (groupID, projectId)
VALUES ('5','2');
INSERT INTO Groups_worksOn_Project (groupID, projectId)
VALUES ('5','3');


INSERT INTO Project_Fund_Member (MemberId, projectId, FundId, FundAmount, MoneyPaidMember)
VALUES ('3','1','1',' $10,000.00',' $7,000.00');
INSERT INTO Project_Fund_Member (MemberId, projectId, FundId, FundAmount, MoneyPaidMember)
VALUES ('6','1','1',' $10,000.00',' $2,000.00');
INSERT INTO Project_Fund_Member (MemberId, projectId, FundId, FundAmount, MoneyPaidMember)
VALUES ('9','1','1',' $10,000.00',' $1,000.00');


INSERT INTO Project_Fund_Member (MemberId, projectId, FundId, FundAmount, MoneyPaidMember)
VALUES ('8','2','2','  $75,000.00','  $50,000.00');
INSERT INTO Project_Fund_Member (MemberId, projectId, FundId, FundAmount, MoneyPaidMember)
VALUES ('3','2','2','  $75,000.00',' $25,000.00');

INSERT INTO Project_Fund_Member (MemberId, projectId, FundId, FundAmount, MoneyPaidMember)
VALUES ('3','3','3',' $15,000.00','$5,000.00');
INSERT INTO Project_Fund_Member (MemberId, projectId, FundId, FundAmount, MoneyPaidMember)
VALUES ('9','3','3',' $15,000.00',' $10,000.00');

