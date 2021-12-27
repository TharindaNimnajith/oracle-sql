CREATE USER intro_user IDENTIFIED BY mypassword;

GRANT connect TO intro_user;

GRANT
    CREATE SESSION,
    GRANT ANY PRIVILEGE
TO intro_user;

GRANT
    UNLIMITED TABLESPACE
TO intro_user;

GRANT
    CREATE TABLE
TO intro_user;
