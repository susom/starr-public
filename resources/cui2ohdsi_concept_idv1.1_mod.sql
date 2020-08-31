####################################################################
### UMLS CUI to OHDSI concept_id mappings V 2.0                  ###
### By Juan M. Banda (https://github.com/jmbanda                 ###
### Repository: https://github.com/jmbanda/OHDSIconceptid2cui    ###
#### USAGE NOTES ###################################################
## OHDSI vocabulary source tables:                               ###
## Find and REPLACE OHDSIVocab  with your own Database           ###
## UMLS source tables:                                           ###
## Find and REPLACE umls with you own database                   ###
##                                                               ###
## Result: a table called OHDSI_to_CUI in your OHDSI             ###
## vocabulary tables                                             ###
## Modified on July 9th 2020 by Jose Posada                      ###
## https://github.com/jdposada                                   ###
####################################################################

CREATE OR REPLACE TABLE OHDSIVocab.OHDSI_to_CUI_TEMP AS (
SELECT AAA.* FROM (
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ATC' AND B.vocabulary_id='ATC'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='CVX' AND B.vocabulary_id='CVX'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='RXNORM' AND B.vocabulary_id='RxNorm'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='CPT' AND B.vocabulary_id='CPT4'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='HCPCS' AND B.vocabulary_id='HCPCS'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD10CM' AND B.vocabulary_id='ICD10CM'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD10' AND B.vocabulary_id='ICD10'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='MSH' AND B.vocabulary_id='MeSH'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='NUCCPT' AND B.vocabulary_id='NUCC'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='VANDF' AND B.vocabulary_id='VA Product'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='VANDF' AND B.vocabulary_id='VA Class'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD10PCS' AND B.vocabulary_id='ICD10PCS'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD9CM' AND B.vocabulary_id='ICD9CM'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD9CM' AND B.vocabulary_id='ICD9Proc'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='MDR' AND B.vocabulary_id='MedDRA'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='HCPCS' AND B.vocabulary_id='HCPCS'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='NDFRT' AND B.vocabulary_id='NDFRT'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='SNOMEDCT_US' AND B.vocabulary_id='SNOMED'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='LNC' AND B.vocabulary_id='LOINC'
) AA GROUP BY AA.CUI
) as AAA
);

##### Modifying insert jobs for an union all clause at the end ##########

##### Improve ATC codes ##########
CREATE OR REPLACE TABLE T1 AS 
SELECT A.CUI, B.concept_id, 'ATC' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ATC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ATC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ATC' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T2 AS 
SELECT A.CUI, B.concept_id, 'ATC' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ATC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ATC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ATC' GROUP BY A.CUI;


##### Improve RxNorm codes ##########
CREATE OR REPLACE TABLE T3 AS 
SELECT A.CUI, B.concept_id, 'RxNorm' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='RXNORM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='RxNorm') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='RXNORM' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T4 AS 
SELECT A.CUI, B.concept_id, 'RxNorm' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='RXNORM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='RxNorm') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='RXNORM' GROUP BY A.CUI;

######## Improve CPT codes ##########
CREATE OR REPLACE TABLE T5 AS 
SELECT A.CUI, B.concept_id, 'CPT4' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='CPT4') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='CPT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='CPT' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T6 AS 
SELECT A.CUI, B.concept_id, 'CPT4' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='CPT4') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='CPT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='CPT' GROUP BY A.CUI;

######## Improve HCPCS codes ##########
CREATE OR REPLACE TABLE T7 AS
SELECT A.CUI, B.concept_id, 'HCPCS' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='HCPCS') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='HCPCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='HCPCS' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T8 AS
SELECT A.CUI, B.concept_id, 'HCPCS' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='HCPCS') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='HCPCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='HCPCS' GROUP BY A.CUI;

######## Improve ICD10CM codes ##########
CREATE OR REPLACE TABLE T9 AS
SELECT A.CUI, B.concept_id, 'ICD10CM' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10CM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ICD10CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD10CM' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T10 AS
SELECT A.CUI, B.concept_id, 'ICD10CM' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10CM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ICD10CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD10CM' GROUP BY A.CUI;

######## Improve ICD10 codes ##########
CREATE OR REPLACE TABLE T11 AS
SELECT A.CUI, B.concept_id, 'ICD10' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ICD10') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD10' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T12 AS
SELECT A.CUI, B.concept_id, 'ICD10' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ICD10') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD10' GROUP BY A.CUI;

######## Improve MSH codes ##########
CREATE OR REPLACE TABLE T13 AS
SELECT A.CUI, B.concept_id, 'MeSH' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='MeSH') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='MeSH') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='MSH' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T14 AS
SELECT A.CUI, B.concept_id, 'MeSH' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='MeSH') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='MeSH') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='MSH' GROUP BY A.CUI;

######## Improve NUCC codes ##########
CREATE OR REPLACE TABLE T15 AS
SELECT A.CUI, B.concept_id, 'NUCC' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='NUCC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='NUCC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='NUCCPT' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T16 AS
SELECT A.CUI, B.concept_id, 'NUCC' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='NUCC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='NUCC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='NUCCPT' GROUP BY A.CUI;

