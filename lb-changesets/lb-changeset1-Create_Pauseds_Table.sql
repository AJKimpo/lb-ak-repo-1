/*
-- HEALTH_IQ DATABASE - CREATE PAUSEDS TABLE
-- LIQUIBASE CHANGESET 1
-- AUTHOR: Kimpo
*/

USE Health_IQ;

CREATE TABLE Pauseds
  ( userId           VARCHAR(255)  COLLATE latin1_general_ci NOT NULL,
    difficulty       VARCHAR(10)   COLLATE latin1_general_ci NULL,
    quizQuestions    VARCHAR(100)  COLLATE latin1_general_ci NULL,
    questionIndex    INT           NULL,
    score            INT           NULL,	
    hintUsed         BIT           NULL,
    hintCount        INT           NULL,
    beginTime        DATETIME      NULL,
    createdAt        DATETIME      NULL,
    updatedAt        DATETIME      NULL,
    CONSTRAINT pauseds_pk primary key (userId));

COMMIT;

