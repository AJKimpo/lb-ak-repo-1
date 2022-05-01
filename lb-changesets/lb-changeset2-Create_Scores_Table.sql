/*
-- HEALTH_IQ DATABASE - CREATE SCORES TABLE
-- LIQUIBASE CHANGESET 2
-- AUTHOR: Kimpo
*/

USE Health_IQ;

CREATE TABLE Scores
  ( userId             VARCHAR(255)   COLLATE latin1_general_ci NOT NULL,
    score              INT            COLLATE latin1_general_ci NULL,
    questionsCompleted VARCHAR(2000)  COLLATE latin1_general_ci NULL, 
    CONSTRAINT scores_pk primary key (userId));

COMMIT;
