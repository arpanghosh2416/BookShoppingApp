CREATE USER C##SAYAN IDENTIFIED BY stark ACCOUNT UNLOCK;
GRANT CREATE SESSION TO C##SAYAN;
GRANT CONNECT, RESOURCE, DBA TO C##SAYAN;
CONNECT C##SAYAN/stark
SHOW USER
