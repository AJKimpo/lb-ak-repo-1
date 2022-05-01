/*
-- HEALTH_IQ DATABASE - ALTER SCORES TABLE - ADD 3 COLUMNS
-- LIQUIBASE CHANGESET 4
-- AUTHOR: Kimpo
*/

USE Health_IQ;

ALTER TABLE Scores
    ADD COLUMN easyQuestionsCompleted VARCHAR(2000)  	COLLATE latin1_general_ci NULL, 
    ADD COLUMN mediumQuestionsCompleted VARCHAR(2000)  	COLLATE latin1_general_ci NULL, 
    ADD COLUMN hardQuestionsCompleted VARCHAR(2000)  	COLLATE latin1_general_ci NULL
;

COMMIT;
