-- 1517. Find Users With Valid E-Mails
-- https://leetcode.com/problems/find-users-with-valid-e-mails/description/

-- Schema:
Create table If Not Exists Users (
    user_id int,
    name varchar(30),
    mail varchar(50)
);

-- Rows:
Truncate table Users;
insert into Users (user_id, name, mail) values ('1', 'Winston', 'winston@leetcode.com');
insert into Users (user_id, name, mail) values ('2', 'Jonathan', 'jonathanisgreat');
insert into Users (user_id, name, mail) values ('3', 'Annabelle', 'bella-@leetcode.com');
insert into Users (user_id, name, mail) values ('4', 'Sally', 'sally.come@leetcode.com');
insert into Users (user_id, name, mail) values ('5', 'Marwan', 'quarz#2020@leetcode.com');
insert into Users (user_id, name, mail) values ('6', 'David', 'david69@gmail.com');
insert into Users (user_id, name, mail) values ('7', 'Shapiro', '.shapo@leetcode.com');

-- Ans:
SELECT * FROM Users
WHERE mail ~ '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\.com$';
