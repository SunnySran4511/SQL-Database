--CREATE TABLE club (
clubname VARCHAR(35) NOT NULL,
clubdescription VARCHAR(100),
PRIMARY KEY(clubname)
);
CREATE TABLE Members (
MemberId INTEGER NOT NULL AUTO_INCREMENT,
firstname VARCHAR(35),
lastname VARCHAR(35),
email VARCHAR(50),
Phone INTEGER,
membertype VARCHAR(35),
PRIMARY KEY(MemberId)
);
CREATE TABLE Clubgroup  (
groupID INTEGER NOT NULL AUTO_INCREMENT,
groupname VARCHAR(35) NOT NULL,
groupdescription VARCHAR(100),
PRIMARY KEY(groupID)
);
CREATE TABLE groupEvent (
Eventnumber INTEGER NOT NULL AUTO_INCREMENT,
eventDate DATE,
eventTime TIME,
builindgnumber INTEGER,
floorNumber INTEGER,
roomnumber VARCHAR(24),
fee FLOAT(24),
eventsubject VARCHAR(35),
PRIMARY KEY(Eventnumber)
);
CREATE TABLE Project (
projectId INTEGER NOT NULL AUTO_INCREMENT,
projectdescription VARCHAR(100),
PRIMARY KEY(projectId)
);
CREATE TABLE Alum_worksfor_Company  (
MemberId INTEGER NOT NULL ,
EndDate DATE,
StartDate DATE,
positions VARCHAR(35),
PRIMARY KEY (memberId),
FOREIGN KEY(memberId) REFERENCES Members(memberId) ON DELETE CASCADE
);
CREATE TABLE Member_Lead_club  (
MemberId INTEGER NOT NULL,
clubname VARCHAR(35) NOT NULL,
PRIMARY KEY (memberId),
FOREIGN KEY(memberId) REFERENCES Members(memberId) ON DELETE CASCADE,
FOREIGN KEY(clubname) REFERENCES Club(clubname) ON DELETE CASCADE
);
CREATE TABLE Member_Head_Clubgroup   (
MemberId INTEGER NOT NULL,
groupID INTEGER NOT NULL,
PRIMARY KEY (memberId),
FOREIGN KEY(memberId) REFERENCES Members(memberId) ON DELETE CASCADE,
FOREIGN KEY(groupID) REFERENCES Clubgroup(groupID) ON DELETE CASCADE
);
CREATE TABLE  Member_Join_Clubgroup   (
MemberId INTEGER NOT NULL,
groupID INTEGER NOT NULL,
StartDate DATE,
EndDate DATE,
PRIMARY KEY (memberId,groupID),
FOREIGN KEY(memberId) REFERENCES Members(memberId) ON DELETE CASCADE,
FOREIGN KEY(groupID) REFERENCES Clubgroup(groupID) ON DELETE CASCADE
);
CREATE TABLE  Club_has_Clubgroup    (
clubname VARCHAR(35) NOT NULL,
groupID INTEGER NOT NULL,
PRIMARY KEY (clubname,groupID),
FOREIGN KEY(clubname) REFERENCES club(clubname) ON DELETE CASCADE,
FOREIGN KEY(groupID) REFERENCES Clubgroup(groupID) ON DELETE CASCADE
);

CREATE TABLE Group_Orgenize_groupEvent (
groupID INTEGER NOT NULL,
Eventnumber INTEGER NOT NULL,
PRIMARY KEY (groupID,Eventnumber),
FOREIGN KEY(groupID) REFERENCES Clubgroup(groupID) ON DELETE CASCADE,
FOREIGN KEY(Eventnumber) REFERENCES groupEvent(Eventnumber) ON DELETE CASCADE
);
CREATE TABLE Groups_worksOn_Project   (
groupID INTEGER NOT NULL,
projectId INTEGER NOT NULL,
PRIMARY KEY (groupID,projectId),
FOREIGN KEY(groupID) REFERENCES Clubgroup(groupID) ON DELETE CASCADE,
FOREIGN KEY(projectId) REFERENCES Project(projectId) ON DELETE CASCADE
);
CREATE TABLE Project_Fund_Member   (
MemberId INTEGER NOT NULL,
projectId INTEGER NOT NULL,
FundId INTEGER NOT NULL AUTO_INCREMENT,
FundAmount float(24),
MoneyPaidMember float(24),
PRIMARY KEY (MemberId,projectId,FundId),
FOREIGN KEY(memberId) REFERENCES Members(memberId) ON DELETE CASCADE,
FOREIGN KEY(projectId) REFERENCES Project(projectId) ON DELETE CASCADE
);


