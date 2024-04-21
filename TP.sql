QST1
CREATE USER 'user1'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Modep@sse1';
CREATE USER 'user2'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Modep@sse2';
CREATE USER 'user3'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Modep@sse3';
CREATE USER 'user4'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Modep@sse4';
QST2
select * from Mysql.user;
QST3
GRANT select ON ctrformation.* TO 'user1'@'localhost';
GRANT insert ON ctrformation.etudiant TO 'user2'@'localhost';
GRANT insert ON ctrformation.formation TO 'user2'@'localhost';
GRANT all ON ctrformation.* TO 'user3'@'localhost';
GRANT update ON ctrformation.inscription TO 'user4'@'localhost';
flush privileges;
QST4

SHOW GRANTS FOR 'user1'@'localhost';
SHOW GRANTS FOR 'user2'@'localhost';
SHOW GRANTS FOR 'user3'@'localhost';
SHOW GRANTS FOR 'user4'@'localhost';
QST5
-- mysql -u user4 -p
QST6
UPDATE foramtion SET comments = 'This is a comment about this row' WHERE id = 10011;
QST7
REVOKE delete ON ctrformation.* FROM 'user3'@'localhost';
FLUSH PRIVILEGES;