######## Improve VA Product codes ##########
CREATE OR REPLACE TABLE T17 AS
SELECT A.CUI, B.concept_id, 'VA Product' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='VA Product') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='VA Product') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='VANDF' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T18 AS
SELECT A.CUI, B.concept_id, 'VA Product' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='VA Product') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='VA Product') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='VANDF' GROUP BY A.CUI;

######## Improve VA Class codes ##########
CREATE OR REPLACE TABLE T19 AS
SELECT A.CUI, B.concept_id, 'VA Class' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='VA Class') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='VA Class') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='VANDF' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T20 AS
SELECT A.CUI, B.concept_id, 'VA Class' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='VA Class') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='VA Class') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='VANDF' GROUP BY A.CUI;

######## Improve ICD10PCS codes ##########
CREATE OR REPLACE TABLE T21 AS
SELECT A.CUI, B.concept_id, 'ICD10PCS' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10PCS') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ICD10PCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD10PCS' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T22 AS
SELECT A.CUI, B.concept_id, 'ICD10PCS' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10PCS') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ICD10PCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD10PCS' GROUP BY A.CUI;

######## Improve ICD9CM codes ##########
CREATE OR REPLACE TABLE T23 AS
SELECT A.CUI, B.concept_id, 'ICD9CM' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD9CM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ICD9CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD9CM' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T24 AS
SELECT A.CUI, B.concept_id, 'ICD9CM' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD9CM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ICD9CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD9CM' GROUP BY A.CUI;

######## Improve ICD9Proc codes ##########
CREATE OR REPLACE TABLE T25 AS
SELECT A.CUI, B.concept_id, 'ICD9Proc' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD9Proc') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ICD9Proc') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD9CM' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T26 AS
SELECT A.CUI, B.concept_id, 'ICD9Proc' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD9Proc') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='ICD9Proc') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD9CM' GROUP BY A.CUI;

######## Improve MeDRA codes ##########
CREATE OR REPLACE TABLE T27 AS
SELECT A.CUI, B.concept_id, 'MedDRA' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='MedDRA') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='MedDRA') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='MDR' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T28 AS
SELECT A.CUI, B.concept_id, 'MedDRA' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='MedDRA') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='MedDRA') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='MDR' GROUP BY A.CUI;

######## Improve NDFRT codes ##########
CREATE OR REPLACE TABLE T29 AS
SELECT A.CUI, B.concept_id, 'NDFRT' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='NDFRT') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='NDFRT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='NDFRT' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T30 AS
SELECT A.CUI, B.concept_id, 'NDFRT' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='NDFRT') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='NDFRT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='NDFRT' GROUP BY A.CUI;

######## Improve SNOMED codes ##########
CREATE OR REPLACE TABLE T31 AS
SELECT A.CUI, B.concept_id, 'SNOMED' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='SNOMED') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='SNOMED') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='SNOMEDCT_US' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T32 AS
SELECT A.CUI, B.concept_id, 'SNOMED' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='SNOMED') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='SNOMED') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='SNOMEDCT_US' GROUP BY A.CUI;

######## Improve LOINC codes ##########
CREATE OR REPLACE TABLE T33 AS
SELECT A.CUI, B.concept_id, 'LOINC' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='LOINC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='LOINC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='LNC' GROUP BY A.CUI;

CREATE OR REPLACE TABLE T34 AS
SELECT A.CUI, B.concept_id, 'LOINC' as vocabulary_id FROM umls.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='LOINC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP WHERE vocabulary_id='LOINC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='LNC' GROUP BY A.CUI;

CREATE OR REPLACE TABLE OHDSIVocab.OHDSI_to_CUI_TEMP AS
SELECT * FROM OHDSIVocab.OHDSI_to_CUI_TEMP
UNION
SELECT * FROM T1
UNION
SELECT * FROM T2
UNION
SELECT * FROM T3
UNION
SELECT * FROM T4
UNION
SELECT * FROM T5
UNION
SELECT * FROM T6
UNION
SELECT * FROM T7
UNION
SELECT * FROM T8
UNION
SELECT * FROM T9
UNION
SELECT * FROM T10
UNION
SELECT * FROM T11
UNION
SELECT * FROM T12
UNION
SELECT * FROM T13
UNION
SELECT * FROM T14
UNION
SELECT * FROM T15
UNION
SELECT * FROM T16
UNION
SELECT * FROM T17
UNION
SELECT * FROM T18
UNION
SELECT * FROM T19
UNION
SELECT * FROM T20
UNION
SELECT * FROM T21
UNION
SELECT * FROM T22
UNION
SELECT * FROM T23
UNION
SELECT * FROM T24
UNION
SELECT * FROM T25
UNION
SELECT * FROM T26
UNION
SELECT * FROM T27
UNION
SELECT * FROM T28
UNION
SELECT * FROM T29
UNION
SELECT * FROM T30
UNION
SELECT * FROM T31
UNION
SELECT * FROM T32
UNION
SELECT * FROM T33
UNION
SELECT * FROM T34;

DROP TABLE IF EXISTS OHDSIVocab.OHDSI_to_CUI;
CREATE TABLE OHDSIVocab.OHDSI_to_CUI AS ( SELECT CUI,concept_id, vocabulary_id FROM OHDSIVocab.OHDSI_to_CUI_TEMP GROUP BY CUI,concept_id, vocabulary_id);
DROP TABLE IF EXISTS OHDSIVocab.OHDSI_to_CUI_TEMP;