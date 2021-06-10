create table Users (User_ID TEXT, Name TEXT, Yelping_since TIMESTAMP, primary key (User_ID));
create table Business (Business_ID TEXT, Title TEXT, primary key (Business_ID));
create table Review (User_ID TEXT, Business_ID TEXT, Rating INTEGER, Description TEXT, Date TIMESTAMP, primary key (User_ID,Business_ID), foreign key (User_ID) references Users, foreign key (Business_ID) references Business);
create table TipInfo (Tip_ID TEXT, Tip_content TEXT, primary key (Tip_ID));
create table Category (Category_ID TEXT, Name TEXT, primary key (Category_ID));
create table Photo (Photo_ID TEXT, Caption TEXT, primary key (Photo_ID));
create table Tip (Tip_ID TEXT, Date TIMESTAMP, User_ID TEXT, Business_ID TEXT, primary key (Tip_ID), foreign key (Tip_ID) references TipInfo, foreign key (User_ID) references Users, foreign key (Business_ID) references Business);
create table HasAPhoto (Photo_ID TEXT, Business_ID TEXT, primary key (Photo_ID), foreign key (Photo_ID) references Photo, foreign key (Business_ID) references Business);
create table HasACategory (Category_ID TEXT, Business_ID TEXT, primary key (Category_ID,Business_ID), foreign key (Category_ID) references Category, foreign key (Business_ID) references Business);
