== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Models:

Check this:

User
----
userID INT (PK)
emailID VARCHAR
active BOOL
teamName VARCHAR
name VARCHAR
password CHAR

rails generate scaffold User email_id:string active:boolean team_name:string name:string password:string



Message
-------
messageID INT(PK)
fromUserID INT (FK)
toReceipientID INT (FK)
dateSent DATETIME
dateRead DATETIME
content CHAR

rails generate scaffold Message from_user_id:integer to_receipient_id:integer date_sent:datetime date_read:datetime content:string



Channel
-------
channelID INT(PK)
userID (FK) - ARRAY
channelName VARCHAR
isPrivate - Boolean

rails generate scaffold Channel user_id:integer channel_name:string is_private:boolean

APIs
----
1. GetAllUsersForTheChannel
2. GetAllMessageForTheChannel
3. GetMessageForTheUser
4. GetAllChannelsForTheUser
5. SetMessageFromUserToUser
6. SetMessageFromUserToChannel