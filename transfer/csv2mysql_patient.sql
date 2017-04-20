use ttr_hims;

TRUNCATE TABLE patient ;

LOAD DATA LOCAL INFILE 'patient.csv'
REPLACE INTO TABLE `patient`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

UPDATE patient SET update_time=NOW();

quit
