--------------------------------------------------------
-- Archivo creado  - miércoles-octubre-11-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ANSWERS
--------------------------------------------------------

  CREATE TABLE "ANSWERS" 
   (	"ID" NUMBER(*,0), 
	"NUMBER_OF_QUESTION" VARCHAR2(255), 
	"ANSWER" VARCHAR2(255), 
	"PRICE" NUMBER(10,3)
   )
--------------------------------------------------------
--  DDL for Table CATEGORIES
--------------------------------------------------------

  CREATE TABLE "CATEGORIES" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(255), 
	"SEASON" VARCHAR2(255)
   )
--------------------------------------------------------
--  DDL for Table PRODUCTS
--------------------------------------------------------

  CREATE TABLE "PRODUCTS" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(255), 
	"REFERENCE" VARCHAR2(255), 
	"PRICE" NUMBER(10,3), 
	"CATEGORY_ID" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Table AQ$_INTERNET_AGENT_PRIVS
--------------------------------------------------------

  CREATE TABLE "AQ$_INTERNET_AGENT_PRIVS" 
   (	"AGENT_NAME" VARCHAR2(30), 
	"DB_USERNAME" VARCHAR2(30)
   )
--------------------------------------------------------
--  DDL for Table AQ$_INTERNET_AGENTS
--------------------------------------------------------

  CREATE TABLE "AQ$_INTERNET_AGENTS" 
   (	"AGENT_NAME" VARCHAR2(30), 
	"PROTOCOL" NUMBER(*,0), 
	"SPARE1" VARCHAR2(128)
   )
--------------------------------------------------------
--  DDL for Table AQ$_QUEUES
--------------------------------------------------------

  CREATE TABLE "AQ$_QUEUES" 
   (	"OID" RAW(16), 
	"EVENTID" NUMBER, 
	"NAME" VARCHAR2(30), 
	"TABLE_OBJNO" NUMBER, 
	"USAGE" NUMBER, 
	"ENABLE_FLAG" NUMBER, 
	"MAX_RETRIES" NUMBER, 
	"RETRY_DELAY" NUMBER, 
	"PROPERTIES" NUMBER, 
	"RET_TIME" NUMBER, 
	"QUEUE_COMMENT" VARCHAR2(2000), 
	"SUBSCRIBERS" "AQ$_SUBSCRIBERS" , 
	"MEMORY_THRESHOLD" NUMBER, 
	"SERVICE_NAME" VARCHAR2(64), 
	"NETWORK_NAME" VARCHAR2(256)
   )
--------------------------------------------------------
--  DDL for Table AQ$_QUEUE_TABLES
--------------------------------------------------------

  CREATE TABLE "AQ$_QUEUE_TABLES" 
   (	"SCHEMA" VARCHAR2(30), 
	"NAME" VARCHAR2(30), 
	"UDATA_TYPE" NUMBER, 
	"OBJNO" NUMBER, 
	"FLAGS" NUMBER, 
	"SORT_COLS" NUMBER, 
	"TIMEZONE" VARCHAR2(64), 
	"TABLE_COMMENT" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table AQ$_SCHEDULES
--------------------------------------------------------

  CREATE TABLE "AQ$_SCHEDULES" 
   (	"OID" RAW(16), 
	"DESTINATION" VARCHAR2(128), 
	"START_TIME" DATE, 
	"DURATION" VARCHAR2(8), 
	"NEXT_TIME" VARCHAR2(128), 
	"LATENCY" VARCHAR2(8), 
	"LAST_TIME" DATE, 
	"JOBNO" NUMBER
   )
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE "CLIENTES" 
   (	"ID" NUMBER(*,0), 
	"CEDULA" VARCHAR2(20), 
	"NOMBRE" VARCHAR2(50), 
	"APELLIDO" VARCHAR2(50), 
	"DIRECCION" VARCHAR2(50), 
	"TELEFONO" VARCHAR2(50), 
	"TIPO_IDENTIFICACION_ID" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Table DEF$_CALLDEST
--------------------------------------------------------

  CREATE TABLE "DEF$_CALLDEST" 
   (	"ENQ_TID" VARCHAR2(22), 
	"STEP_NO" NUMBER, 
	"DBLINK" VARCHAR2(128), 
	"SCHEMA_NAME" VARCHAR2(30), 
	"PACKAGE_NAME" VARCHAR2(30), 
	"CATCHUP" RAW(16) DEFAULT '00'
   ) 

   COMMENT ON COLUMN "DEF$_CALLDEST"."ENQ_TID" IS 'Transaction ID'
   COMMENT ON COLUMN "DEF$_CALLDEST"."STEP_NO" IS 'Unique ID of call within transaction'
   COMMENT ON COLUMN "DEF$_CALLDEST"."DBLINK" IS 'The destination database'
   COMMENT ON COLUMN "DEF$_CALLDEST"."SCHEMA_NAME" IS 'The schema of the deferred remote procedure call'
   COMMENT ON COLUMN "DEF$_CALLDEST"."PACKAGE_NAME" IS 'The package of the deferred remote procedure call'
   COMMENT ON COLUMN "DEF$_CALLDEST"."CATCHUP" IS 'Dummy column for foreign key'
   COMMENT ON TABLE "DEF$_CALLDEST"  IS 'Information about call destinations for D-type and error transactions'
--------------------------------------------------------
--  DDL for Table DEF$_DEFAULTDEST
--------------------------------------------------------

  CREATE TABLE "DEF$_DEFAULTDEST" 
   (	"DBLINK" VARCHAR2(128)
   ) 

   COMMENT ON COLUMN "DEF$_DEFAULTDEST"."DBLINK" IS 'Default destination'
   COMMENT ON TABLE "DEF$_DEFAULTDEST"  IS 'Default destinations for deferred remote procedure calls'
--------------------------------------------------------
--  DDL for Table DEF$_DESTINATION
--------------------------------------------------------

  CREATE TABLE "DEF$_DESTINATION" 
   (	"DBLINK" VARCHAR2(128), 
	"LAST_DELIVERED" NUMBER DEFAULT 0, 
	"LAST_ENQ_TID" VARCHAR2(22), 
	"LAST_SEQ" NUMBER, 
	"DISABLED" CHAR(1), 
	"JOB" NUMBER, 
	"LAST_TXN_COUNT" NUMBER, 
	"LAST_ERROR_NUMBER" NUMBER, 
	"LAST_ERROR_MESSAGE" VARCHAR2(2000), 
	"APPLY_INIT" VARCHAR2(4000), 
	"CATCHUP" RAW(16) DEFAULT '00', 
	"ALTERNATE" CHAR(1) DEFAULT 'F', 
	"TOTAL_TXN_COUNT" NUMBER DEFAULT 0, 
	"TOTAL_PROP_TIME_THROUGHPUT" NUMBER DEFAULT 0, 
	"TOTAL_PROP_TIME_LATENCY" NUMBER DEFAULT 0, 
	"TO_COMMUNICATION_SIZE" NUMBER DEFAULT 0, 
	"FROM_COMMUNICATION_SIZE" NUMBER DEFAULT 0, 
	"FLAG" RAW(4) DEFAULT '00000000', 
	"SPARE1" NUMBER DEFAULT 0, 
	"SPARE2" NUMBER DEFAULT 0, 
	"SPARE3" NUMBER DEFAULT 0, 
	"SPARE4" NUMBER DEFAULT 0
   ) 

   COMMENT ON COLUMN "DEF$_DESTINATION"."DBLINK" IS 'Destination'
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_DELIVERED" IS 'Value of delivery_order of last transaction propagated'
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_ENQ_TID" IS 'Transaction ID of last transaction propagated'
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_SEQ" IS 'Parallel prop seq number of last transaction propagated'
   COMMENT ON COLUMN "DEF$_DESTINATION"."DISABLED" IS 'Is propagation to destination disabled'
   COMMENT ON COLUMN "DEF$_DESTINATION"."JOB" IS 'Number of job that pushes queue'
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_TXN_COUNT" IS 'Number of transactions pushed during last attempt'
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_ERROR_NUMBER" IS 'Oracle error number from last push'
   COMMENT ON COLUMN "DEF$_DESTINATION"."LAST_ERROR_MESSAGE" IS 'Error message from last push'
   COMMENT ON COLUMN "DEF$_DESTINATION"."CATCHUP" IS 'Used to break transaction into pieces'
   COMMENT ON COLUMN "DEF$_DESTINATION"."ALTERNATE" IS 'Used to break transaction into pieces'
   COMMENT ON COLUMN "DEF$_DESTINATION"."TOTAL_TXN_COUNT" IS 'Total number of transactions pushed'
   COMMENT ON COLUMN "DEF$_DESTINATION"."TOTAL_PROP_TIME_THROUGHPUT" IS 'Total propagation time in seconds for measuring throughput'
   COMMENT ON COLUMN "DEF$_DESTINATION"."TOTAL_PROP_TIME_LATENCY" IS 'Total propagation time in seconds for measuring latency'
   COMMENT ON COLUMN "DEF$_DESTINATION"."TO_COMMUNICATION_SIZE" IS 'Total number of bytes sent to this dblink'
   COMMENT ON COLUMN "DEF$_DESTINATION"."FROM_COMMUNICATION_SIZE" IS 'Total number of bytes received from this dblink'
   COMMENT ON COLUMN "DEF$_DESTINATION"."SPARE1" IS 'Total number of round trips for this dblink'
   COMMENT ON COLUMN "DEF$_DESTINATION"."SPARE2" IS 'Total number of administrative requests'
   COMMENT ON COLUMN "DEF$_DESTINATION"."SPARE3" IS 'Total number of error transactions pushed'
   COMMENT ON COLUMN "DEF$_DESTINATION"."SPARE4" IS 'Total time in seconds spent sleeping during push'
   COMMENT ON TABLE "DEF$_DESTINATION"  IS 'Information about propagation to different destinations'
--------------------------------------------------------
--  DDL for Table DEF$_ERROR
--------------------------------------------------------

  CREATE TABLE "DEF$_ERROR" 
   (	"ENQ_TID" VARCHAR2(22), 
	"ORIGIN_TRAN_DB" VARCHAR2(128), 
	"ORIGIN_ENQ_TID" VARCHAR2(22), 
	"DESTINATION" VARCHAR2(128), 
	"STEP_NO" NUMBER, 
	"RECEIVER" NUMBER, 
	"ENQ_TIME" DATE, 
	"ERROR_NUMBER" NUMBER, 
	"ERROR_MSG" VARCHAR2(2000)
   ) 

   COMMENT ON COLUMN "DEF$_ERROR"."ENQ_TID" IS 'The ID of the transaction that created the error'
   COMMENT ON COLUMN "DEF$_ERROR"."ORIGIN_TRAN_DB" IS 'The database originating the deferred transaction'
   COMMENT ON COLUMN "DEF$_ERROR"."ORIGIN_ENQ_TID" IS 'The original ID of the transaction'
   COMMENT ON COLUMN "DEF$_ERROR"."DESTINATION" IS 'Database link used to address destination'
   COMMENT ON COLUMN "DEF$_ERROR"."STEP_NO" IS 'Unique ID of call that caused an error'
   COMMENT ON COLUMN "DEF$_ERROR"."RECEIVER" IS 'User ID of the original receiver'
   COMMENT ON COLUMN "DEF$_ERROR"."ENQ_TIME" IS 'Time original transaction enqueued'
   COMMENT ON COLUMN "DEF$_ERROR"."ERROR_NUMBER" IS 'Oracle error number'
   COMMENT ON COLUMN "DEF$_ERROR"."ERROR_MSG" IS 'Error message text'
   COMMENT ON TABLE "DEF$_ERROR"  IS 'Information about all deferred transactions that caused an error'
--------------------------------------------------------
--  DDL for Table DEF$_LOB
--------------------------------------------------------

  CREATE TABLE "DEF$_LOB" 
   (	"ID" RAW(16), 
	"ENQ_TID" VARCHAR2(22), 
	"BLOB_COL" BLOB, 
	"CLOB_COL" CLOB, 
	"NCLOB_COL" NCLOB
   ) 

   COMMENT ON COLUMN "DEF$_LOB"."ID" IS 'Identifier of LOB parameter'
   COMMENT ON COLUMN "DEF$_LOB"."ENQ_TID" IS 'Transaction identifier for deferred RPC with this LOB parameter'
   COMMENT ON COLUMN "DEF$_LOB"."BLOB_COL" IS 'Binary LOB parameter'
   COMMENT ON COLUMN "DEF$_LOB"."CLOB_COL" IS 'Character LOB parameter'
   COMMENT ON COLUMN "DEF$_LOB"."NCLOB_COL" IS 'National Character LOB parameter'
   COMMENT ON TABLE "DEF$_LOB"  IS 'Storage for LOB parameters to deferred RPCs'
--------------------------------------------------------
--  DDL for Table DEF$_ORIGIN
--------------------------------------------------------

  CREATE TABLE "DEF$_ORIGIN" 
   (	"ORIGIN_DB" VARCHAR2(128), 
	"ORIGIN_DBLINK" VARCHAR2(128), 
	"INUSR" NUMBER, 
	"CSCN" NUMBER, 
	"ENQ_TID" VARCHAR2(22), 
	"RECO_SEQ_NO" NUMBER, 
	"CATCHUP" RAW(16) DEFAULT '00'
   ) 

   COMMENT ON COLUMN "DEF$_ORIGIN"."ORIGIN_DB" IS 'Originating database for the deferred transaction'
   COMMENT ON COLUMN "DEF$_ORIGIN"."ORIGIN_DBLINK" IS 'Database link from deferred transaction origin to this site'
   COMMENT ON COLUMN "DEF$_ORIGIN"."INUSR" IS 'Connected user receiving the deferred transaction'
   COMMENT ON COLUMN "DEF$_ORIGIN"."CSCN" IS 'Prepare SCN assigned at origin site'
   COMMENT ON COLUMN "DEF$_ORIGIN"."ENQ_TID" IS 'Transaction id assigned at origin site'
   COMMENT ON COLUMN "DEF$_ORIGIN"."RECO_SEQ_NO" IS 'Deferred transaction sequence number for recovery'
   COMMENT ON COLUMN "DEF$_ORIGIN"."CATCHUP" IS 'Used to break transaction into pieces'
   COMMENT ON TABLE "DEF$_ORIGIN"  IS 'Information about deferred transactions pushed to this site'
--------------------------------------------------------
--  DDL for Table DEF$_PROPAGATOR
--------------------------------------------------------

  CREATE TABLE "DEF$_PROPAGATOR" 
   (	"USERID" NUMBER, 
	"USERNAME" VARCHAR2(30), 
	"CREATED" DATE DEFAULT SYSDATE
   ) 

   COMMENT ON COLUMN "DEF$_PROPAGATOR"."USERID" IS 'User ID of the propagator'
   COMMENT ON COLUMN "DEF$_PROPAGATOR"."USERNAME" IS 'User name of the propagator'
   COMMENT ON COLUMN "DEF$_PROPAGATOR"."CREATED" IS 'The time when the propagator is registered'
   COMMENT ON TABLE "DEF$_PROPAGATOR"  IS 'The propagator for deferred remote procedure calls'
--------------------------------------------------------
--  DDL for Table DEF$_PUSHED_TRANSACTIONS
--------------------------------------------------------

  CREATE TABLE "DEF$_PUSHED_TRANSACTIONS" 
   (	"SOURCE_SITE_ID" NUMBER, 
	"LAST_TRAN_ID" NUMBER DEFAULT 0, 
	"DISABLED" VARCHAR2(1) DEFAULT 'F', 
	"SOURCE_SITE" VARCHAR2(128)
   ) 

   COMMENT ON COLUMN "DEF$_PUSHED_TRANSACTIONS"."SOURCE_SITE_ID" IS 'Originating database identifier for the deferred transaction'
   COMMENT ON COLUMN "DEF$_PUSHED_TRANSACTIONS"."LAST_TRAN_ID" IS 'Last committed transaction'
   COMMENT ON COLUMN "DEF$_PUSHED_TRANSACTIONS"."DISABLED" IS 'Disable propagation'
   COMMENT ON COLUMN "DEF$_PUSHED_TRANSACTIONS"."SOURCE_SITE" IS 'Obsolete - do not use'
   COMMENT ON TABLE "DEF$_PUSHED_TRANSACTIONS"  IS 'Information about deferred transactions pushed to this site by RepAPI clients'
--------------------------------------------------------
--  DDL for Table FABRICANTE
--------------------------------------------------------

  CREATE TABLE "FABRICANTE" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE_FABRICANTE" VARCHAR2(50)
   )
--------------------------------------------------------
--  DDL for Table HELP
--------------------------------------------------------

  CREATE TABLE "HELP" 
   (	"TOPIC" VARCHAR2(50), 
	"SEQ" NUMBER, 
	"INFO" VARCHAR2(80)
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_AGE_SPILL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_AGE_SPILL$" 
   (	"SESSION#" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"CHUNK" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"OFFSET" NUMBER, 
	"SPILL_DATA" BLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_ATTRCOL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_ATTRCOL$" 
   (	"INTCOL#" NUMBER, 
	"NAME" VARCHAR2(4000), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_ATTRIBUTE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_ATTRIBUTE$" 
   (	"VERSION#" NUMBER, 
	"NAME" VARCHAR2(30), 
	"ATTRIBUTE#" NUMBER, 
	"ATTR_TOID" RAW(16), 
	"ATTR_VERSION#" NUMBER, 
	"SYNOBJ#" NUMBER, 
	"PROPERTIES" NUMBER, 
	"CHARSETID" NUMBER, 
	"CHARSETFORM" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION#" NUMBER, 
	"SCALE" NUMBER, 
	"EXTERNNAME" VARCHAR2(4000), 
	"XFLAGS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER, 
	"SETTER" NUMBER, 
	"GETTER" NUMBER, 
	"TOID" RAW(16), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_CCOL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_CCOL$" 
   (	"CON#" NUMBER, 
	"OBJ#" NUMBER, 
	"COL#" NUMBER, 
	"POS#" NUMBER, 
	"INTCOL#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNRC_DBNAME_UID_MAP
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_DBNAME_UID_MAP" 
   (	"GLOBAL_NAME" VARCHAR2(128), 
	"LOGMNR_UID" NUMBER, 
	"FLAGS" NUMBER
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_CDEF$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_CDEF$" 
   (	"CON#" NUMBER, 
	"COLS" NUMBER, 
	"TYPE#" NUMBER, 
	"ROBJ#" NUMBER, 
	"RCON#" NUMBER, 
	"ENABLED" NUMBER, 
	"DEFER" NUMBER, 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNRC_GSBA
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_GSBA" 
   (	"LOGMNR_UID" NUMBER, 
	"AS_OF_SCN" NUMBER, 
	"FDO_LENGTH" NUMBER, 
	"FDO_VALUE" RAW(255), 
	"CHARSETID" NUMBER, 
	"NCHARSETID" NUMBER, 
	"DBTIMEZONE_LEN" NUMBER, 
	"DBTIMEZONE_VALUE" VARCHAR2(64), 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000), 
	"LOGMNR_SPARE4" DATE
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNRC_GSII
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_GSII" 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"BO#" NUMBER, 
	"INDTYPE#" NUMBER, 
	"DROP_SCN" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000), 
	"LOGMNR_SPARE4" DATE
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNRC_GTCS
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_GTCS" 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"OBJV#" NUMBER, 
	"SEGCOL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"COLNAME" VARCHAR2(30), 
	"TYPE#" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION" NUMBER, 
	"SCALE" NUMBER, 
	"INTERVAL_LEADING_PRECISION" NUMBER, 
	"INTERVAL_TRAILING_PRECISION" NUMBER, 
	"PROPERTY" NUMBER, 
	"TOID" RAW(16), 
	"CHARSETID" NUMBER, 
	"CHARSETFORM" NUMBER, 
	"TYPENAME" VARCHAR2(30), 
	"FQCOLNAME" VARCHAR2(4000), 
	"NUMINTCOLS" NUMBER, 
	"NUMATTRS" NUMBER, 
	"ADTORDER" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000), 
	"LOGMNR_SPARE4" DATE, 
	"LOGMNR_SPARE5" NUMBER, 
	"LOGMNR_SPARE6" NUMBER, 
	"LOGMNR_SPARE7" NUMBER, 
	"LOGMNR_SPARE8" NUMBER, 
	"LOGMNR_SPARE9" NUMBER, 
	"COL#" NUMBER, 
	"XTYPESCHEMANAME" VARCHAR2(30), 
	"XTYPENAME" VARCHAR2(4000), 
	"XFQCOLNAME" VARCHAR2(4000), 
	"XTOPINTCOL" NUMBER, 
	"XREFFEDTABLEOBJN" NUMBER, 
	"XREFFEDTABLEOBJV" NUMBER, 
	"XCOLTYPEFLAGS" NUMBER, 
	"XOPQTYPETYPE" NUMBER, 
	"XOPQTYPEFLAGS" NUMBER, 
	"XOPQLOBINTCOL" NUMBER, 
	"XOPQOBJINTCOL" NUMBER, 
	"XXMLINTCOL" NUMBER, 
	"EAOWNER#" NUMBER, 
	"EAMKEYID" VARCHAR2(64), 
	"EAENCALG" NUMBER, 
	"EAINTALG" NUMBER, 
	"EACOLKLC" RAW(2000), 
	"EAKLCLEN" NUMBER, 
	"EAFLAGS" NUMBER
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNRC_GTLO
--------------------------------------------------------

  CREATE TABLE "LOGMNRC_GTLO" 
   (	"LOGMNR_UID" NUMBER, 
	"KEYOBJ#" NUMBER, 
	"LVLCNT" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"LVL1OBJ#" NUMBER, 
	"LVL2OBJ#" NUMBER, 
	"LVL0TYPE#" NUMBER, 
	"LVL1TYPE#" NUMBER, 
	"LVL2TYPE#" NUMBER, 
	"OWNER#" NUMBER, 
	"OWNERNAME" VARCHAR2(30), 
	"LVL0NAME" VARCHAR2(30), 
	"LVL1NAME" VARCHAR2(30), 
	"LVL2NAME" VARCHAR2(30), 
	"INTCOLS" NUMBER, 
	"COLS" NUMBER, 
	"KERNELCOLS" NUMBER, 
	"TAB_FLAGS" NUMBER, 
	"TRIGFLAG" NUMBER, 
	"ASSOC#" NUMBER, 
	"OBJ_FLAGS" NUMBER, 
	"TS#" NUMBER, 
	"TSNAME" VARCHAR2(30), 
	"PROPERTY" NUMBER, 
	"START_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"FLAGS" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000), 
	"LOGMNR_SPARE4" DATE, 
	"LOGMNR_SPARE5" NUMBER, 
	"LOGMNR_SPARE6" NUMBER, 
	"LOGMNR_SPARE7" NUMBER, 
	"LOGMNR_SPARE8" NUMBER, 
	"LOGMNR_SPARE9" NUMBER, 
	"PARTTYPE" NUMBER, 
	"SUBPARTTYPE" NUMBER, 
	"UNSUPPORTEDCOLS" NUMBER, 
	"COMPLEXTYPECOLS" NUMBER, 
	"NTPARENTOBJNUM" NUMBER, 
	"NTPARENTOBJVERSION" NUMBER, 
	"NTPARENTINTCOLNUM" NUMBER, 
	"LOGMNRTLOFLAGS" NUMBER, 
	"LOGMNRMCV" VARCHAR2(30)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_COL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_COL$" 
   (	"COL#" NUMBER(22,0), 
	"SEGCOL#" NUMBER(22,0), 
	"NAME" VARCHAR2(30), 
	"TYPE#" NUMBER(22,0), 
	"LENGTH" NUMBER(22,0), 
	"PRECISION#" NUMBER(22,0), 
	"SCALE" NUMBER(22,0), 
	"NULL$" NUMBER(22,0), 
	"INTCOL#" NUMBER(22,0), 
	"PROPERTY" NUMBER(22,0), 
	"CHARSETID" NUMBER(22,0), 
	"CHARSETFORM" NUMBER(22,0), 
	"SPARE1" NUMBER(22,0), 
	"SPARE2" NUMBER(22,0), 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_COLTYPE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_COLTYPE$" 
   (	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"TOID" RAW(16), 
	"VERSION#" NUMBER, 
	"PACKED" NUMBER, 
	"INTCOLS" NUMBER, 
	"INTCOL#S" RAW(2000), 
	"FLAGS" NUMBER, 
	"TYPIDCOL#" NUMBER, 
	"SYNOBJ#" NUMBER, 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_DICTIONARY$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_DICTIONARY$" 
   (	"DB_NAME" VARCHAR2(9), 
	"DB_ID" NUMBER(20,0), 
	"DB_CREATED" VARCHAR2(20), 
	"DB_DICT_CREATED" VARCHAR2(20), 
	"DB_DICT_SCN" NUMBER(22,0), 
	"DB_THREAD_MAP" RAW(8), 
	"DB_TXN_SCNBAS" NUMBER(22,0), 
	"DB_TXN_SCNWRP" NUMBER(22,0), 
	"DB_RESETLOGS_CHANGE#" NUMBER(22,0), 
	"DB_RESETLOGS_TIME" VARCHAR2(20), 
	"DB_VERSION_TIME" VARCHAR2(20), 
	"DB_REDO_TYPE_ID" VARCHAR2(8), 
	"DB_REDO_RELEASE" VARCHAR2(60), 
	"DB_CHARACTER_SET" VARCHAR2(30), 
	"DB_VERSION" VARCHAR2(64), 
	"DB_STATUS" VARCHAR2(64), 
	"DB_GLOBAL_NAME" VARCHAR2(128), 
	"DB_DICT_MAXOBJECTS" NUMBER(22,0), 
	"DB_DICT_OBJECTCOUNT" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_DICTSTATE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_DICTSTATE$" 
   (	"LOGMNR_UID" NUMBER(22,0), 
	"START_SCNBAS" NUMBER, 
	"START_SCNWRP" NUMBER, 
	"END_SCNBAS" NUMBER, 
	"END_SCNWRP" NUMBER, 
	"REDO_THREAD" NUMBER, 
	"RBASQN" NUMBER, 
	"RBABLK" NUMBER, 
	"RBABYTE" NUMBER, 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_ENC$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_ENC$" 
   (	"OBJ#" NUMBER, 
	"OWNER#" NUMBER, 
	"ENCALG" NUMBER, 
	"INTALG" NUMBER, 
	"COLKLC" RAW(2000), 
	"KLCLEN" NUMBER, 
	"FLAG" NUMBER, 
	"MKEYID" VARCHAR2(64), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_ERROR$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_ERROR$" 
   (	"SESSION#" NUMBER, 
	"TIME_OF_ERROR" DATE, 
	"CODE" NUMBER, 
	"MESSAGE" VARCHAR2(4000), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" VARCHAR2(4000), 
	"SPARE5" VARCHAR2(4000)
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_FILTER$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_FILTER$" 
   (	"SESSION#" NUMBER, 
	"FILTER_TYPE" VARCHAR2(30), 
	"ATTR1" NUMBER, 
	"ATTR2" NUMBER, 
	"ATTR3" NUMBER, 
	"ATTR4" NUMBER, 
	"ATTR5" NUMBER, 
	"ATTR6" NUMBER, 
	"FILTER_SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" DATE
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_GLOBAL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_GLOBAL$" 
   (	"HIGH_RECID_FOREIGN" NUMBER, 
	"HIGH_RECID_DELETED" NUMBER, 
	"LOCAL_RESET_SCN" NUMBER, 
	"LOCAL_RESET_TIMESTAMP" NUMBER, 
	"VERSION_TIMESTAMP" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" VARCHAR2(2000), 
	"SPARE5" DATE
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_GT_TAB_INCLUDE$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "LOGMNR_GT_TAB_INCLUDE$" 
   (	"SCHEMA_NAME" VARCHAR2(32), 
	"TABLE_NAME" VARCHAR2(32)
   ) ON COMMIT PRESERVE ROWS
--------------------------------------------------------
--  DDL for Table LOGMNR_GT_USER_INCLUDE$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "LOGMNR_GT_USER_INCLUDE$" 
   (	"USER_NAME" VARCHAR2(32), 
	"USER_TYPE" NUMBER
   ) ON COMMIT PRESERVE ROWS
--------------------------------------------------------
--  DDL for Table LOGMNR_GT_XID_INCLUDE$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "LOGMNR_GT_XID_INCLUDE$" 
   (	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER
   ) ON COMMIT PRESERVE ROWS
--------------------------------------------------------
--  DDL for Table LOGMNR_ICOL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_ICOL$" 
   (	"OBJ#" NUMBER, 
	"BO#" NUMBER, 
	"COL#" NUMBER, 
	"POS#" NUMBER, 
	"SEGCOL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_IND$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_IND$" 
   (	"BO#" NUMBER(22,0), 
	"COLS" NUMBER(22,0), 
	"TYPE#" NUMBER(22,0), 
	"FLAGS" NUMBER, 
	"PROPERTY" NUMBER, 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_INDCOMPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_INDCOMPART$" 
   (	"OBJ#" NUMBER, 
	"DATAOBJ#" NUMBER, 
	"BO#" NUMBER, 
	"PART#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_INDPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_INDPART$" 
   (	"OBJ#" NUMBER, 
	"BO#" NUMBER, 
	"PART#" NUMBER, 
	"TS#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_INDSUBPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_INDSUBPART$" 
   (	"OBJ#" NUMBER(22,0), 
	"DATAOBJ#" NUMBER(22,0), 
	"POBJ#" NUMBER(22,0), 
	"SUBPART#" NUMBER(22,0), 
	"TS#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_INTEGRATED_SPILL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_INTEGRATED_SPILL$" 
   (	"SESSION#" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"CHUNK" NUMBER, 
	"FLAG" NUMBER, 
	"CTIME" DATE, 
	"MTIME" DATE, 
	"SPILL_DATA" BLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" DATE, 
	"SPARE5" DATE
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_KOPM$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_KOPM$" 
   (	"LENGTH" NUMBER, 
	"METADATA" RAW(255), 
	"NAME" VARCHAR2(30), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_LOB$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_LOB$" 
   (	"OBJ#" NUMBER, 
	"INTCOL#" NUMBER, 
	"COL#" NUMBER, 
	"LOBJ#" NUMBER, 
	"CHUNK" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_LOBFRAG$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_LOBFRAG$" 
   (	"FRAGOBJ#" NUMBER, 
	"PARENTOBJ#" NUMBER, 
	"TABFRAGOBJ#" NUMBER, 
	"INDFRAGOBJ#" NUMBER, 
	"FRAG#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_LOG$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_LOG$" 
   (	"SESSION#" NUMBER, 
	"THREAD#" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"FIRST_CHANGE#" NUMBER, 
	"NEXT_CHANGE#" NUMBER, 
	"FIRST_TIME" DATE, 
	"NEXT_TIME" DATE, 
	"FILE_NAME" VARCHAR2(513), 
	"STATUS" NUMBER, 
	"INFO" VARCHAR2(32), 
	"TIMESTAMP" DATE, 
	"DICT_BEGIN" VARCHAR2(3), 
	"DICT_END" VARCHAR2(3), 
	"STATUS_INFO" VARCHAR2(32), 
	"DB_ID" NUMBER, 
	"RESETLOGS_CHANGE#" NUMBER, 
	"RESET_TIMESTAMP" NUMBER, 
	"PREV_RESETLOGS_CHANGE#" NUMBER, 
	"PREV_RESET_TIMESTAMP" NUMBER, 
	"BLOCKS" NUMBER, 
	"BLOCK_SIZE" NUMBER, 
	"FLAGS" NUMBER, 
	"CONTENTS" NUMBER, 
	"RECID" NUMBER, 
	"RECSTAMP" NUMBER, 
	"MARK_DELETE_TIMESTAMP" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_LOGMNR_BUILDLOG
--------------------------------------------------------

  CREATE TABLE "LOGMNR_LOGMNR_BUILDLOG" 
   (	"BUILD_DATE" VARCHAR2(20), 
	"DB_TXN_SCNBAS" NUMBER, 
	"DB_TXN_SCNWRP" NUMBER, 
	"CURRENT_BUILD_STATE" NUMBER, 
	"COMPLETION_STATUS" NUMBER, 
	"MARKED_LOG_FILE_LOW_SCN" NUMBER, 
	"INITIAL_XID" VARCHAR2(22), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_NTAB$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_NTAB$" 
   (	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"NTAB#" NUMBER, 
	"NAME" VARCHAR2(4000), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_OBJ$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_OBJ$" 
   (	"OBJV#" NUMBER(22,0), 
	"OWNER#" NUMBER(22,0), 
	"NAME" VARCHAR2(30), 
	"NAMESPACE" NUMBER(22,0), 
	"SUBNAME" VARCHAR2(30), 
	"TYPE#" NUMBER(22,0), 
	"OID$" RAW(16), 
	"REMOTEOWNER" VARCHAR2(30), 
	"LINKNAME" VARCHAR2(128), 
	"FLAGS" NUMBER(22,0), 
	"SPARE3" NUMBER(22,0), 
	"STIME" DATE, 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"START_SCNBAS" NUMBER, 
	"START_SCNWRP" NUMBER
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_OPQTYPE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_OPQTYPE$" 
   (	"INTCOL#" NUMBER, 
	"TYPE" NUMBER, 
	"FLAGS" NUMBER, 
	"LOBCOL" NUMBER, 
	"OBJCOL" NUMBER, 
	"EXTRACOL" NUMBER, 
	"SCHEMAOID" RAW(16), 
	"ELEMNUM" NUMBER, 
	"SCHEMAURL" VARCHAR2(4000), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_PARAMETER$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_PARAMETER$" 
   (	"SESSION#" NUMBER, 
	"NAME" VARCHAR2(30), 
	"VALUE" VARCHAR2(2000), 
	"TYPE" NUMBER, 
	"SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_PARTOBJ$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_PARTOBJ$" 
   (	"PARTTYPE" NUMBER, 
	"PARTCNT" NUMBER, 
	"PARTKEYCOLS" NUMBER, 
	"FLAGS" NUMBER, 
	"DEFTS#" NUMBER, 
	"DEFPCTFREE" NUMBER, 
	"DEFPCTUSED" NUMBER, 
	"DEFPCTTHRES" NUMBER, 
	"DEFINITRANS" NUMBER, 
	"DEFMAXTRANS" NUMBER, 
	"DEFTINIEXTS" NUMBER, 
	"DEFEXTSIZE" NUMBER, 
	"DEFMINEXTS" NUMBER, 
	"DEFMAXEXTS" NUMBER, 
	"DEFEXTPCT" NUMBER, 
	"DEFLISTS" NUMBER, 
	"DEFGROUPS" NUMBER, 
	"DEFLOGGING" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"DEFINCLCOL" NUMBER, 
	"PARAMETERS" VARCHAR2(1000), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNRP_CTAS_PART_MAP
--------------------------------------------------------

  CREATE TABLE "LOGMNRP_CTAS_PART_MAP" 
   (	"LOGMNR_UID" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"KEYOBJ#" NUMBER, 
	"PART#" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(1000)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_PROCESSED_LOG$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_PROCESSED_LOG$" 
   (	"SESSION#" NUMBER, 
	"THREAD#" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"FIRST_CHANGE#" NUMBER, 
	"NEXT_CHANGE#" NUMBER, 
	"FIRST_TIME" DATE, 
	"NEXT_TIME" DATE, 
	"FILE_NAME" VARCHAR2(513), 
	"STATUS" NUMBER, 
	"INFO" VARCHAR2(32), 
	"TIMESTAMP" DATE
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_PROPS$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_PROPS$" 
   (	"VALUE$" VARCHAR2(4000), 
	"COMMENT$" VARCHAR2(4000), 
	"NAME" VARCHAR2(30), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_REFCON$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_REFCON$" 
   (	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"REFTYP" NUMBER, 
	"STABID" RAW(16), 
	"EXPCTOID" RAW(16), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_RESTART_CKPT$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_RESTART_CKPT$" 
   (	"SESSION#" NUMBER, 
	"VALID" NUMBER, 
	"CKPT_SCN" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"SESSION_NUM" NUMBER, 
	"SERIAL_NUM" NUMBER, 
	"CKPT_INFO" BLOB, 
	"FLAG" NUMBER, 
	"OFFSET" NUMBER, 
	"CLIENT_DATA" BLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_RESTART_CKPT_TXINFO$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_RESTART_CKPT_TXINFO$" 
   (	"SESSION#" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"SESSION_NUM" NUMBER, 
	"SERIAL_NUM" NUMBER, 
	"FLAG" NUMBER, 
	"START_SCN" NUMBER, 
	"EFFECTIVE_SCN" NUMBER, 
	"OFFSET" NUMBER, 
	"TX_DATA" BLOB
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_SEED$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SEED$" 
   (	"SEED_VERSION" NUMBER(22,0), 
	"GATHER_VERSION" NUMBER(22,0), 
	"SCHEMANAME" VARCHAR2(30), 
	"OBJ#" NUMBER, 
	"OBJV#" NUMBER(22,0), 
	"TABLE_NAME" VARCHAR2(30), 
	"COL_NAME" VARCHAR2(30), 
	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"SEGCOL#" NUMBER, 
	"TYPE#" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION#" NUMBER, 
	"SCALE" NUMBER, 
	"NULL$" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_SESSION$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SESSION$" 
   (	"SESSION#" NUMBER, 
	"CLIENT#" NUMBER, 
	"SESSION_NAME" VARCHAR2(128), 
	"DB_ID" NUMBER, 
	"RESETLOGS_CHANGE#" NUMBER, 
	"SESSION_ATTR" NUMBER, 
	"SESSION_ATTR_VERBOSE" VARCHAR2(400), 
	"START_SCN" NUMBER, 
	"END_SCN" NUMBER, 
	"SPILL_SCN" NUMBER, 
	"SPILL_TIME" DATE, 
	"OLDEST_SCN" NUMBER, 
	"RESUME_SCN" NUMBER, 
	"GLOBAL_DB_NAME" VARCHAR2(128) DEFAULT null, 
	"RESET_TIMESTAMP" NUMBER, 
	"BRANCH_SCN" NUMBER, 
	"VERSION" VARCHAR2(64), 
	"REDO_COMPAT" VARCHAR2(20), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER, 
	"SPARE6" DATE, 
	"SPARE7" VARCHAR2(1000), 
	"SPARE8" VARCHAR2(1000)
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_SESSION_ACTIONS$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SESSION_ACTIONS$" 
   (	"FLAGSRUNTIME" NUMBER DEFAULT 0, 
	"DROPSCN" NUMBER, 
	"MODIFYTIME" TIMESTAMP (6), 
	"DISPATCHTIME" TIMESTAMP (6), 
	"DROPTIME" TIMESTAMP (6), 
	"LCRCOUNT" NUMBER DEFAULT 0, 
	"ACTIONNAME" VARCHAR2(30), 
	"LOGMNRSESSION#" NUMBER, 
	"PROCESSROLE#" NUMBER, 
	"ACTIONTYPE#" NUMBER, 
	"FLAGSDEFINETIME" NUMBER, 
	"CREATETIME" TIMESTAMP (6), 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"THREAD#" NUMBER, 
	"STARTSCN" NUMBER, 
	"STARTSUBSCN" NUMBER, 
	"ENDSCN" NUMBER, 
	"ENDSUBSCN" NUMBER, 
	"RBASQN" NUMBER, 
	"RBABLK" NUMBER, 
	"RBABYTE" NUMBER, 
	"SESSION#" NUMBER, 
	"OBJ#" NUMBER, 
	"ATTR1" NUMBER, 
	"ATTR2" NUMBER, 
	"ATTR3" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" TIMESTAMP (6), 
	"SPARE4" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_SESSION_EVOLVE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SESSION_EVOLVE$" 
   (	"BRANCH_LEVEL" NUMBER, 
	"SESSION#" NUMBER, 
	"DB_ID" NUMBER, 
	"RESET_SCN" NUMBER, 
	"RESET_TIMESTAMP" NUMBER, 
	"PREV_RESET_SCN" NUMBER, 
	"PREV_RESET_TIMESTAMP" NUMBER, 
	"STATUS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" DATE
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_SPILL$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SPILL$" 
   (	"SESSION#" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"CHUNK" NUMBER, 
	"STARTIDX" NUMBER, 
	"ENDIDX" NUMBER, 
	"FLAG" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"SPILL_DATA" BLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_SUBCOLTYPE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_SUBCOLTYPE$" 
   (	"INTCOL#" NUMBER, 
	"TOID" RAW(16), 
	"VERSION#" NUMBER, 
	"INTCOLS" NUMBER, 
	"INTCOL#S" RAW(2000), 
	"FLAGS" NUMBER, 
	"SYNOBJ#" NUMBER, 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_TAB$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TAB$" 
   (	"TS#" NUMBER(22,0), 
	"COLS" NUMBER(22,0), 
	"PROPERTY" NUMBER(22,0), 
	"INTCOLS" NUMBER(22,0), 
	"KERNELCOLS" NUMBER(22,0), 
	"BOBJ#" NUMBER(22,0), 
	"TRIGFLAG" NUMBER(22,0), 
	"FLAGS" NUMBER(22,0), 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_TABCOMPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TABCOMPART$" 
   (	"OBJ#" NUMBER(22,0), 
	"BO#" NUMBER(22,0), 
	"PART#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_TABPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TABPART$" 
   (	"OBJ#" NUMBER(22,0), 
	"TS#" NUMBER(22,0), 
	"PART#" NUMBER, 
	"BO#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_TABSUBPART$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TABSUBPART$" 
   (	"OBJ#" NUMBER(22,0), 
	"DATAOBJ#" NUMBER(22,0), 
	"POBJ#" NUMBER(22,0), 
	"SUBPART#" NUMBER(22,0), 
	"TS#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNRT_MDDL$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "LOGMNRT_MDDL$" 
   (	"SOURCE_OBJ#" NUMBER, 
	"SOURCE_ROWID" ROWID, 
	"DEST_ROWID" ROWID
   ) ON COMMIT DELETE ROWS
--------------------------------------------------------
--  DDL for Table LOGMNR_TS$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TS$" 
   (	"TS#" NUMBER(22,0), 
	"NAME" VARCHAR2(30), 
	"OWNER#" NUMBER(22,0), 
	"BLOCKSIZE" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_TYPE$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_TYPE$" 
   (	"VERSION#" NUMBER, 
	"VERSION" VARCHAR2(30), 
	"TVOID" RAW(16), 
	"TYPECODE" NUMBER, 
	"PROPERTIES" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"METHODS" NUMBER, 
	"HIDDENMETHODS" NUMBER, 
	"SUPERTYPES" NUMBER, 
	"SUBTYPES" NUMBER, 
	"EXTERNTYPE" NUMBER, 
	"EXTERNNAME" VARCHAR2(4000), 
	"HELPERCLASSNAME" VARCHAR2(4000), 
	"LOCAL_ATTRS" NUMBER, 
	"LOCAL_METHODS" NUMBER, 
	"TYPEID" RAW(16), 
	"ROOTTOID" RAW(16), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SUPERTOID" RAW(16), 
	"HASHCODE" RAW(17), 
	"TOID" RAW(16), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGMNR_UID$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_UID$" 
   (	"LOGMNR_UID" NUMBER(22,0), 
	"SESSION#" NUMBER
   )
--------------------------------------------------------
--  DDL for Table LOGMNR_USER$
--------------------------------------------------------

  CREATE TABLE "LOGMNR_USER$" 
   (	"USER#" NUMBER(22,0), 
	"NAME" VARCHAR2(30), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$APPLY_MILESTONE
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$APPLY_MILESTONE" 
   (	"SESSION_ID" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"COMMIT_TIME" DATE, 
	"SYNCH_SCN" NUMBER, 
	"EPOCH" NUMBER, 
	"PROCESSED_SCN" NUMBER, 
	"PROCESSED_TIME" DATE, 
	"FETCHLWM_SCN" NUMBER DEFAULT (0), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$APPLY_PROGRESS
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$APPLY_PROGRESS" 
   (	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"COMMIT_TIME" DATE, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000)
   ) 
  PARTITION BY RANGE ("COMMIT_SCN") 
 (PARTITION "P0"  VALUES LESS THAN (0) )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$EDS_TABLES
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$EDS_TABLES" 
   (	"OWNER" VARCHAR2(30), 
	"TABLE_NAME" VARCHAR2(30), 
	"SHADOW_TABLE_NAME" VARCHAR2(30), 
	"BASE_TRIGGER_NAME" VARCHAR2(30), 
	"SHADOW_TRIGGER_NAME" VARCHAR2(30), 
	"DBLINK" VARCHAR2(255), 
	"FLAGS" NUMBER, 
	"STATE" VARCHAR2(255), 
	"OBJV" NUMBER, 
	"OBJ#" NUMBER, 
	"SOBJ#" NUMBER, 
	"CTIME" TIMESTAMP (6), 
	"SPARE1" NUMBER, 
	"SPARE2" VARCHAR2(255), 
	"SPARE3" NUMBER
   )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$EVENTS
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$EVENTS" 
   (	"EVENT_TIME" TIMESTAMP (6), 
	"CURRENT_SCN" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"ERRVAL" NUMBER, 
	"EVENT" VARCHAR2(2000), 
	"FULL_EVENT" CLOB, 
	"ERROR" VARCHAR2(2000), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$FLASHBACK_SCN
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$FLASHBACK_SCN" 
   (	"PRIMARY_SCN" NUMBER, 
	"PRIMARY_TIME" DATE, 
	"STANDBY_SCN" NUMBER, 
	"STANDBY_TIME" DATE, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" DATE
   )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$HISTORY
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$HISTORY" 
   (	"STREAM_SEQUENCE#" NUMBER, 
	"LMNR_SID" NUMBER, 
	"DBID" NUMBER, 
	"FIRST_CHANGE#" NUMBER, 
	"LAST_CHANGE#" NUMBER, 
	"SOURCE" NUMBER, 
	"STATUS" NUMBER, 
	"FIRST_TIME" DATE, 
	"LAST_TIME" DATE, 
	"DGNAME" VARCHAR2(255), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$PARAMETERS
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$PARAMETERS" 
   (	"NAME" VARCHAR2(30), 
	"VALUE" VARCHAR2(2000), 
	"TYPE" NUMBER, 
	"SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$PLSQL
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$PLSQL" 
   (	"SESSION_ID" NUMBER, 
	"START_FINISH" NUMBER, 
	"CALL_TEXT" CLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SCN
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$SCN" 
   (	"OBJ#" NUMBER, 
	"OBJNAME" VARCHAR2(4000), 
	"SCHEMA" VARCHAR2(30), 
	"TYPE" VARCHAR2(20), 
	"SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SKIP
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$SKIP" 
   (	"ERROR" NUMBER, 
	"STATEMENT_OPT" VARCHAR2(30), 
	"SCHEMA" VARCHAR2(30), 
	"NAME" VARCHAR2(65), 
	"USE_LIKE" NUMBER, 
	"ESC" VARCHAR2(1), 
	"PROC" VARCHAR2(98), 
	"ACTIVE" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SKIP_SUPPORT
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$SKIP_SUPPORT" 
   (	"ACTION" NUMBER, 
	"NAME" VARCHAR2(30), 
	"REG" NUMBER(*,0), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SKIP_TRANSACTION
--------------------------------------------------------

  CREATE TABLE "LOGSTDBY$SKIP_TRANSACTION" 
   (	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"ACTIVE" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table MARCAS
--------------------------------------------------------

  CREATE TABLE "MARCAS" 
   (	"ID" NUMBER(*,0), 
	"MARCA" VARCHAR2(50), 
	"MODELO" VARCHAR2(50)
   )
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_AJG
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_AJG" 
   (	"AJGID#" NUMBER, 
	"RUNID#" NUMBER, 
	"AJGDESLEN" NUMBER, 
	"AJGDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_AJG"  IS 'Anchor-join graph representation'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_BASETABLE
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_BASETABLE" 
   (	"COLLECTIONID#" NUMBER, 
	"QUERYID#" NUMBER, 
	"OWNER" VARCHAR2(30), 
	"TABLE_NAME" VARCHAR2(30), 
	"TABLE_TYPE" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_BASETABLE"  IS 'Base tables refered by a query'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_CLIQUE
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_CLIQUE" 
   (	"CLIQUEID#" NUMBER, 
	"RUNID#" NUMBER, 
	"CLIQUEDESLEN" NUMBER, 
	"CLIQUEDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER, 
	"BYTECOST" NUMBER, 
	"ROWSIZE" NUMBER, 
	"NUMROWS" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_CLIQUE"  IS 'Table for storing canonical form of Clique queries'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_ELIGIBLE" 
   (	"SUMOBJN#" NUMBER, 
	"RUNID#" NUMBER, 
	"BYTECOST" NUMBER, 
	"FLAGS" NUMBER, 
	"FREQUENCY" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_ELIGIBLE"  IS 'Summary management rewrite eligibility information'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_EXCEPTIONS
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_EXCEPTIONS" 
   (	"RUNID#" NUMBER, 
	"OWNER" VARCHAR2(30), 
	"TABLE_NAME" VARCHAR2(30), 
	"DIMENSION_NAME" VARCHAR2(30), 
	"RELATIONSHIP" VARCHAR2(11), 
	"BAD_ROWID" ROWID
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_EXCEPTIONS"  IS 'Output table for dimension validations'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_FILTER
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_FILTER" 
   (	"FILTERID#" NUMBER, 
	"SUBFILTERNUM#" NUMBER, 
	"SUBFILTERTYPE" NUMBER, 
	"STR_VALUE" VARCHAR2(1028), 
	"NUM_VALUE1" NUMBER, 
	"NUM_VALUE2" NUMBER, 
	"DATE_VALUE1" DATE, 
	"DATE_VALUE2" DATE
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_FILTER"  IS 'Table for workload filter definition'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_FILTERINSTANCE
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_FILTERINSTANCE" 
   (	"RUNID#" NUMBER, 
	"FILTERID#" NUMBER, 
	"SUBFILTERNUM#" NUMBER, 
	"SUBFILTERTYPE" NUMBER, 
	"STR_VALUE" VARCHAR2(1028), 
	"NUM_VALUE1" NUMBER, 
	"NUM_VALUE2" NUMBER, 
	"DATE_VALUE1" DATE, 
	"DATE_VALUE2" DATE
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_FILTERINSTANCE"  IS 'Table for workload filter instance definition'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_FJG
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_FJG" 
   (	"FJGID#" NUMBER, 
	"AJGID#" NUMBER, 
	"FJGDESLEN" NUMBER, 
	"FJGDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_FJG"  IS 'Representation for query join sub-graph not in AJG '
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_GC
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_GC" 
   (	"GCID#" NUMBER, 
	"FJGID#" NUMBER, 
	"GCDESLEN" NUMBER, 
	"GCDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_GC"  IS 'Group-by columns of a query'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_INFO
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_INFO" 
   (	"RUNID#" NUMBER, 
	"SEQ#" NUMBER, 
	"TYPE" NUMBER, 
	"INFOLEN" NUMBER, 
	"INFO" LONG RAW, 
	"STATUS" NUMBER, 
	"FLAG" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_INFO"  IS 'Internal table for passing information from the SQL analyzer'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_JOURNAL
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_JOURNAL" 
   (	"RUNID#" NUMBER, 
	"SEQ#" NUMBER, 
	"TIMESTAMP" DATE, 
	"FLAGS" NUMBER, 
	"NUM" NUMBER, 
	"TEXT" LONG, 
	"TEXTLEN" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_JOURNAL"  IS 'Summary advisor journal table for debugging and information'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_LEVEL
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_LEVEL" 
   (	"RUNID#" NUMBER, 
	"LEVELID#" NUMBER, 
	"DIMOBJ#" NUMBER, 
	"FLAGS" NUMBER, 
	"TBLOBJ#" NUMBER, 
	"COLUMNLIST" RAW(70), 
	"LEVELNAME" VARCHAR2(30)
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_LEVEL"  IS 'Level definition'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_LOG
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_LOG" 
   (	"RUNID#" NUMBER, 
	"FILTERID#" NUMBER, 
	"RUN_BEGIN" DATE, 
	"RUN_END" DATE, 
	"RUN_TYPE" NUMBER, 
	"UNAME" VARCHAR2(30), 
	"STATUS" NUMBER, 
	"MESSAGE" VARCHAR2(2000), 
	"COMPLETED" NUMBER, 
	"TOTAL" NUMBER, 
	"ERROR_CODE" VARCHAR2(20)
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_LOG"  IS 'Log all calls to summary advisory functions'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_OUTPUT
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_OUTPUT" 
   (	"RUNID#" NUMBER, 
	"OUTPUT_TYPE" NUMBER, 
	"RANK#" NUMBER, 
	"ACTION_TYPE" VARCHAR2(6), 
	"SUMMARY_OWNER" VARCHAR2(30), 
	"SUMMARY_NAME" VARCHAR2(30), 
	"GROUP_BY_COLUMNS" VARCHAR2(2000), 
	"WHERE_CLAUSE" VARCHAR2(2000), 
	"FROM_CLAUSE" VARCHAR2(2000), 
	"MEASURES_LIST" VARCHAR2(2000), 
	"FACT_TABLES" VARCHAR2(1000), 
	"GROUPING_LEVELS" VARCHAR2(2000), 
	"QUERYLEN" NUMBER, 
	"QUERY_TEXT" LONG, 
	"STORAGE_IN_BYTES" NUMBER, 
	"PCT_PERFORMANCE_GAIN" NUMBER, 
	"FREQUENCY" NUMBER, 
	"CUMULATIVE_BENEFIT" NUMBER, 
	"BENEFIT_TO_COST_RATIO" NUMBER, 
	"VALIDATED" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_OUTPUT"  IS 'Output table for summary recommendations and evaluations'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_PARAMETERS
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_PARAMETERS" 
   (	"PARAMETER_NAME" VARCHAR2(30), 
	"PARAMETER_TYPE" NUMBER, 
	"STRING_VALUE" VARCHAR2(30), 
	"DATE_VALUE" DATE, 
	"NUMERICAL_VALUE" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_PARAMETERS"  IS 'Summary advisor tuning parameters'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_PLAN
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_PLAN" 
   (	"STATEMENT_ID" VARCHAR2(30), 
	"TIMESTAMP" DATE, 
	"REMARKS" VARCHAR2(80), 
	"OPERATION" VARCHAR2(30), 
	"OPTIONS" VARCHAR2(255), 
	"OBJECT_NODE" VARCHAR2(128), 
	"OBJECT_OWNER" VARCHAR2(30), 
	"OBJECT_NAME" VARCHAR2(30), 
	"OBJECT_INSTANCE" NUMBER(*,0), 
	"OBJECT_TYPE" VARCHAR2(30), 
	"OPTIMIZER" VARCHAR2(255), 
	"SEARCH_COLUMNS" NUMBER, 
	"ID" NUMBER(*,0), 
	"PARENT_ID" NUMBER(*,0), 
	"POSITION" NUMBER(*,0), 
	"COST" NUMBER(*,0), 
	"CARDINALITY" NUMBER(*,0), 
	"BYTES" NUMBER(*,0), 
	"OTHER_TAG" VARCHAR2(255), 
	"PARTITION_START" VARCHAR2(255), 
	"PARTITION_STOP" VARCHAR2(255), 
	"PARTITION_ID" NUMBER(*,0), 
	"OTHER" LONG, 
	"DISTRIBUTION" VARCHAR2(30), 
	"CPU_COST" NUMBER(*,0), 
	"IO_COST" NUMBER(*,0), 
	"TEMP_SPACE" NUMBER(*,0)
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_PLAN"  IS 'Private plan table for estimate_mview_size operations'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_PRETTY
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_PRETTY" 
   (	"QUERYID#" NUMBER, 
	"SQL_TEXT" LONG
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_PRETTY"  IS 'Table for sql parsing'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_ROLLUP
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_ROLLUP" 
   (	"RUNID#" NUMBER, 
	"CLEVELID#" NUMBER, 
	"PLEVELID#" NUMBER, 
	"FLAGS" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_ROLLUP"  IS 'Each row repesents either a functional dependency or join-key relationship'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_SQLDEPEND
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_SQLDEPEND" 
   (	"COLLECTIONID#" NUMBER, 
	"INST_ID" NUMBER, 
	"FROM_ADDRESS" RAW(16), 
	"FROM_HASH" NUMBER, 
	"TO_OWNER" VARCHAR2(64), 
	"TO_NAME" VARCHAR2(1000), 
	"TO_TYPE" NUMBER, 
	"CARDINALITY" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_SQLDEPEND"  IS 'Temporary table for workload collections'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_TEMP
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_TEMP" 
   (	"ID#" NUMBER, 
	"SEQ#" NUMBER, 
	"TEXT" LONG
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_TEMP"  IS 'Table for temporary data'
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_WORKLOAD
--------------------------------------------------------

  CREATE TABLE "MVIEW$_ADV_WORKLOAD" 
   (	"QUERYID#" NUMBER, 
	"COLLECTIONID#" NUMBER, 
	"COLLECTTIME" DATE, 
	"APPLICATION" VARCHAR2(64), 
	"CARDINALITY" NUMBER, 
	"RESULTSIZE" NUMBER, 
	"UNAME" VARCHAR2(30), 
	"QDATE" DATE, 
	"PRIORITY" NUMBER, 
	"EXEC_TIME" NUMBER, 
	"SQL_TEXT" LONG, 
	"SQL_TEXTLEN" NUMBER, 
	"SQL_HASH" NUMBER, 
	"SQL_ADDR" RAW(16), 
	"FREQUENCY" NUMBER
   ) 

   COMMENT ON TABLE "MVIEW$_ADV_WORKLOAD"  IS 'Shared workload repository for DBA users of summary advisor'
--------------------------------------------------------
--  DDL for Table OL$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "OL$" 
   (	"OL_NAME" VARCHAR2(30), 
	"SQL_TEXT" LONG, 
	"TEXTLEN" NUMBER, 
	"SIGNATURE" RAW(16), 
	"HASH_VALUE" NUMBER, 
	"HASH_VALUE2" NUMBER, 
	"CATEGORY" VARCHAR2(30), 
	"VERSION" VARCHAR2(64), 
	"CREATOR" VARCHAR2(30), 
	"TIMESTAMP" DATE, 
	"FLAGS" NUMBER, 
	"HINTCOUNT" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" VARCHAR2(1000)
   ) ON COMMIT PRESERVE ROWS
--------------------------------------------------------
--  DDL for Table OL$HINTS
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "OL$HINTS" 
   (	"OL_NAME" VARCHAR2(30), 
	"HINT#" NUMBER, 
	"CATEGORY" VARCHAR2(30), 
	"HINT_TYPE" NUMBER, 
	"HINT_TEXT" VARCHAR2(512), 
	"STAGE#" NUMBER, 
	"NODE#" NUMBER, 
	"TABLE_NAME" VARCHAR2(30), 
	"TABLE_TIN" NUMBER, 
	"TABLE_POS" NUMBER, 
	"REF_ID" NUMBER, 
	"USER_TABLE_NAME" VARCHAR2(64), 
	"COST" FLOAT(126), 
	"CARDINALITY" FLOAT(126), 
	"BYTES" FLOAT(126), 
	"HINT_TEXTOFF" NUMBER, 
	"HINT_TEXTLEN" NUMBER, 
	"JOIN_PRED" VARCHAR2(2000), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"HINT_STRING" CLOB
   ) ON COMMIT PRESERVE ROWS
--------------------------------------------------------
--  DDL for Table OL$NODES
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "OL$NODES" 
   (	"OL_NAME" VARCHAR2(30), 
	"CATEGORY" VARCHAR2(30), 
	"NODE_ID" NUMBER, 
	"PARENT_ID" NUMBER, 
	"NODE_TYPE" NUMBER, 
	"NODE_TEXTLEN" NUMBER, 
	"NODE_TEXTOFF" NUMBER, 
	"NODE_NAME" VARCHAR2(64)
   ) ON COMMIT PRESERVE ROWS
--------------------------------------------------------
--  DDL for Table REPCAT$_AUDIT_ATTRIBUTE
--------------------------------------------------------

  CREATE TABLE "REPCAT$_AUDIT_ATTRIBUTE" 
   (	"ATTRIBUTE" VARCHAR2(30), 
	"DATA_TYPE_ID" NUMBER(*,0), 
	"DATA_LENGTH" NUMBER(*,0), 
	"SOURCE" VARCHAR2(92)
   ) 

   COMMENT ON COLUMN "REPCAT$_AUDIT_ATTRIBUTE"."ATTRIBUTE" IS 'Description of the attribute'
   COMMENT ON COLUMN "REPCAT$_AUDIT_ATTRIBUTE"."DATA_TYPE_ID" IS 'Datatype of the attribute value'
   COMMENT ON COLUMN "REPCAT$_AUDIT_ATTRIBUTE"."DATA_LENGTH" IS 'Length of the attribute value in byte'
   COMMENT ON COLUMN "REPCAT$_AUDIT_ATTRIBUTE"."SOURCE" IS 'Name of the function which returns the attribute value'
   COMMENT ON TABLE "REPCAT$_AUDIT_ATTRIBUTE"  IS 'Information about attributes automatically maintained for replication'
--------------------------------------------------------
--  DDL for Table REPCAT$_AUDIT_COLUMN
--------------------------------------------------------

  CREATE TABLE "REPCAT$_AUDIT_COLUMN" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"COLUMN_NAME" VARCHAR2(30), 
	"BASE_SNAME" VARCHAR2(30), 
	"BASE_ONAME" VARCHAR2(30), 
	"BASE_CONFLICT_TYPE_ID" NUMBER(*,0), 
	"BASE_REFERENCE_NAME" VARCHAR2(30), 
	"ATTRIBUTE" VARCHAR2(30)
   ) 

   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."SNAME" IS 'Owner of the shadow table'
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."ONAME" IS 'Name of the shadow table'
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."COLUMN_NAME" IS 'Name of the column in the shadow table'
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."BASE_SNAME" IS 'Owner of replicated table'
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."BASE_ONAME" IS 'Name of the replicated table'
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."BASE_CONFLICT_TYPE_ID" IS 'Type of conflict'
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."BASE_REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name'
   COMMENT ON COLUMN "REPCAT$_AUDIT_COLUMN"."ATTRIBUTE" IS 'Description of the attribute'
   COMMENT ON TABLE "REPCAT$_AUDIT_COLUMN"  IS 'Information about columns in all shadow tables for all replicated tables in the database'
--------------------------------------------------------
--  DDL for Table REPCAT$_COLUMN_GROUP
--------------------------------------------------------

  CREATE TABLE "REPCAT$_COLUMN_GROUP" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"GROUP_NAME" VARCHAR2(30), 
	"GROUP_COMMENT" VARCHAR2(80)
   ) 

   COMMENT ON COLUMN "REPCAT$_COLUMN_GROUP"."SNAME" IS 'Owner of replicated object'
   COMMENT ON COLUMN "REPCAT$_COLUMN_GROUP"."ONAME" IS 'Name of the replicated object'
   COMMENT ON COLUMN "REPCAT$_COLUMN_GROUP"."GROUP_NAME" IS 'Name of the column group'
   COMMENT ON COLUMN "REPCAT$_COLUMN_GROUP"."GROUP_COMMENT" IS 'Description of the column group'
   COMMENT ON TABLE "REPCAT$_COLUMN_GROUP"  IS 'All column groups of replicated tables in the database'
--------------------------------------------------------
--  DDL for Table REPCAT$_CONFLICT
--------------------------------------------------------

  CREATE TABLE "REPCAT$_CONFLICT" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"CONFLICT_TYPE_ID" NUMBER(*,0), 
	"REFERENCE_NAME" VARCHAR2(30)
   ) 

   COMMENT ON COLUMN "REPCAT$_CONFLICT"."SNAME" IS 'Owner of replicated object'
   COMMENT ON COLUMN "REPCAT$_CONFLICT"."ONAME" IS 'Name of the replicated object'
   COMMENT ON COLUMN "REPCAT$_CONFLICT"."CONFLICT_TYPE_ID" IS 'Type of conflict'
   COMMENT ON COLUMN "REPCAT$_CONFLICT"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name'
   COMMENT ON TABLE "REPCAT$_CONFLICT"  IS 'All conflicts for which users have specified resolutions in the database'
--------------------------------------------------------
--  DDL for Table REPCAT$_DDL
--------------------------------------------------------

  CREATE TABLE "REPCAT$_DDL" 
   (	"LOG_ID" NUMBER, 
	"SOURCE" VARCHAR2(128), 
	"ROLE" VARCHAR2(1), 
	"MASTER" VARCHAR2(128), 
	"LINE" NUMBER(*,0), 
	"TEXT" VARCHAR2(2000), 
	"DDL_NUM" NUMBER(*,0) DEFAULT 1       -- order of ddls to execute

   ) 

   COMMENT ON COLUMN "REPCAT$_DDL"."LOG_ID" IS 'Identifying number of the repcat log record'
   COMMENT ON COLUMN "REPCAT$_DDL"."SOURCE" IS 'Name of the database at which the request originated'
   COMMENT ON COLUMN "REPCAT$_DDL"."ROLE" IS 'Is this database the masterdef for the request'
   COMMENT ON COLUMN "REPCAT$_DDL"."MASTER" IS 'Name of the database that processes this request'
   COMMENT ON COLUMN "REPCAT$_DDL"."LINE" IS 'Ordering of records within a single request'
   COMMENT ON COLUMN "REPCAT$_DDL"."TEXT" IS 'Portion of an argument'
   COMMENT ON COLUMN "REPCAT$_DDL"."DDL_NUM" IS 'Ordering of DDLs to execute'
   COMMENT ON TABLE "REPCAT$_DDL"  IS 'Arguments that do not fit in a single repcat log record'
--------------------------------------------------------
--  DDL for Table REPCAT$_EXCEPTIONS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_EXCEPTIONS" 
   (	"EXCEPTION_ID" NUMBER, 
	"USER_NAME" VARCHAR2(30), 
	"REQUEST" CLOB, 
	"JOB" NUMBER, 
	"ERROR_DATE" DATE, 
	"ERROR_NUMBER" NUMBER, 
	"ERROR_MESSAGE" VARCHAR2(4000), 
	"LINE_NUMBER" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."EXCEPTION_ID" IS 'Internal primary key of the exceptions table.'
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."USER_NAME" IS 'User name of user submitting the exception.'
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."REQUEST" IS 'Originating request containing the exception.'
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."JOB" IS 'Originating job containing the exception.'
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."ERROR_DATE" IS 'Date of occurance for the exception.'
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."ERROR_NUMBER" IS 'Error number generating the exception.'
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."ERROR_MESSAGE" IS 'Error message associated with the error generating the exception.'
   COMMENT ON COLUMN "REPCAT$_EXCEPTIONS"."LINE_NUMBER" IS 'Line number of the exception.'
   COMMENT ON TABLE "REPCAT$_EXCEPTIONS"  IS 'Repcat processing exceptions table.'
--------------------------------------------------------
--  DDL for Table REPCAT$_EXTENSION
--------------------------------------------------------

  CREATE TABLE "REPCAT$_EXTENSION" 
   (	"EXTENSION_ID" RAW(16), 
	"EXTENSION_CODE" NUMBER, 
	"MASTERDEF" VARCHAR2(128), 
	"EXPORT_REQUIRED" VARCHAR2(1), 
	"REPCATLOG_ID" NUMBER, 
	"EXTENSION_STATUS" NUMBER, 
	"FLASHBACK_SCN" NUMBER, 
	"PUSH_TO_MDEF" VARCHAR2(1), 
	"PUSH_TO_NEW" VARCHAR2(1), 
	"PERCENTAGE_FOR_CATCHUP_MDEF" NUMBER, 
	"CYCLE_SECONDS_MDEF" NUMBER, 
	"PERCENTAGE_FOR_CATCHUP_NEW" NUMBER, 
	"CYCLE_SECONDS_NEW" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_EXTENSION"."EXTENSION_ID" IS 'Globally unique identifier for replication extension'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."EXTENSION_CODE" IS 'Kind of replication extension'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."MASTERDEF" IS 'Master definition site for replication extension'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."EXPORT_REQUIRED" IS 'YES if this extension requires an export, and NO if no export is required'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."REPCATLOG_ID" IS 'Identifier of repcatlog records related to replication extension'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."EXTENSION_STATUS" IS 'Status of replication extension'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."FLASHBACK_SCN" IS 'Flashback_scn for export or change-based recovery for replication extension'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."PUSH_TO_MDEF" IS 'YES if existing masters partially push to masterdef, NO if no pushing'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."PUSH_TO_NEW" IS 'YES if existing masters partially push to new masters, NO if no pushing'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."PERCENTAGE_FOR_CATCHUP_MDEF" IS 'Fraction of push to masterdef cycle devoted to catching up'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."CYCLE_SECONDS_MDEF" IS 'Length of push to masterdef cycle when catching up'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."PERCENTAGE_FOR_CATCHUP_NEW" IS 'Fraction of push to new masters cycle devoted to catching up'
   COMMENT ON COLUMN "REPCAT$_EXTENSION"."CYCLE_SECONDS_NEW" IS 'Length of push to new masters cycle when catching up'
   COMMENT ON TABLE "REPCAT$_EXTENSION"  IS 'Information about replication extension requests'
--------------------------------------------------------
--  DDL for Table REPCAT$_FLAVOR_OBJECTS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_FLAVOR_OBJECTS" 
   (	"FLAVOR_ID" NUMBER, 
	"GOWNER" VARCHAR2(30) DEFAULT 'PUBLIC', 
	"GNAME" VARCHAR2(30), 
	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"TYPE" NUMBER, 
	"VERSION#" NUMBER, 
	"HASHCODE" RAW(17), 
	"COLUMNS_PRESENT" RAW(125)
   ) 

   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."FLAVOR_ID" IS 'Flavor identifier'
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."GOWNER" IS 'Owner of the object group containing object'
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."GNAME" IS 'Object group containing object'
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."SNAME" IS 'Schema containing object'
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."ONAME" IS 'Name of object'
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."TYPE" IS 'Object type'
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."VERSION#" IS 'Version# of a user-defined type'
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."HASHCODE" IS 'Hashcode of a user-defined type'
   COMMENT ON COLUMN "REPCAT$_FLAVOR_OBJECTS"."COLUMNS_PRESENT" IS 'For tables, encoded mapping of columns present'
   COMMENT ON TABLE "REPCAT$_FLAVOR_OBJECTS"  IS 'Replicated objects in flavors'
--------------------------------------------------------
--  DDL for Table REPCAT$_FLAVORS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_FLAVORS" 
   (	"FLAVOR_ID" NUMBER, 
	"GOWNER" VARCHAR2(30) DEFAULT 'PUBLIC', 
	"GNAME" VARCHAR2(30), 
	"FNAME" VARCHAR2(30), 
	"CREATION_DATE" DATE DEFAULT SYSDATE, 
	"CREATED_BY" NUMBER DEFAULT UID, 
	"PUBLISHED" VARCHAR2(1) DEFAULT 'N'
   ) 

   COMMENT ON COLUMN "REPCAT$_FLAVORS"."FLAVOR_ID" IS 'Flavor identifier, unique within object group'
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."GOWNER" IS 'Owner of the object group'
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."GNAME" IS 'Name of the object group'
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."FNAME" IS 'Name of the flavor'
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."CREATION_DATE" IS 'Date on which the flavor was created'
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."CREATED_BY" IS 'Identifier of user that created the flavor'
   COMMENT ON COLUMN "REPCAT$_FLAVORS"."PUBLISHED" IS 'Indicates whether flavor is published (Y/N) or obsolete (O)'
   COMMENT ON TABLE "REPCAT$_FLAVORS"  IS 'Flavors defined for replicated object groups'
--------------------------------------------------------
--  DDL for Table REPCAT$_GENERATED
--------------------------------------------------------

  CREATE TABLE "REPCAT$_GENERATED" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"TYPE" NUMBER(*,0), 
	"REASON" NUMBER, 
	"BASE_SNAME" VARCHAR2(30), 
	"BASE_ONAME" VARCHAR2(30), 
	"BASE_TYPE" NUMBER(*,0), 
	"PACKAGE_PREFIX" VARCHAR2(30), 
	"PROCEDURE_PREFIX" VARCHAR2(30), 
	"DISTRIBUTED" VARCHAR2(1)
   ) 

   COMMENT ON COLUMN "REPCAT$_GENERATED"."SNAME" IS 'Schema containing the generated object'
   COMMENT ON COLUMN "REPCAT$_GENERATED"."ONAME" IS 'Name of the generated object'
   COMMENT ON COLUMN "REPCAT$_GENERATED"."TYPE" IS 'Type of the generated object'
   COMMENT ON COLUMN "REPCAT$_GENERATED"."REASON" IS 'Reason the object was generated'
   COMMENT ON COLUMN "REPCAT$_GENERATED"."BASE_SNAME" IS 'Name of the object''s owner'
   COMMENT ON COLUMN "REPCAT$_GENERATED"."BASE_ONAME" IS 'Name of the object'
   COMMENT ON COLUMN "REPCAT$_GENERATED"."BASE_TYPE" IS 'Type of the object'
   COMMENT ON COLUMN "REPCAT$_GENERATED"."PACKAGE_PREFIX" IS 'Prefix for package wrapper'
   COMMENT ON COLUMN "REPCAT$_GENERATED"."PROCEDURE_PREFIX" IS 'Procedure prefix for package wrapper or procedure wrapper'
   COMMENT ON COLUMN "REPCAT$_GENERATED"."DISTRIBUTED" IS 'Is the generated object separately generated at each master'
   COMMENT ON TABLE "REPCAT$_GENERATED"  IS 'Objects generated to support replication'
--------------------------------------------------------
--  DDL for Table REPCAT$_GROUPED_COLUMN
--------------------------------------------------------

  CREATE TABLE "REPCAT$_GROUPED_COLUMN" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"GROUP_NAME" VARCHAR2(30), 
	"COLUMN_NAME" VARCHAR2(30), 
	"POS" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_GROUPED_COLUMN"."SNAME" IS 'Owner of replicated object'
   COMMENT ON COLUMN "REPCAT$_GROUPED_COLUMN"."ONAME" IS 'Name of the replicated object'
   COMMENT ON COLUMN "REPCAT$_GROUPED_COLUMN"."GROUP_NAME" IS 'Name of the column group'
   COMMENT ON COLUMN "REPCAT$_GROUPED_COLUMN"."COLUMN_NAME" IS 'Name of the column in the column group'
   COMMENT ON COLUMN "REPCAT$_GROUPED_COLUMN"."POS" IS 'Position of a column or an attribute in the table'
   COMMENT ON TABLE "REPCAT$_GROUPED_COLUMN"  IS 'Columns in all column groups of replicated tables in the database'
--------------------------------------------------------
--  DDL for Table REPCAT$_INSTANTIATION_DDL
--------------------------------------------------------

  CREATE TABLE "REPCAT$_INSTANTIATION_DDL" 
   (	"REFRESH_TEMPLATE_ID" NUMBER, 
	"DDL_TEXT" CLOB, 
	"DDL_NUM" NUMBER, 
	"PHASE" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_INSTANTIATION_DDL"."REFRESH_TEMPLATE_ID" IS 'Primary key of template containing supplementary DDL.'
   COMMENT ON COLUMN "REPCAT$_INSTANTIATION_DDL"."DDL_TEXT" IS 'Supplementary DDL string.'
   COMMENT ON COLUMN "REPCAT$_INSTANTIATION_DDL"."DDL_NUM" IS 'Column for ordering of supplementary DDL.'
   COMMENT ON COLUMN "REPCAT$_INSTANTIATION_DDL"."PHASE" IS 'Phase to execute the DDL string.'
   COMMENT ON TABLE "REPCAT$_INSTANTIATION_DDL"  IS 'Table containing supplementary DDL to be executed during instantiation.'
--------------------------------------------------------
--  DDL for Table REPCAT$_KEY_COLUMNS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_KEY_COLUMNS" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"TYPE" NUMBER(*,0), 
	"COL" VARCHAR2(30)
   ) 

   COMMENT ON COLUMN "REPCAT$_KEY_COLUMNS"."SNAME" IS 'Schema containing table'
   COMMENT ON COLUMN "REPCAT$_KEY_COLUMNS"."ONAME" IS 'Name of the table'
   COMMENT ON COLUMN "REPCAT$_KEY_COLUMNS"."TYPE" IS 'Type identifier'
   COMMENT ON COLUMN "REPCAT$_KEY_COLUMNS"."COL" IS 'Column in the table'
   COMMENT ON TABLE "REPCAT$_KEY_COLUMNS"  IS 'Primary columns for a table using column-level replication'
--------------------------------------------------------
--  DDL for Table REPCAT$_OBJECT_PARMS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_OBJECT_PARMS" 
   (	"TEMPLATE_PARAMETER_ID" NUMBER, 
	"TEMPLATE_OBJECT_ID" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_OBJECT_PARMS"."TEMPLATE_PARAMETER_ID" IS 'Primary key of template parameter.'
   COMMENT ON COLUMN "REPCAT$_OBJECT_PARMS"."TEMPLATE_OBJECT_ID" IS 'Primary key of object using the paramter.'
--------------------------------------------------------
--  DDL for Table REPCAT$_OBJECT_TYPES
--------------------------------------------------------

  CREATE TABLE "REPCAT$_OBJECT_TYPES" 
   (	"OBJECT_TYPE_ID" NUMBER, 
	"OBJECT_TYPE_NAME" VARCHAR2(200), 
	"FLAGS" RAW(255), 
	"SPARE1" VARCHAR2(4000)
   ) 

   COMMENT ON COLUMN "REPCAT$_OBJECT_TYPES"."OBJECT_TYPE_ID" IS 'Internal primary key of the template object types table.'
   COMMENT ON COLUMN "REPCAT$_OBJECT_TYPES"."OBJECT_TYPE_NAME" IS 'Descriptive name for the object type.'
   COMMENT ON COLUMN "REPCAT$_OBJECT_TYPES"."FLAGS" IS 'Internal flags for object type processing.'
   COMMENT ON COLUMN "REPCAT$_OBJECT_TYPES"."SPARE1" IS 'Reserved for future use.'
   COMMENT ON TABLE "REPCAT$_OBJECT_TYPES"  IS 'Internal table for template object types.'
--------------------------------------------------------
--  DDL for Table REPCAT$_PARAMETER_COLUMN
--------------------------------------------------------

  CREATE TABLE "REPCAT$_PARAMETER_COLUMN" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"CONFLICT_TYPE_ID" NUMBER(*,0), 
	"REFERENCE_NAME" VARCHAR2(30), 
	"SEQUENCE_NO" NUMBER, 
	"PARAMETER_TABLE_NAME" VARCHAR2(30), 
	"PARAMETER_COLUMN_NAME" VARCHAR2(4000), 
	"PARAMETER_SEQUENCE_NO" NUMBER, 
	"COLUMN_POS" NUMBER, 
	"ATTRIBUTE_SEQUENCE_NO" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."SNAME" IS 'Owner of replicated object'
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."ONAME" IS 'Name of the replicated object'
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."CONFLICT_TYPE_ID" IS 'Type of conflict'
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name'
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."SEQUENCE_NO" IS 'Ordering on resolution'
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."PARAMETER_TABLE_NAME" IS 'Name of the table to which the parameter column belongs'
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."PARAMETER_COLUMN_NAME" IS 'Name of the parameter column used for resolving the conflict'
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."PARAMETER_SEQUENCE_NO" IS 'Ordering on parameter column'
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."COLUMN_POS" IS 'Column position of an attribute or a column'
   COMMENT ON COLUMN "REPCAT$_PARAMETER_COLUMN"."ATTRIBUTE_SEQUENCE_NO" IS 'Sequence number for an attribute of an ADT/pkREF column or a scalar column'
   COMMENT ON TABLE "REPCAT$_PARAMETER_COLUMN"  IS 'All columns used for resolving conflicts in the database'
--------------------------------------------------------
--  DDL for Table REPCAT$_PRIORITY
--------------------------------------------------------

  CREATE TABLE "REPCAT$_PRIORITY" 
   (	"SNAME" VARCHAR2(30), 
	"PRIORITY_GROUP" VARCHAR2(30), 
	"PRIORITY" NUMBER, 
	"RAW_VALUE" RAW(2000), 
	"CHAR_VALUE" CHAR(255), 
	"NUMBER_VALUE" NUMBER, 
	"DATE_VALUE" DATE, 
	"VARCHAR2_VALUE" VARCHAR2(4000), 
	"NCHAR_VALUE" NCHAR(500), 
	"NVARCHAR2_VALUE" NVARCHAR2(1000), 
	"LARGE_CHAR_VALUE" CHAR(2000)
   ) 

   COMMENT ON COLUMN "REPCAT$_PRIORITY"."SNAME" IS 'Name of the replicated object group'
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."PRIORITY_GROUP" IS 'Name of the priority group'
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."PRIORITY" IS 'Priority of the value'
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."RAW_VALUE" IS 'Raw value'
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."CHAR_VALUE" IS 'Blank-padded character string'
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."NUMBER_VALUE" IS 'Numeric value'
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."DATE_VALUE" IS 'Date value'
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."VARCHAR2_VALUE" IS 'Character string'
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."NCHAR_VALUE" IS 'NCHAR string'
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."NVARCHAR2_VALUE" IS 'NVARCHAR2 string'
   COMMENT ON COLUMN "REPCAT$_PRIORITY"."LARGE_CHAR_VALUE" IS 'Blank-padded character string over 255 characters'
   COMMENT ON TABLE "REPCAT$_PRIORITY"  IS 'Values and their corresponding priorities in all priority groups in the database'
--------------------------------------------------------
--  DDL for Table REPCAT$_PRIORITY_GROUP
--------------------------------------------------------

  CREATE TABLE "REPCAT$_PRIORITY_GROUP" 
   (	"SNAME" VARCHAR2(30), 
	"PRIORITY_GROUP" VARCHAR2(30), 
	"DATA_TYPE_ID" NUMBER(*,0), 
	"FIXED_DATA_LENGTH" NUMBER(*,0), 
	"PRIORITY_COMMENT" VARCHAR2(80)
   ) 

   COMMENT ON COLUMN "REPCAT$_PRIORITY_GROUP"."SNAME" IS 'Name of the replicated object group'
   COMMENT ON COLUMN "REPCAT$_PRIORITY_GROUP"."PRIORITY_GROUP" IS 'Name of the priority group'
   COMMENT ON COLUMN "REPCAT$_PRIORITY_GROUP"."DATA_TYPE_ID" IS 'Datatype of the value in the priority group'
   COMMENT ON COLUMN "REPCAT$_PRIORITY_GROUP"."FIXED_DATA_LENGTH" IS 'Length of the value in bytes if the datatype is CHAR'
   COMMENT ON COLUMN "REPCAT$_PRIORITY_GROUP"."PRIORITY_COMMENT" IS 'Description of the priority group'
   COMMENT ON TABLE "REPCAT$_PRIORITY_GROUP"  IS 'Information about all priority groups in the database'
--------------------------------------------------------
--  DDL for Table REPCAT$_REFRESH_TEMPLATES
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REFRESH_TEMPLATES" 
   (	"REFRESH_TEMPLATE_ID" NUMBER, 
	"OWNER" VARCHAR2(30), 
	"REFRESH_GROUP_NAME" VARCHAR2(30), 
	"REFRESH_TEMPLATE_NAME" VARCHAR2(30), 
	"TEMPLATE_COMMENT" VARCHAR2(2000), 
	"PUBLIC_TEMPLATE" VARCHAR2(1), 
	"LAST_MODIFIED" DATE, 
	"MODIFIED_BY" NUMBER, 
	"CREATION_DATE" DATE, 
	"CREATED_BY" NUMBER, 
	"REFRESH_GROUP_ID" NUMBER DEFAULT 0, 
	"TEMPLATE_TYPE_ID" NUMBER DEFAULT 1, 
	"TEMPLATE_STATUS_ID" NUMBER DEFAULT 0, 
	"FLAGS" RAW(255), 
	"SPARE1" VARCHAR2(4000)
   ) 

   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."OWNER" IS 'Owner of the refresh group template.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."REFRESH_GROUP_NAME" IS 'Name of the refresh group to create during instantiation.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."REFRESH_TEMPLATE_NAME" IS 'Name of the refresh group template.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."TEMPLATE_COMMENT" IS 'Optional comment field for the refresh group template.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."PUBLIC_TEMPLATE" IS 'Flag specifying public template or private template.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."LAST_MODIFIED" IS 'Date the row was last modified.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."MODIFIED_BY" IS 'User id of the user that modified the row.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."CREATION_DATE" IS 'Date the row was created.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."CREATED_BY" IS 'User id of the user that created the row.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."REFRESH_GROUP_ID" IS 'Internal primary key to default refresh group for the template.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."TEMPLATE_TYPE_ID" IS 'Internal primary key to the template types.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."TEMPLATE_STATUS_ID" IS 'Internal primary key to the template status table.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."FLAGS" IS 'Internal flags for the template.'
   COMMENT ON COLUMN "REPCAT$_REFRESH_TEMPLATES"."SPARE1" IS 'Reserved for future use.'
   COMMENT ON TABLE "REPCAT$_REFRESH_TEMPLATES"  IS 'Primary table containing deployment template information.'
--------------------------------------------------------
--  DDL for Table REPCAT$_REPCAT
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPCAT" 
   (	"GOWNER" VARCHAR2(30) DEFAULT 'PUBLIC', 
	"SNAME" VARCHAR2(30), 
	"MASTER" VARCHAR2(1), 
	"STATUS" NUMBER(*,0), 
	"SCHEMA_COMMENT" VARCHAR2(80), 
	"FLAVOR_ID" NUMBER, 
	"FLAG" RAW(4) DEFAULT '00000000'
   ) 

   COMMENT ON COLUMN "REPCAT$_REPCAT"."GOWNER" IS 'Owner of the object group'
   COMMENT ON COLUMN "REPCAT$_REPCAT"."SNAME" IS 'Name of the replicated object group'
   COMMENT ON COLUMN "REPCAT$_REPCAT"."MASTER" IS 'Is the site a master site for the replicated object group'
   COMMENT ON COLUMN "REPCAT$_REPCAT"."STATUS" IS 'If the site is a master, the master''s status'
   COMMENT ON COLUMN "REPCAT$_REPCAT"."SCHEMA_COMMENT" IS 'Description of the replicated object group'
   COMMENT ON COLUMN "REPCAT$_REPCAT"."FLAVOR_ID" IS 'Flavor identifier'
   COMMENT ON COLUMN "REPCAT$_REPCAT"."FLAG" IS 'Miscellaneous repgroup info'
   COMMENT ON TABLE "REPCAT$_REPCAT"  IS 'Information about all replicated object groups'
--------------------------------------------------------
--  DDL for Table REPCAT$_REPCATLOG
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPCATLOG" 
   (	"VERSION" NUMBER, 
	"ID" NUMBER, 
	"SOURCE" VARCHAR2(128), 
	"USERID" VARCHAR2(30), 
	"TIMESTAMP" DATE, 
	"ROLE" VARCHAR2(1), 
	"MASTER" VARCHAR2(128), 
	"SNAME" VARCHAR2(30), 
	"REQUEST" NUMBER(*,0), 
	"ONAME" VARCHAR2(30), 
	"TYPE" NUMBER(*,0), 
	"A_COMMENT" VARCHAR2(2000), 
	"BOOL_ARG" VARCHAR2(1), 
	"ANO_BOOL_ARG" VARCHAR2(1), 
	"INT_ARG" NUMBER(*,0), 
	"ANO_INT_ARG" NUMBER(*,0), 
	"LINES" NUMBER(*,0), 
	"STATUS" NUMBER(*,0), 
	"MESSAGE" VARCHAR2(200), 
	"ERRNUM" NUMBER, 
	"GNAME" VARCHAR2(30)
   ) 

   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."VERSION" IS 'Version of the repcat log record'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ID" IS 'Identifying number of repcat log record'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."SOURCE" IS 'Name of the database at which the request originated'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."USERID" IS 'Name of the user who submitted the request'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."TIMESTAMP" IS 'When the request was submitted'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ROLE" IS 'Is this database the masterdef for the request'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."MASTER" IS 'Name of the database that processes this request$_ddl'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."SNAME" IS 'Schema of replicated object'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."REQUEST" IS 'Name of the requested operation'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ONAME" IS 'Replicated object name, if applicable'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."TYPE" IS 'Type of replicated object, if applicable'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."A_COMMENT" IS 'Textual argument used for comments'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."BOOL_ARG" IS 'Boolean argument'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ANO_BOOL_ARG" IS 'Another Boolean argument'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."INT_ARG" IS 'Integer argument'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ANO_INT_ARG" IS 'Another integer argument'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."LINES" IS 'The number of rows in system.repcat$_ddl at the processing site'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."STATUS" IS 'Status of the request at this database'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."MESSAGE" IS 'Error message associated with processing the request'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."ERRNUM" IS 'Oracle error number associated with processing the request'
   COMMENT ON COLUMN "REPCAT$_REPCATLOG"."GNAME" IS 'Name of the replicated object group'
   COMMENT ON TABLE "REPCAT$_REPCATLOG"  IS 'Information about asynchronous administration requests'
--------------------------------------------------------
--  DDL for Table REPCAT$_REPCOLUMN
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPCOLUMN" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"TYPE" NUMBER(*,0), 
	"CNAME" VARCHAR2(30), 
	"LCNAME" VARCHAR2(4000), 
	"TOID" RAW(16), 
	"VERSION#" NUMBER, 
	"HASHCODE" RAW(17), 
	"CTYPE_NAME" VARCHAR2(30), 
	"CTYPE_OWNER" VARCHAR2(30), 
	"ID" NUMBER, 
	"POS" NUMBER, 
	"TOP" VARCHAR2(30), 
	"FLAG" RAW(2) DEFAULT '0000', 
	"CTYPE" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION#" NUMBER, 
	"SCALE" NUMBER, 
	"NULL$" NUMBER, 
	"CHARSETID" NUMBER, 
	"CHARSETFORM" NUMBER, 
	"PROPERTY" RAW(4) DEFAULT '00000000', 
	"CLENGTH" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."SNAME" IS 'Name of the object owner'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."ONAME" IS 'Name of the object'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."TYPE" IS 'Type of the object'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."CNAME" IS 'Column name'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."LCNAME" IS 'Long column name'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."TOID" IS 'Type object identifier of a user-defined type'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."VERSION#" IS 'Version# of a column of user-defined type'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."HASHCODE" IS 'Hashcode of a column of user-defined type'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."ID" IS 'Column ID'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."POS" IS 'Ordering of column used as IN parameter in the replication procedures'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."TOP" IS 'Top column name for an attribute'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."FLAG" IS 'Replication information about column'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."CTYPE" IS 'Type of the column'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."LENGTH" IS 'Length of the column in bytes'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."PRECISION#" IS 'Length: decimal digits (NUMBER) or binary digits (FLOAT)'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."SCALE" IS 'Digits to right of decimal point in a number'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."NULL$" IS 'Does column allow NULL values?'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."CHARSETID" IS 'Character set identifier'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."CHARSETFORM" IS 'Character set form'
   COMMENT ON COLUMN "REPCAT$_REPCOLUMN"."CLENGTH" IS 'The maximum length of the column in characters'
   COMMENT ON TABLE "REPCAT$_REPCOLUMN"  IS 'Replicated columns for a table sorted alphabetically in ascending order'
--------------------------------------------------------
--  DDL for Table REPCAT$_REPGROUP_PRIVS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPGROUP_PRIVS" 
   (	"USERID" NUMBER, 
	"USERNAME" VARCHAR2(30), 
	"GOWNER" VARCHAR2(30), 
	"GNAME" VARCHAR2(30), 
	"GLOBAL_FLAG" NUMBER, 
	"CREATED" DATE, 
	"PRIVILEGE" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."USERID" IS 'OBSOLETE COLUMN: Identifying number of the user'
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."USERNAME" IS 'Identifying name of the registered user'
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."GOWNER" IS 'Owner of the replicated object group'
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."GNAME" IS 'Name of the replicated object group'
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."GLOBAL_FLAG" IS '1 if gname is NULL, 0 otherwise'
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."CREATED" IS 'Registration date'
   COMMENT ON COLUMN "REPCAT$_REPGROUP_PRIVS"."PRIVILEGE" IS 'Registered privileges'
   COMMENT ON TABLE "REPCAT$_REPGROUP_PRIVS"  IS 'Information about users who are registered for object group privileges'
--------------------------------------------------------
--  DDL for Table REPCAT$_REPOBJECT
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPOBJECT" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"TYPE" NUMBER(*,0), 
	"VERSION#" NUMBER, 
	"HASHCODE" RAW(17), 
	"ID" NUMBER, 
	"OBJECT_COMMENT" VARCHAR2(80), 
	"STATUS" NUMBER(*,0), 
	"GENPACKAGE" NUMBER(*,0), 
	"GENPLOGID" NUMBER(*,0), 
	"GENTRIGGER" NUMBER(*,0), 
	"GENTLOGID" NUMBER(*,0), 
	"GOWNER" VARCHAR2(30), 
	"GNAME" VARCHAR2(30), 
	"FLAG" RAW(4) DEFAULT '00000000'
   ) 

   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."SNAME" IS 'Name of the object owner'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."ONAME" IS 'Name of the object'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."TYPE" IS 'Type of the object'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."VERSION#" IS 'Version of objects of TYPE'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."HASHCODE" IS 'Hashcode of objects of TYPE'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."ID" IS 'Identifier of the local object'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."OBJECT_COMMENT" IS 'Description of the replicated object'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."STATUS" IS 'Status of the last create or alter request on the local object'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GENPACKAGE" IS 'Status of whether the object needs to generate replication package'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GENPLOGID" IS 'Log id of message sent for generating package support'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GENTRIGGER" IS 'Status of whether the object needs to generate replication trigger'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GENTLOGID" IS 'Log id of message sent for generating trigger support'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GOWNER" IS 'Owner of the object''s object group'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."GNAME" IS 'Name of the object''s object group'
   COMMENT ON COLUMN "REPCAT$_REPOBJECT"."FLAG" IS 'Information about replicated object'
   COMMENT ON TABLE "REPCAT$_REPOBJECT"  IS 'Information about replicated objects'
--------------------------------------------------------
--  DDL for Table REPCAT$_REPPROP
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPPROP" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"TYPE" NUMBER(*,0), 
	"DBLINK" VARCHAR2(128), 
	"HOW" NUMBER(*,0), 
	"PROPAGATE_COMMENT" VARCHAR2(80), 
	"DELIVERY_ORDER" NUMBER, 
	"RECIPIENT_KEY" NUMBER, 
	"EXTENSION_ID" RAW(16) DEFAULT '00'
   ) 

   COMMENT ON COLUMN "REPCAT$_REPPROP"."SNAME" IS 'Name of the object owner'
   COMMENT ON COLUMN "REPCAT$_REPPROP"."ONAME" IS 'Name of the object'
   COMMENT ON COLUMN "REPCAT$_REPPROP"."TYPE" IS 'Type of the object'
   COMMENT ON COLUMN "REPCAT$_REPPROP"."DBLINK" IS 'Destination database for propagation'
   COMMENT ON COLUMN "REPCAT$_REPPROP"."HOW" IS 'Propagation choice for the destination database'
   COMMENT ON COLUMN "REPCAT$_REPPROP"."PROPAGATE_COMMENT" IS 'Description of the propagation choice'
   COMMENT ON COLUMN "REPCAT$_REPPROP"."DELIVERY_ORDER" IS 'Value of delivery order when the master was added'
   COMMENT ON COLUMN "REPCAT$_REPPROP"."RECIPIENT_KEY" IS 'Recipient key for sname and oname, used in joining with def$_aqcall'
   COMMENT ON COLUMN "REPCAT$_REPPROP"."EXTENSION_ID" IS 'Identifier of any active extension request'
   COMMENT ON TABLE "REPCAT$_REPPROP"  IS 'Propagation information about replicated objects'
--------------------------------------------------------
--  DDL for Table REPCAT$_REPSCHEMA
--------------------------------------------------------

  CREATE TABLE "REPCAT$_REPSCHEMA" 
   (	"GOWNER" VARCHAR2(30) DEFAULT 'PUBLIC', 
	"SNAME" VARCHAR2(30), 
	"DBLINK" VARCHAR2(128), 
	"MASTERDEF" VARCHAR2(1), 
	"SNAPMASTER" VARCHAR2(1), 
	"MASTER_COMMENT" VARCHAR2(80), 
	"MASTER" VARCHAR2(1), 
	"PROP_UPDATES" NUMBER DEFAULT 0, 
	"MY_DBLINK" VARCHAR2(1), 
	"EXTENSION_ID" RAW(16) DEFAULT '00'
   ) 

   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."GOWNER" IS 'Owner of the replicated object group'
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."SNAME" IS 'Name of the replicated object group'
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."DBLINK" IS 'A database site replicating the object group'
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."MASTERDEF" IS 'Is the database the master definition site for the replicated object group'
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."SNAPMASTER" IS 'For a snapshot site, is this the current refresh_master'
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."MASTER_COMMENT" IS 'Description of the database site'
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."MASTER" IS 'Redundant information from repcat$_repcat.master'
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."PROP_UPDATES" IS 'Number of requested updates for master in repcat$_repprop'
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."MY_DBLINK" IS 'A sanity check after import: is this master the current site'
   COMMENT ON COLUMN "REPCAT$_REPSCHEMA"."EXTENSION_ID" IS 'Dummy column for foreign key'
   COMMENT ON TABLE "REPCAT$_REPSCHEMA"  IS 'N-way replication information'
--------------------------------------------------------
--  DDL for Table REPCAT$_RESOL_STATS_CONTROL
--------------------------------------------------------

  CREATE TABLE "REPCAT$_RESOL_STATS_CONTROL" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"CREATED" DATE, 
	"STATUS" NUMBER(*,0), 
	"STATUS_UPDATE_DATE" DATE, 
	"PURGED_DATE" DATE, 
	"LAST_PURGE_START_DATE" DATE, 
	"LAST_PURGE_END_DATE" DATE
   ) 

   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."SNAME" IS 'Owner of replicated object'
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."ONAME" IS 'Name of the replicated object'
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."CREATED" IS 'Timestamp for which statistics collection was first started'
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."STATUS" IS 'Status of statistics collection: ACTIVE, CANCELLED'
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."STATUS_UPDATE_DATE" IS 'Timestamp for which the status was last updated'
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."PURGED_DATE" IS 'Timestamp for the last purge of statistics data'
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."LAST_PURGE_START_DATE" IS 'The last start date of the statistics purging date range'
   COMMENT ON COLUMN "REPCAT$_RESOL_STATS_CONTROL"."LAST_PURGE_END_DATE" IS 'The last end date of the statistics purging date range'
   COMMENT ON TABLE "REPCAT$_RESOL_STATS_CONTROL"  IS 'Information about statistics collection for conflict resolutions for all replicated tables in the database'
--------------------------------------------------------
--  DDL for Table REPCAT$_RESOLUTION
--------------------------------------------------------

  CREATE TABLE "REPCAT$_RESOLUTION" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"CONFLICT_TYPE_ID" NUMBER(*,0), 
	"REFERENCE_NAME" VARCHAR2(30), 
	"SEQUENCE_NO" NUMBER, 
	"METHOD_NAME" VARCHAR2(80), 
	"FUNCTION_NAME" VARCHAR2(92), 
	"PRIORITY_GROUP" VARCHAR2(30), 
	"RESOLUTION_COMMENT" VARCHAR2(80)
   ) 

   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."SNAME" IS 'Owner of replicated object'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."ONAME" IS 'Name of the replicated object'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."CONFLICT_TYPE_ID" IS 'Type of conflict'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."SEQUENCE_NO" IS 'Ordering on resolution'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."METHOD_NAME" IS 'Name of the conflict resolution method'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."FUNCTION_NAME" IS 'Name of the resolution function'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."PRIORITY_GROUP" IS 'Name of the priority group used in conflict resolution'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION"."RESOLUTION_COMMENT" IS 'Description of the conflict resolution'
   COMMENT ON TABLE "REPCAT$_RESOLUTION"  IS 'Description of all conflict resolutions in the database'
--------------------------------------------------------
--  DDL for Table REPCAT$_RESOLUTION_METHOD
--------------------------------------------------------

  CREATE TABLE "REPCAT$_RESOLUTION_METHOD" 
   (	"CONFLICT_TYPE_ID" NUMBER(*,0), 
	"METHOD_NAME" VARCHAR2(80)
   ) 

   COMMENT ON COLUMN "REPCAT$_RESOLUTION_METHOD"."CONFLICT_TYPE_ID" IS 'Type of conflict'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_METHOD"."METHOD_NAME" IS 'Name of the conflict resolution method'
   COMMENT ON TABLE "REPCAT$_RESOLUTION_METHOD"  IS 'All conflict resolution methods in the database'
--------------------------------------------------------
--  DDL for Table REPCAT$_RESOLUTION_STATISTICS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_RESOLUTION_STATISTICS" 
   (	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"CONFLICT_TYPE_ID" NUMBER(*,0), 
	"REFERENCE_NAME" VARCHAR2(30), 
	"METHOD_NAME" VARCHAR2(80), 
	"FUNCTION_NAME" VARCHAR2(92), 
	"PRIORITY_GROUP" VARCHAR2(30), 
	"RESOLVED_DATE" DATE, 
	"PRIMARY_KEY_VALUE" VARCHAR2(2000)
   ) 

   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."SNAME" IS 'Owner of replicated object'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."ONAME" IS 'Name of the replicated object'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."CONFLICT_TYPE_ID" IS 'Type of conflict'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."METHOD_NAME" IS 'Name of the conflict resolution method'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."FUNCTION_NAME" IS 'Name of the resolution function'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."PRIORITY_GROUP" IS 'Name of the priority group used in conflict resolution'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."RESOLVED_DATE" IS 'Timestamp for the resolution of the conflict'
   COMMENT ON COLUMN "REPCAT$_RESOLUTION_STATISTICS"."PRIMARY_KEY_VALUE" IS 'Primary key of the replicated row (character data)'
   COMMENT ON TABLE "REPCAT$_RESOLUTION_STATISTICS"  IS 'Statistics for conflict resolutions for all replicated tables in the database'
--------------------------------------------------------
--  DDL for Table REPCAT$_RUNTIME_PARMS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_RUNTIME_PARMS" 
   (	"RUNTIME_PARM_ID" NUMBER, 
	"PARAMETER_NAME" VARCHAR2(30), 
	"PARM_VALUE" CLOB
   ) 

   COMMENT ON COLUMN "REPCAT$_RUNTIME_PARMS"."RUNTIME_PARM_ID" IS 'Primary key of the parameter values table.'
   COMMENT ON COLUMN "REPCAT$_RUNTIME_PARMS"."PARAMETER_NAME" IS 'Name of the parameter.'
   COMMENT ON COLUMN "REPCAT$_RUNTIME_PARMS"."PARM_VALUE" IS 'Parameter value.'
--------------------------------------------------------
--  DDL for Table REPCAT$_SITE_OBJECTS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_SITE_OBJECTS" 
   (	"TEMPLATE_SITE_ID" NUMBER, 
	"SNAME" VARCHAR2(30), 
	"ONAME" VARCHAR2(30), 
	"OBJECT_TYPE_ID" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_SITE_OBJECTS"."TEMPLATE_SITE_ID" IS 'Internal primary key of the template sites table.'
   COMMENT ON COLUMN "REPCAT$_SITE_OBJECTS"."SNAME" IS 'Schema containing the deployed database object.'
   COMMENT ON COLUMN "REPCAT$_SITE_OBJECTS"."ONAME" IS 'Name of the deployed database object.'
   COMMENT ON COLUMN "REPCAT$_SITE_OBJECTS"."OBJECT_TYPE_ID" IS 'Internal ID of the object type of the deployed database object.'
   COMMENT ON TABLE "REPCAT$_SITE_OBJECTS"  IS 'Table for maintaining database objects deployed at a site.'
--------------------------------------------------------
--  DDL for Table REPCAT$_SITES_NEW
--------------------------------------------------------

  CREATE TABLE "REPCAT$_SITES_NEW" 
   (	"EXTENSION_ID" RAW(16), 
	"GOWNER" VARCHAR2(30), 
	"GNAME" VARCHAR2(30), 
	"DBLINK" VARCHAR2(128), 
	"FULL_INSTANTIATION" VARCHAR2(1), 
	"MASTER_STATUS" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."EXTENSION_ID" IS 'Globally unique identifier for replication extension'
   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."GOWNER" IS 'Owner of the object group'
   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."GNAME" IS 'Name of the replicated object group'
   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."DBLINK" IS 'A database site that will replicate the object group'
   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."FULL_INSTANTIATION" IS 'Y if the database uses full-database export or change-based recovery'
   COMMENT ON COLUMN "REPCAT$_SITES_NEW"."MASTER_STATUS" IS 'Instantiation status of the new master'
   COMMENT ON TABLE "REPCAT$_SITES_NEW"  IS 'Information about new masters for replication extension'
--------------------------------------------------------
--  DDL for Table REPCAT$_SNAPGROUP
--------------------------------------------------------

  CREATE TABLE "REPCAT$_SNAPGROUP" 
   (	"GOWNER" VARCHAR2(30) DEFAULT 'PUBLIC', 
	"GNAME" VARCHAR2(30), 
	"DBLINK" VARCHAR2(128), 
	"GROUP_COMMENT" VARCHAR2(80), 
	"REP_TYPE" NUMBER, 
	"FLAVOR_ID" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_SNAPGROUP"."GOWNER" IS 'Owner of the snapshot repgroup'
   COMMENT ON COLUMN "REPCAT$_SNAPGROUP"."GNAME" IS 'Name of the snapshot repgroup'
   COMMENT ON COLUMN "REPCAT$_SNAPGROUP"."DBLINK" IS 'Database site of the snapshot repgroup'
   COMMENT ON COLUMN "REPCAT$_SNAPGROUP"."GROUP_COMMENT" IS 'Description of the snapshot repgroup'
   COMMENT ON COLUMN "REPCAT$_SNAPGROUP"."REP_TYPE" IS 'Identifier of flavor at snapshot'
   COMMENT ON TABLE "REPCAT$_SNAPGROUP"  IS 'Snapshot repgroup registration information'
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_OBJECTS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_OBJECTS" 
   (	"TEMPLATE_OBJECT_ID" NUMBER, 
	"REFRESH_TEMPLATE_ID" NUMBER, 
	"OBJECT_NAME" VARCHAR2(30), 
	"OBJECT_TYPE" NUMBER, 
	"OBJECT_VERSION#" NUMBER, 
	"DDL_TEXT" CLOB, 
	"MASTER_ROLLBACK_SEG" VARCHAR2(30), 
	"DERIVED_FROM_SNAME" VARCHAR2(30), 
	"DERIVED_FROM_ONAME" VARCHAR2(30), 
	"FLAVOR_ID" NUMBER, 
	"SCHEMA_NAME" VARCHAR2(30), 
	"DDL_NUM" NUMBER DEFAULT 1, 
	"TEMPLATE_REFGROUP_ID" NUMBER DEFAULT 0, 
	"FLAGS" RAW(255), 
	"SPARE1" VARCHAR2(4000)
   ) 

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."TEMPLATE_OBJECT_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_OBJECTS table.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."OBJECT_NAME" IS 'Name of the database object.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."OBJECT_TYPE" IS 'Type of database object.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."OBJECT_VERSION#" IS 'Version# of database object of TYPE.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."DDL_TEXT" IS 'DDL string for creating the object or WHERE clause for snapshot query.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."MASTER_ROLLBACK_SEG" IS 'Rollback segment for use during snapshot refreshes.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."DERIVED_FROM_SNAME" IS 'Schema name of schema containing object this was derived from.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."DERIVED_FROM_ONAME" IS 'Object name of object this object was derived from.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."FLAVOR_ID" IS 'Foreign key to the REPCAT$_FLAVORS table.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."SCHEMA_NAME" IS 'Schema containing the object.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."DDL_NUM" IS 'Order of ddls to execute.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."TEMPLATE_REFGROUP_ID" IS 'Internal ID of the refresh group to contain the object.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."FLAGS" IS 'Internal flags for the object.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_OBJECTS"."SPARE1" IS 'Reserved for future use.'
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_PARMS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_PARMS" 
   (	"TEMPLATE_PARAMETER_ID" NUMBER, 
	"REFRESH_TEMPLATE_ID" NUMBER, 
	"PARAMETER_NAME" VARCHAR2(30), 
	"DEFAULT_PARM_VALUE" CLOB, 
	"PROMPT_STRING" VARCHAR2(2000), 
	"USER_OVERRIDE" VARCHAR2(1) DEFAULT 'Y'
   ) 

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."TEMPLATE_PARAMETER_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_PARMS table.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."PARAMETER_NAME" IS 'name of the parameter.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."DEFAULT_PARM_VALUE" IS 'Default value for the parameter.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."PROMPT_STRING" IS 'String for use in prompting for parameter values.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_PARMS"."USER_OVERRIDE" IS 'User override flag.'
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_REFGROUPS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_REFGROUPS" 
   (	"REFRESH_GROUP_ID" NUMBER, 
	"REFRESH_GROUP_NAME" VARCHAR2(30), 
	"REFRESH_TEMPLATE_ID" NUMBER, 
	"ROLLBACK_SEG" VARCHAR2(30), 
	"START_DATE" VARCHAR2(200), 
	"INTERVAL" VARCHAR2(200)
   ) 

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."REFRESH_GROUP_ID" IS 'Internal primary key of the refresh groups table.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."REFRESH_GROUP_NAME" IS 'Name of the refresh group'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."REFRESH_TEMPLATE_ID" IS 'Primary key of the template containing the refresh group.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."ROLLBACK_SEG" IS 'Name of the rollback segment to use during refresh.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."START_DATE" IS 'Refresh start date.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_REFGROUPS"."INTERVAL" IS 'Refresh interval.'
   COMMENT ON TABLE "REPCAT$_TEMPLATE_REFGROUPS"  IS 'Table for maintaining refresh group information for template.'
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_SITES
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_SITES" 
   (	"TEMPLATE_SITE_ID" NUMBER, 
	"REFRESH_TEMPLATE_NAME" VARCHAR2(30), 
	"REFRESH_GROUP_NAME" VARCHAR2(30), 
	"TEMPLATE_OWNER" VARCHAR2(30), 
	"USER_NAME" VARCHAR2(30), 
	"SITE_NAME" VARCHAR2(128), 
	"REPAPI_SITE_ID" NUMBER, 
	"STATUS" NUMBER, 
	"REFRESH_TEMPLATE_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"INSTANTIATION_DATE" DATE
   ) 

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."TEMPLATE_SITE_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_SITES table.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."REFRESH_TEMPLATE_NAME" IS 'Name of the refresh group template.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."REFRESH_GROUP_NAME" IS 'Name of the refresh group to create during instantiation.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."TEMPLATE_OWNER" IS 'Owner of the refresh group template.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."USER_NAME" IS 'Database user name.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."SITE_NAME" IS 'Name of the site that has instantiated the template.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."REPAPI_SITE_ID" IS 'Name of the site that has instantiated the template.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."STATUS" IS 'Obsolete - do not use.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."REFRESH_TEMPLATE_ID" IS 'Obsolete - do not use.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."USER_ID" IS 'Obsolete - do not use.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_SITES"."INSTANTIATION_DATE" IS 'Date template was instantiated.'
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_STATUS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_STATUS" 
   (	"TEMPLATE_STATUS_ID" NUMBER, 
	"STATUS_TYPE_NAME" VARCHAR2(100)
   ) 

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_STATUS"."TEMPLATE_STATUS_ID" IS 'Internal primary key for the template status table.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_STATUS"."STATUS_TYPE_NAME" IS 'User friendly name for the template status.'
   COMMENT ON TABLE "REPCAT$_TEMPLATE_STATUS"  IS 'Table for template status and template status codes.'
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_TARGETS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_TARGETS" 
   (	"TEMPLATE_TARGET_ID" NUMBER, 
	"TARGET_DATABASE" VARCHAR2(128), 
	"TARGET_COMMENT" VARCHAR2(2000), 
	"CONNECT_STRING" VARCHAR2(4000), 
	"SPARE1" VARCHAR2(4000)
   ) 

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TARGETS"."TEMPLATE_TARGET_ID" IS 'Internal primary key of the template targets table.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TARGETS"."TARGET_DATABASE" IS 'Global identifier of the target database.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TARGETS"."TARGET_COMMENT" IS 'Comment on the target database.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TARGETS"."CONNECT_STRING" IS 'The connection descriptor used to connect to the target database.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TARGETS"."SPARE1" IS 'The spare column'
   COMMENT ON TABLE "REPCAT$_TEMPLATE_TARGETS"  IS 'Internal table for tracking potential target databases for templates.'
--------------------------------------------------------
--  DDL for Table REPCAT$_TEMPLATE_TYPES
--------------------------------------------------------

  CREATE TABLE "REPCAT$_TEMPLATE_TYPES" 
   (	"TEMPLATE_TYPE_ID" NUMBER, 
	"TEMPLATE_DESCRIPTION" VARCHAR2(200), 
	"FLAGS" RAW(255), 
	"SPARE1" VARCHAR2(4000)
   ) 

   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TYPES"."TEMPLATE_TYPE_ID" IS 'Internal primary key of the template types table.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TYPES"."TEMPLATE_DESCRIPTION" IS 'Description of the template type.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TYPES"."FLAGS" IS 'Bitmap flags controlling each type of template.'
   COMMENT ON COLUMN "REPCAT$_TEMPLATE_TYPES"."SPARE1" IS 'Reserved for future expansion.'
   COMMENT ON TABLE "REPCAT$_TEMPLATE_TYPES"  IS 'Internal table for maintaining types of templates.'
--------------------------------------------------------
--  DDL for Table REPCAT$_USER_AUTHORIZATIONS
--------------------------------------------------------

  CREATE TABLE "REPCAT$_USER_AUTHORIZATIONS" 
   (	"USER_AUTHORIZATION_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"REFRESH_TEMPLATE_ID" NUMBER
   ) 

   COMMENT ON COLUMN "REPCAT$_USER_AUTHORIZATIONS"."USER_AUTHORIZATION_ID" IS 'Internal primary key of the REPCAT$_USER_AUTHORIZATIONS table.'
   COMMENT ON COLUMN "REPCAT$_USER_AUTHORIZATIONS"."USER_ID" IS 'Database user id.'
   COMMENT ON COLUMN "REPCAT$_USER_AUTHORIZATIONS"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.'
--------------------------------------------------------
--  DDL for Table REPCAT$_USER_PARM_VALUES
--------------------------------------------------------

  CREATE TABLE "REPCAT$_USER_PARM_VALUES" 
   (	"USER_PARAMETER_ID" NUMBER, 
	"TEMPLATE_PARAMETER_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"PARM_VALUE" CLOB
   ) 

   COMMENT ON COLUMN "REPCAT$_USER_PARM_VALUES"."USER_PARAMETER_ID" IS 'Internal primary key of the REPCAT$_USER_PARM_VALUES table.'
   COMMENT ON COLUMN "REPCAT$_USER_PARM_VALUES"."TEMPLATE_PARAMETER_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_PARMS table.'
   COMMENT ON COLUMN "REPCAT$_USER_PARM_VALUES"."USER_ID" IS 'Database user id.'
   COMMENT ON COLUMN "REPCAT$_USER_PARM_VALUES"."PARM_VALUE" IS 'Value of the parameter for this user.'
--------------------------------------------------------
--  DDL for Table SQLPLUS_PRODUCT_PROFILE
--------------------------------------------------------

  CREATE TABLE "SQLPLUS_PRODUCT_PROFILE" 
   (	"PRODUCT" VARCHAR2(30), 
	"USERID" VARCHAR2(30), 
	"ATTRIBUTE" VARCHAR2(240), 
	"SCOPE" VARCHAR2(240), 
	"NUMERIC_VALUE" NUMBER(15,2), 
	"CHAR_VALUE" VARCHAR2(240), 
	"DATE_VALUE" DATE, 
	"LONG_VALUE" LONG
   )
--------------------------------------------------------
--  DDL for Table TIPO_IDENTIFACIONES
--------------------------------------------------------

  CREATE TABLE "TIPO_IDENTIFACIONES" 
   (	"ID" NUMBER(*,0), 
	"TIPO_IDENTICACION" VARCHAR2(50)
   )
--------------------------------------------------------
--  DDL for Table VEHICULOS
--------------------------------------------------------

  CREATE TABLE "VEHICULOS" 
   (	"ID" NUMBER(*,0), 
	"PLACA" VARCHAR2(20), 
	"AÑO" VARCHAR2(50), 
	"FABRICANTE_ID" NUMBER(*,0), 
	"VALOR" VARCHAR2(50), 
	"TIPO" VARCHAR2(50), 
	"MARCA_ID" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Table VEHICULOS_INTERCAMBIO
--------------------------------------------------------

  CREATE TABLE "VEHICULOS_INTERCAMBIO" 
   (	"ID" NUMBER(*,0), 
	"PLACA" VARCHAR2(20), 
	"MODELO" VARCHAR2(50), 
	"AÑO" VARCHAR2(50), 
	"MARCA_ID" NUMBER(*,0)
   )
--------------------------------------------------------
--  DDL for Sequence LOGMNR_EVOLVE_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "LOGMNR_EVOLVE_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence LOGMNR_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "LOGMNR_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence LOGMNR_UIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "LOGMNR_UIDS$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 NOCACHE  ORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_GENERIC
--------------------------------------------------------

   CREATE SEQUENCE  "MVIEW$_ADVSEQ_GENERIC"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "MVIEW$_ADVSEQ_ID"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_EXCEPTIONS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_EXCEPTIONS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_FLAVOR_NAME_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_FLAVOR_NAME_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_FLAVORS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_FLAVORS_S"  MINVALUE -2147483647 MAXVALUE 2147483647 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT_LOG_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT_LOG_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_REFRESH_TEMPLATES_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_REFRESH_TEMPLATES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_REPPROP_KEY
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_REPPROP_KEY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_RUNTIME_PARMS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_RUNTIME_PARMS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_OBJECTS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_TEMPLATE_OBJECTS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_PARMS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_TEMPLATE_PARMS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_REFGROUPS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_TEMPLATE_REFGROUPS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_SITES_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_TEMPLATE_SITES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMP_OUTPUT_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_TEMP_OUTPUT_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_USER_AUTHORIZATIONS_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_USER_AUTHORIZATIONS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence REPCAT$_USER_PARM_VALUES_S
--------------------------------------------------------

   CREATE SEQUENCE  "REPCAT$_USER_PARM_VALUES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence TEMPLATE$_TARGETS_S
--------------------------------------------------------

   CREATE SEQUENCE  "TEMPLATE$_TARGETS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
REM INSERTING into ANSWERS
SET DEFINE OFF;
Insert into ANSWERS (ID,NUMBER_OF_QUESTION,ANSWER,PRICE) values ('1','QUESTION 1','26',null);
Insert into ANSWERS (ID,NUMBER_OF_QUESTION,ANSWER,PRICE) values ('2','QUESTION 2','963',null);
Insert into ANSWERS (ID,NUMBER_OF_QUESTION,ANSWER,PRICE) values ('3','QUESTION 3','1',null);
Insert into ANSWERS (ID,NUMBER_OF_QUESTION,ANSWER,PRICE) values ('4','QUESTION 4','vel sapien',null);
Insert into ANSWERS (ID,NUMBER_OF_QUESTION,ANSWER,PRICE) values ('5','QUESTION 5','swim wear',null);
REM INSERTING into CATEGORIES
SET DEFINE OFF;
Insert into CATEGORIES (ID,NAME,SEASON) values ('1','shoes','winter');
Insert into CATEGORIES (ID,NAME,SEASON) values ('2','shoes','summer');
Insert into CATEGORIES (ID,NAME,SEASON) values ('3','swim wear','summer');
Insert into CATEGORIES (ID,NAME,SEASON) values ('4','tennis','summer');
Insert into CATEGORIES (ID,NAME,SEASON) values ('5','ski','winter');
Insert into CATEGORIES (ID,NAME,SEASON) values ('6','snowboard','winter');
Insert into CATEGORIES (ID,NAME,SEASON) values ('7','golf','summer');
Insert into CATEGORIES (ID,NAME,SEASON) values ('8','diving equipment','summer');
Insert into CATEGORIES (ID,NAME,SEASON) values ('9','running wear','summer');
Insert into CATEGORIES (ID,NAME,SEASON) values ('10','fitness gear','summer');
Insert into CATEGORIES (ID,NAME,SEASON) values ('11','fitness gear','winter');
REM INSERTING into PRODUCTS
SET DEFINE OFF;
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1000','enim. Mauris','8C402EDA-D7D5-540D-3974-4EB9C810E3D6','1','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1005','libero.','68D3F0AC-7061-112A-BD4B-AD1A8108156A','378','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1010','fames ac turpis','47AF013F-1611-2695-F069-990726B02BCD','732','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1015','fringilla.','AA3BECCF-1E18-EC21-0B0E-6E60D26E9515','878','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1020','Phasellus','92AD2936-611E-08D8-F14C-C55F55D7448D','476','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1025','eu,','204BD401-0613-75B3-1C9B-54F40D7EBE9F','766','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1030','metus vitae velit','7872B045-09BD-E3D9-94FE-FB1077F17672','853','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1035','vehicula','DC068ED5-59F6-0768-5C9E-1CE365F04D27','983','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1040','nec orci.','1D4B3F9C-BC28-B5B8-79C4-540FFA5A2BCE','23','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1045','Nullam lobortis quam','F38E68D8-9C9F-26AE-17A2-BB2323CA77F4','69','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1050','molestie. Sed','0471FD30-E544-B4C1-81B6-0CB4E0E4F98E','16','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1055','Sed nulla','235D318D-3CB1-A608-4767-C7BBFF485A9E','128','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1060','mauris, rhoncus id,','F1F99B39-AC78-267D-BC90-E1017C797D50','244','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1065','neque.','D976177B-1727-BCA3-6F37-7A177BDE4A91','473','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1070','In at pede.','02085DAE-38CC-8DD5-EB78-647A3CE01B25','16','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1075','ante dictum mi,','A71B05A8-D87B-D9FD-E7DE-24EBF7E83560','704','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1080','Sed nec','1C7683F9-4E09-890F-56D6-A22864D45824','437','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1085','non,','F13EA293-12F8-5412-4C7D-1251749CC866','81','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1090','lorem. Donec elementum,','E656DCC2-0C97-1ABD-F1B4-36749916FF8A','514','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1095','neque','114BAB51-79CC-E3B1-AC3B-813E89F9619A','819','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1100','sed dictum eleifend,','9CFE31B6-D922-0879-4B58-E51F700C4ED7','976','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1105','Quisque ornare','46F8701A-751F-817B-6A2E-9DF9530DAC67','629','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1110','risus. Donec','D7457DC7-EE43-5E11-5E89-34BC60841BEB','114','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1115','Nam consequat dolor','015F571B-BAEC-5FAC-0438-8B2D1CB2C593','516','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1120','Proin','92641422-8B21-17E1-5CAA-E18F26D9793D','804','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1125','Nunc','5BD8CF36-52F4-C474-03EB-684327EEBB28','772','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1130','ultrices.','895339C6-6F84-464D-E038-5E22119984F2','215','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1135','lacus. Quisque','020FBA07-F452-CF76-28E2-A4F2A26618C0','201','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1140','fringilla est. Mauris','8288ABC1-49D2-6901-57CA-D7DE7D97E353','187','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1145','lectus, a sollicitudin','860A8D2C-9BA5-BA39-5595-C8C9463DA7DA','216','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1150','et malesuada fames','B736B56A-A2BF-7748-436D-01A0E30E9602','55','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1155','leo.','DA72C1C7-5954-B1D6-B845-90B7DED51DD2','111','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1160','vulputate','594EE71A-D673-F58D-256C-2E9641D40333','18','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1165','a,','00DB3399-4B86-1688-148E-EACCD6B1F7AF','783','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1170','Ut semper','8259DAD0-A938-B230-0B2D-C67ACF1966A0','37','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1175','dictum mi,','751853B6-77C8-CC2A-93FB-B2D1948A0D53','699','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1180','ut quam vel','4BA71AE1-AC60-7BBA-A582-093AB2BD369C','92','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1185','neque','61F117DA-5779-D172-69A5-48D786E3A369','618','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1190','magnis dis','8E72D1EC-5F01-0B29-5149-7D7EC556187E','986','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1195','ac','8CE4B587-71A6-4553-F57B-DE4C5CB3BF09','522','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1200','elit fermentum','1209D9A9-D8C1-7A43-F800-695202B81CF4','61','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1205','laoreet','23203874-FC31-8A2C-97ED-000882AC4803','3','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1210','sapien molestie','37C679D2-1C72-53B3-BABA-1429997A9F34','442','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1215','ipsum dolor','EDE5AB0B-4233-109C-805D-559F194833B2','658','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1220','sed','22006C22-A98C-6FBF-24DB-AADDA024B88C','511','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1225','ut','6D5122AB-BEB3-F5B4-4314-DD941C3A4D2A','934','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1230','Donec feugiat metus','1048938E-9627-3B28-E91C-9548A0B6FB96','739','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1235','vitae,','A9C20976-60F5-6855-DB79-C7D7FC9EBECB','863','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1240','enim.','E89FF7FB-339B-46F8-8249-2044FA3F467A','635','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1245','nunc','08910045-EC68-9C34-37DA-BA693F534A40','855','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1250','ultrices','1F064187-E60B-C277-A1C6-1B9A7EDD2766','83','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1255','lorem,','B7F36BFC-CB02-A8EF-8882-F6504B096150','78','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1260','id,','EA72E4E6-851F-8050-A08C-4FA71FF68FA2','888','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1265','sed','0A813B63-DD77-984B-5B18-8F4B1594D25D','572','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1270','enim. Mauris','F4D1DADC-BB93-CB9F-E076-8040D5F16767','498','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1275','nec tempus','C7B5A74D-CB4B-01DC-E694-1F6DCBEB0554','979','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1280','odio. Nam','E3F29201-C8C7-273C-6608-35AE959641A0','277','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1285','luctus aliquet odio.','B98CD897-D389-F40F-B690-C228435AA1FE','216','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1290','risus.','2A7B4862-F654-C095-A5C1-279D2497362A','176','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1295','sem','C8EB2DFB-6DC5-C327-4669-2A4EAC4FF8EB','766','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1300','pede ac urna.','B813FE56-EDF2-1811-CD3C-05DC39D57216','379','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1305','tristique','A5870ECF-CC3B-D47E-D32B-A09A05E16C6D','355','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1310','non massa non','C734CED2-46E5-C428-3737-C916C997969F','143','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1315','vitae','A6753CF1-6A44-817B-3BE1-BF33F4E5B692','342','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1320','fringilla','6C796910-7B39-1AEC-0D5C-3D297BED4A40','223','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1325','ut, sem. Nulla','9D6ABDE7-98F8-4DE9-343E-12AAB1196DE4','932','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1330','non, dapibus rutrum,','5F0C0578-E481-CD3D-688B-DE96B9F49BF6','16','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1335','amet','F0DF2456-2068-8609-CA49-6757D16B1B97','261','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1340','urna justo','311CA1DB-28A6-FA44-678C-0203B476E714','4','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1345','dignissim tempor','12FD5B4A-CC29-FF78-26F2-DF434413C27B','363','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1350','amet,','F7FF4732-6CC8-F3B8-461A-4417673BF880','118','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1355','et ultrices','3C0582D8-624D-2687-C1E6-351B654B0252','25','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1360','vel sapien','0E290CDE-FD74-1BA6-D84D-7F1E9AD5BF05','372','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1365','nunc.','5A4C58AF-ECEA-9BCF-31EA-8F5E657C2E4F','94','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1370','convallis in,','DAFBA0EC-ACD0-E0D6-BF58-0E188EC71F9E','176','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1375','mi lacinia mattis.','879811F2-0DC3-9ECF-A9ED-64B4F4D0EF40','441','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1380','massa.','13A2238B-21C3-516A-AB18-8940E68D3D15','98','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1385','taciti','11173B16-DB78-127D-661C-0414551A0712','702','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1390','elit, pellentesque a,','10DFF731-09C4-F4C7-2FC7-4A139BA5D956','705','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1395','pretium et, rutrum','49F8DBF8-ACBD-2D70-CCBC-841841AE5A30','7','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1400','nibh.','1BD5BBFD-8FD1-C7CD-E97D-DCB35F47706D','849','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1405','sagittis. Duis','2CBFAF9B-77A3-FBB9-B708-7DFAE22D26B3','21','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1410','ac','79F7B954-51B0-0C06-BBD6-C8569F1BAC34','458','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1415','ultricies','9559C654-5CE5-6833-0445-C5820B713870','169','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1420','egestas','1D9DD100-F9F1-8EC5-01FE-619CCB2BCB50','759','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1425','justo. Praesent luctus.','D732FA7E-B7FF-B947-B1F3-DA7E8C143175','447','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1430','a','A621E070-F2EC-20FA-A235-E4D15C054E08','945','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1435','nunc','A527BE50-BA91-B9D6-1546-21DC5F832800','867','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1440','Cum','3BBD657D-8298-55CC-B4D6-35DE6B38275A','469','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1445','et, lacinia vitae,','FEEE335A-8F38-F837-39E0-85EABB788799','662','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1450','pede.','02D03658-5720-885E-238E-F2B6ABA83658','467','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1455','amet risus.','27AF75F5-E976-F5EC-51AF-3AD1E89AF225','905','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1460','et magnis dis','32D24CD8-39C8-9438-8BF3-F838C675A757','262','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1465','interdum. Curabitur','D8674EDC-6FE9-98ED-5D6F-39EDC7919F82','154','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1470','aliquam arcu.','88E3C730-5898-AD2D-A31D-EA2CBA382684','136','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1475','dolor dolor,','DA420941-4B4F-5B53-2F13-214BF9B09018','94','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1480','dolor, tempus','F4E05EE4-A80A-93F1-6315-778B16511CDF','222','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1485','eget, dictum','7C720981-290B-8409-C6F1-05017C430573','6','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1490','adipiscing, enim','A5C4A0B9-24AF-B28E-D42F-F151F8FC434F','3','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1495','luctus lobortis. Class','C1F40B48-B72A-3596-DE31-56F57CD4B3FF','428','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1500','pellentesque massa lobortis','27E82933-D7B2-EEE2-77EC-B0E74578AAF8','357','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1505','placerat. Cras dictum','3D50E0E6-3F28-B41F-1B23-9A8BBE411A4D','963','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1510','In mi','FE7EC113-8F46-1754-A075-0483B78FF9EF','93','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1515','auctor vitae,','959B8597-8272-CE62-E57F-24ABE2ABB98B','423','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1520','Pellentesque ut ipsum','CB98834F-1B66-F618-2228-DFB352E04BDA','46','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1525','Cum sociis natoque','C7433FCC-77FA-762F-E760-0571ECBBE762','251','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1530','eget laoreet posuere,','37A39F76-CD28-5E23-A55F-705704700B4A','596','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1535','pede nec','BA7D5411-15C5-A57A-59EC-65A219E13158','244','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1540','lobortis tellus justo','94155EE8-2CC9-9A94-E866-3C7EF2C08F16','624','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1545','dictum sapien.','7E9BEEB4-E395-B8A8-938B-BB545D3AAA3F','251','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1550','faucibus','98E5020A-C4A1-E35A-F1E2-7FCFA6F02F5A','614','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1555','aliquet','209B6E16-62F6-A160-9C24-64D2FCAF4159','4','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1560','eros nec tellus.','689FEF41-13E6-190C-E6D7-EF11F0F675B2','601','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1565','risus. Donec','91D7ABC9-F41D-5C5E-FB5A-3CEF1D27247C','751','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1570','laoreet','21C554AF-D95F-A14F-CAA7-A1AF06513CA6','954','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1575','Aliquam','AF321956-C952-97AD-72AF-9A4265DF3389','83','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1580','Integer vitae nibh.','5AB8F0E4-0388-ADA9-02BF-72A272347E13','232','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1585','sit amet ultricies','47DCFE1F-0789-870B-8354-A1EAD3BEA285','4','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1590','venenatis lacus.','24861C98-4ED5-9E16-09A1-1E2E995D183A','738','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1595','eu dui.','60C696EC-B7C6-5C6F-635B-1A1606BEE706','726','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1600','et magnis','83F2D604-1191-C239-1E10-FB06864A7F31','154','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1605','tempus','561B7DD3-36AE-1CD7-B96C-9A112FAAD022','498','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1610','sed leo.','9926C625-3527-39EC-9978-C2AD7F5AED4D','402','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1615','vitae risus.','8A6C3C04-2A70-EFDC-0805-F0E510AEBFFA','117','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1620','turpis','9BF268BE-0974-3EFD-DB7B-DC2EDE7955A0','664','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1625','Suspendisse tristique','17AEC907-1F63-4434-E65C-7994213B6543','698','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1630','faucibus. Morbi vehicula.','A1B6C333-13CE-99A7-E8FB-753FD4901892','866','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1635','auctor. Mauris','925E02BA-18D0-FD35-A81F-D2022BA8CB9B','117','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1640','massa. Integer vitae','F83FDC36-F61F-6670-35B5-3BC8BCAE5A61','113','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1645','Donec feugiat metus','B5B2DAFC-2838-D504-672F-DC4CBAC4AE29','351','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1650','egestas. Sed','5CE7DC2E-97A8-1539-A9F7-532155CC949A','906','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1655','lobortis augue scelerisque','7ED8040D-C253-FB12-4C42-89A5D2CD483C','423','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1660','Donec sollicitudin adipiscing','C8EA95DF-C07A-5037-F6CE-A79BDF60CE86','832','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1665','sagittis.','C069465D-2D63-79C3-6B18-41A55CE256E5','217','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1670','euismod et, commodo','4700D8B6-3912-3EB1-5C79-5D3E893556A5','66','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1675','diam luctus','351F7BD8-5938-6E88-3483-7CE92F5F926A','357','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1680','sem. Nulla interdum.','3016DDBB-09C0-C945-7E5D-E16830E1692B','437','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1685','cursus,','88BB532C-5F6A-446F-CD0E-1C4F0D90B4BB','234','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1690','eget lacus. Mauris','054E74F0-E322-624A-D255-F8EF1F354FA8','506','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1695','rutrum.','33842754-6AA4-D445-A032-C2FF2FA31399','276','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1700','pharetra. Quisque ac','8D127EA4-85A7-18F7-EB57-12F68E971562','553','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1705','parturient','C4B24626-34B1-EDE5-5247-BBD9CAA3401D','865','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1710','risus, at fringilla','8C3C6250-D891-7733-412D-38F041E4365D','963','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1715','congue. In','73BBDA96-1D61-6DFA-24E1-DD5DE2776A30','741','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1720','Cras','8FBE613E-1898-73C8-4545-F078FF8E28FC','724','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1725','tincidunt','7DFD4AB2-CA40-E8A1-4EFD-DDF393F7BC89','84','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1730','amet,','2C12E88D-1E4D-1D4C-2E3F-C3A9B3AA0F93','26','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1735','magna.','7C80E7EF-5EA9-9B05-0304-1590EF63FA67','441','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1740','Donec feugiat','C1C4E489-16D6-997B-F2E4-75285ABD3ECD','282','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1745','dictum augue malesuada','7110AD37-7B8C-9914-CEA3-88003F6040B7','779','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1750','dui. Suspendisse ac','7CE26EA1-BC8C-86A4-10F4-80657AA76308','94','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1755','tellus, imperdiet non,','470DBC41-B1A9-A2C1-8259-536E1427671D','359','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1760','orci','65A0E597-B1BB-6DCF-37B9-9DE4608AC0C0','86','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1765','enim.','401E7C1D-9A53-F7A3-0D0B-359BC3FBCDF7','288','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1770','augue','A14D6D35-B6B3-5CB8-0D14-6D8F18D36DB3','326','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1775','lacus.','22DE2B58-3AFC-B5BA-899B-D27CC1196232','49','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1780','convallis erat, eget','62D28C6B-A80E-6AF7-B5B5-8EDB03527FE7','751','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1785','urna.','53196AF2-27A4-3BFB-70B1-5CFA65A5A554','794','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1790','nec tempus mauris','231A9475-8F3D-216E-66AF-1D56B35A6F4C','718','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1795','sem','8C0343AC-9CCD-2D31-106E-FD70D14818E2','944','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1800','eu dolor egestas','22138412-C8FC-22EE-8358-153417FD7400','388','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1805','Cras sed','69BD70CE-543E-222C-5B24-B13D20E2005F','313','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1810','varius et,','23746F2F-4C45-31DF-773C-27EEA3F410BB','487','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1815','Praesent','7D29AE09-DE33-7812-7CE9-1891C73C12DD','469','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1820','id','69DE3EE6-87A8-F3F4-0EC5-6C3A4FC9C674','935','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1825','sem elit, pharetra','3C0DA337-F13A-D5F2-7DDB-58553E2D160D','238','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1830','dui augue','A12D1871-D562-C90B-FBFB-D8DFDB71DC77','24','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1835','tellus. Suspendisse sed','AC96D7BC-05C5-FBE2-2976-4355D3B5309D','366','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1840','vel arcu','33A170AA-C991-A0AC-7760-30E317A6A57E','76','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1845','tristique','2940D762-A135-58FB-5EBA-CAB3D6DBB1F8','322','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1850','lectus rutrum urna,','A398A00A-B2B0-95C1-6BCE-118AD620094D','66','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1855','Proin','D6942BDB-408C-30A0-2AAD-1A889AC607A6','861','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1860','malesuada. Integer','7ED0950E-7589-177B-3E99-258527D9FFE7','447','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1865','ut, nulla.','7D2B7EF2-F231-CF05-2F4D-7C363631B4A1','407','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1870','lobortis','5C3C7A5A-85B3-5CE9-4DCB-03E648B63567','259','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1875','imperdiet, erat','F4891CE8-0F7B-98F4-4F0A-CA5F820C6891','155','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1880','tellus justo','0A55C627-4CAF-2394-24F2-E331DFAD04C6','899','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1885','amet','D5C974B7-8E9B-8589-CB90-566BAEA61A20','273','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1890','Mauris','B329862C-2D71-F744-FFFC-E7DE1907E05D','607','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1895','in','C3A96551-850E-1093-2FA3-0395D14820B4','55','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1900','ultricies ligula.','9F8E8C76-0D79-4B6A-5CA8-2768173C1F07','637','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1905','ipsum sodales purus,','DDC1794B-8D0C-A044-6781-8666DE0F7348','386','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1910','amet, consectetuer','DB6FC9CC-E8BC-49CB-7C89-8BD01E69699D','328','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1915','Nunc pulvinar arcu','AC52F0AB-4002-6DFB-7056-EBAAB110925F','359','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1920','lobortis','8DE98C71-70B4-43C2-6DE7-FD79A9E94414','781','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1925','montes, nascetur ridiculus','CB8B3668-4D66-476A-6C9D-9796FCA1C769','61','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1930','nec','8C8A2933-F251-D891-1161-1D139E90F6AC','56','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1935','tellus lorem eu','1A00C3BE-886B-18AD-520F-DEE7DF586ED2','571','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1940','a','CC7F41B8-47A0-AE78-E767-85FB0922BFD5','557','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1945','non, dapibus','DBEA75A5-4311-735D-0161-62A9C464DC4C','355','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1950','nisi. Mauris','A229A009-E204-99A2-C906-A65BC33907AD','17','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1955','mi tempor','D23CE646-5A97-8D26-85B3-D59DFD04D73C','29','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1960','pretium','E89F4548-893A-0BB1-CF2A-E2339A3F75E8','348','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1965','Quisque','FCD249D8-FA43-8F8C-0850-65BFB69523B0','913','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1970','Nunc lectus','3D739CA9-3120-FB6F-B7D9-61B5978526AC','431','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1975','dictum. Phasellus','744F348B-5381-B0E1-7AF5-B9DB125619B6','39','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1980','Aliquam ultrices iaculis','597D4369-DE56-1826-1A0B-F5F60456D8A5','742','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1985','est arcu ac','C9E5A7E0-DBC5-2708-DF71-4B80C49964D6','923','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1990','nunc risus','D3EEBF94-C08A-FA08-9979-4706D975ED44','247','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('1995','dignissim pharetra. Nam','917D43BB-C931-690B-54E9-871962F4A968','308','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2000','sem egestas blandit.','D77ED537-85A4-B720-93CC-95D13D4E265A','386','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2005','cursus','17B2A098-6E16-78EC-05E0-B27E5E2C5335','155','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2010','eu arcu. Morbi','42296F37-56A3-25DB-4AA5-93DBD73DD387','378','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2015','non dui nec','3B1CAA1E-C7C7-2DCE-D804-28E2F7E7435D','492','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2020','Donec egestas.','C104EC22-53C5-965E-1D9C-21B05C934151','587','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2025','adipiscing. Mauris','90B9DDAE-9927-01EB-10B5-825D173F7B8B','763','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2030','Ut tincidunt','8D4B18FE-6408-EEBA-27DC-962D3F3E3001','244','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2035','convallis,','E1153E8E-6AFB-21FB-D071-FAEFADF894DB','801','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2040','id sapien.','C285AC83-3C8D-1FF6-7A16-D0A2F92B7475','418','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2045','at, iaculis','6F8F77C7-874F-F03B-9FA8-1608C5841605','735','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2050','Praesent interdum ligula','8F55E541-B923-1337-82AE-424037441995','13','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2055','magna nec quam.','59233145-E30C-33F7-0203-525F8907981C','21','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2060','imperdiet','99AC132E-351A-9F80-F539-8772DC706FFB','325','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2065','amet nulla. Donec','3680D7EE-7E36-1FF4-04E2-DE3F5258DA31','16','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2070','orci','AA755E7E-ACB2-0D43-E665-4ED09CEFF1F1','12','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2075','lobortis. Class aptent','676EF1D3-BB21-DAAB-ABF2-24DF3525D86B','689','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2080','magna. Phasellus dolor','11DD9174-36C9-1E65-4E09-6E70BCC0AD59','896','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2085','eget odio.','41899E87-45CF-408E-805A-89A7C018C672','379','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2090','auctor ullamcorper, nisl','8678FD9A-90FF-3326-E411-5FEB801C368D','585','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2095','ut quam','82F506D0-3EE5-F29E-67FB-5E94E35D73DE','825','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2100','Quisque varius.','EA06D1E7-3F09-153E-DCE0-638EB938E418','729','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2105','orci lobortis','A1AFCA8D-55E3-2064-92F1-37A5441F80B1','642','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2110','eu, eleifend nec,','E4236B89-7F3A-722D-2ABC-1D558D933838','693','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2115','tristique','C3619EB2-44A9-3CE4-0034-D2583B3F04DA','171','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2120','in faucibus','794AF464-94E6-BC1B-F90E-678E184DDBFD','701','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2125','Nulla eu','E443ED0A-0446-E86F-6A9F-D0978394161A','427','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2130','Cum sociis','8B127694-5C0E-1855-E009-77CE37CCCADA','978','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2135','diam at','0C47A98A-75DC-C736-2A19-75A9FB2DC606','11','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2140','nulla ante, iaculis','193CDD84-5B8E-6800-EC2C-A13738CBDF59','62','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2145','Nunc ullamcorper,','AD33910C-411B-8BAB-A3A1-A837A953B2A9','691','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2150','sit amet, consectetuer','4F36E075-FE55-C185-0DE1-9A02B05CD7EF','501','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2155','Duis','99DA5BBD-16BA-6189-F7F0-8ADE085A9A6F','298','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2160','tempor augue','3CFA9816-6C6C-FCF8-AF1F-5AA5690A000E','29','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2165','eu,','3CAA3DA1-8793-D04A-7DD2-86FBA2B9C48D','743','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2170','scelerisque','19F0D7F4-9DBF-A2D5-5B69-119815C3AA8C','219','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2175','sed pede. Cum','762AD1B2-3C84-F185-53A6-C9C5F9520D76','603','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2180','Cras eu','2C88A197-E1D7-479F-4BB8-F642AA680B06','625','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2185','enim, sit amet','BD3F6E27-30D8-81DA-F3EB-C78AE77043DF','134','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2190','pellentesque eget, dictum','C71EAF23-F3A8-D1FE-4D47-DFF909F1F80F','967','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2195','consequat nec, mollis','89024B89-0395-9227-1EF5-2CA58D9ADFD4','422','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2200','consectetuer rhoncus. Nullam','5FFFEBA4-2778-1D59-5ECE-77DAB036FB39','108','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2205','dictum eu, placerat','7CAF8031-FFF5-E98E-E92B-CF5577A3B81B','588','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2210','varius. Nam','D99F7B6B-E93E-4F39-8FDC-8002ABE2E769','97','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2215','ac nulla.','2D59DA87-C133-4E26-C884-A4201C4C0AAF','575','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2220','Proin','EB66581A-3E64-5C8E-8919-B47E88AD4C0B','653','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2225','lectus quis massa.','F21185AC-26C5-C5B3-D7A1-BC4823717856','578','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2230','iaculis nec, eleifend','6C78D182-48BC-59CD-DC30-0B22749C2B4F','222','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2235','ultricies ornare, elit','D93CBCA4-0FF4-969D-7A20-7087E000D421','279','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2240','mauris blandit','4A56252E-E84B-4186-358D-09F8E54BA50E','41','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2245','metus. Aliquam','7A41AC6E-0EE0-8F50-F8A2-E75E12E8EE8E','995','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2250','imperdiet ullamcorper.','1495257A-B908-A2CD-DAE2-8D90CC112835','154','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2255','ut, nulla. Cras','581729B2-29EF-4375-74CD-7D3E3E3BE833','374','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2260','non, cursus non,','FEA6A36E-6A84-1085-EF5B-5FE9E04D246B','266','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2265','magna','FD5E6ACE-A96B-B983-5D2D-946A1331DEF9','516','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2270','lectus','1CC5D4AB-8A90-7D8E-933D-B67E4DF558A1','556','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2275','viverra.','2C1D68C6-FD20-A7A7-9379-6263460261D1','286','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2280','sed consequat auctor,','BF62F337-C7CC-E4A0-ED01-AE06A8AF9F0B','64','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2285','sit amet','94C4DD6F-65D0-B9CC-5867-7527D61D97D1','936','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2290','urna','1D7D0113-170A-14EF-61D6-18121F180AE5','6','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2295','ridiculus','B8623B53-9BFB-45CA-E3C2-63230E351094','907','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2300','nulla.','92010023-5A24-310B-E59D-4FE24B85C3E8','164','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2305','Suspendisse ac','63C3D4A3-4414-23A5-6D1E-FA68D1481792','109','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2310','erat','C1F8BCED-02DB-1E8A-0A6C-AF2CB027CB06','604','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2315','vitae,','53CF37F0-0255-1641-D76C-E3F148281A42','191','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2320','feugiat','C6B6D2D4-D1BA-1216-C6EE-AED04E564D87','588','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2325','montes, nascetur ridiculus','74B4B28D-2480-BBE0-7CF1-1123AEDC6911','465','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2330','quis','6413092D-2CD8-D0B1-7C8C-0E5E9C203CCF','309','11');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2335','egestas rhoncus. Proin','D21F3FAF-1CD6-FD56-8C84-51D1F3FA3207','342','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2340','nonummy ac,','170822FC-22CF-6B9C-CE9C-8F88C6758258','9','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2345','laoreet','DA2125C6-1EF8-AFF9-A963-169B63047699','906','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2350','mauris. Integer','AF8D4FF2-7687-36DE-DFAC-A399F504DF73','35','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2355','vitae purus','97B430DD-CC15-F250-F593-770A36871AE9','284','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2360','sed,','01E2F4CA-9F3A-20F3-E8F6-5872AC6D2884','327','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2365','lorem fringilla','13936668-0EAE-C373-9D30-08AF8105C102','724','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2370','Integer vulputate,','BD9CB8AF-B0A3-C00C-D59B-6D3C635A749E','74','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2375','fames','C9E67590-0E9A-D513-2C22-ED013FC43C9C','51','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2380','elementum','EE5DD4EF-0E56-4B44-8A38-AF9FA5984157','205','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2385','dis parturient','32BE1104-7853-9318-19EC-D978B0E54066','988','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2390','vulputate, nisi','834025C4-F4C8-3B0F-01B1-83EFC2BC9FDA','135','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2395','Sed dictum.','FEE2DB67-1843-AB7C-76EC-479C4F06B01F','584','5');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2400','lobortis, nisi','77AA345C-091E-8095-C7FE-58E1B4A77168','148','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2405','lobortis quis,','589AC1C0-980B-21AE-7B45-35104A68BBAD','847','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2410','accumsan','2FA09401-2E1A-0A5E-0EC7-6E5F9A5D7BD3','841','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2415','arcu. Sed et','04788646-1191-669A-341C-00D2E1BD79F4','212','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2420','lectus, a','06388900-015E-96E1-D400-CCE0CFFD9381','848','6');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2425','sem, consequat','A2F11A95-EFAD-523C-BBE5-F3DC90F549FC','9','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2430','sed dictum eleifend,','8E8CEA40-E171-83CB-6A9E-598600AA3EE1','93','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2435','Proin eget','7FC090A0-07F4-5C09-6DBA-948853D2E572','786','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2440','Aenean massa. Integer','A2F5AF1B-3B79-1DC3-03A7-06D6D6966C91','774','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2445','Donec est. Nunc','292EB759-875F-5AFA-3C67-3299B55AD697','397','7');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2450','gravida molestie','92B7FB23-3F0A-FEAA-3E6F-E3FE8D1292CC','967','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2455','egestas','DFE18899-FD8E-232A-F6A5-63079774FBC5','499','8');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2460','Integer tincidunt','86273302-D5D6-4C7D-3725-7C2618FB6F15','566','1');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2465','ac risus.','9027BFA5-433F-8EC6-D205-5AF184B1CF69','884','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2470','convallis erat,','A2339094-D22A-6B77-89B1-7E527560B04D','944','2');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2475','Nulla eget','B50C312C-F531-9492-B163-07BC45665080','71','3');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2480','odio tristique pharetra.','3BB2E704-0FC0-F52D-E648-9B4D28FCD4C9','733','4');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2485','nibh. Donec est','3707FDBC-5A23-CB84-1DB1-0EF42672DE3A','488','10');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2490','et nunc.','913024EE-7FCF-5A35-FCD5-AC9F26C3AD98','792','9');
Insert into PRODUCTS (ID,NAME,REFERENCE,PRICE,CATEGORY_ID) values ('2495','Quisque ornare','CEDE07B9-3D1F-851C-4589-C9F8B6DCB2C1','461','3');
--------------------------------------------------------
--  Constraints for Table LOGMNR_IND$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_IND$" ADD CONSTRAINT "LOGMNR_IND$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE
  ALTER TABLE "LOGMNR_IND$" MODIFY ("OBJ#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNRC_DBNAME_UID_MAP
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_DBNAME_UID_MAP" ADD CONSTRAINT "LOGMNRC_DBNAME_UID_MAP_PK" PRIMARY KEY ("GLOBAL_NAME") ENABLE
  ALTER TABLE "LOGMNRC_DBNAME_UID_MAP" MODIFY ("GLOBAL_NAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_GROUPED_COLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_GROUPED_COLUMN" ADD CONSTRAINT "REPCAT$_GROUPED_COLUMN_PK" PRIMARY KEY ("SNAME", "ONAME", "GROUP_NAME", "COLUMN_NAME", "POS") ENABLE
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPCATLOG
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPCATLOG" ADD CONSTRAINT "REPCAT$_REPCATLOG_PRIMARY" PRIMARY KEY ("ID", "SOURCE", "ROLE", "MASTER") ENABLE
  ALTER TABLE "REPCAT$_REPCATLOG" ADD CONSTRAINT "REPCAT$_REPCATLOG_STATUS" CHECK (status IN (0, 1, 2, 3, 4)) ENABLE
  ALTER TABLE "REPCAT$_REPCATLOG" ADD CONSTRAINT "REPCAT$_REPCATLOG_TYPE" CHECK (type IN (-1, 0, 1, 2, 4, 5, 7, 8, 9, 11, 12, -3,
                                    13, 14, 32, 33)) ENABLE
  ALTER TABLE "REPCAT$_REPCATLOG" ADD CONSTRAINT "REPCAT$_REPCATLOG_REQUEST" CHECK (request IN (-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                                       11, 12, 13, 14, 15, 16, 17,
                                       18, 19, 20, 21, 22, 23, 24, 25)) ENABLE
--------------------------------------------------------
--  Constraints for Table MARCAS
--------------------------------------------------------

  ALTER TABLE "MARCAS" ADD PRIMARY KEY ("ID") ENABLE
  ALTER TABLE "MARCAS" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$EDS_TABLES
--------------------------------------------------------

  ALTER TABLE "LOGSTDBY$EDS_TABLES" ADD CONSTRAINT "LOGSTDBY$EDS_TABLES_PKEY" PRIMARY KEY ("OWNER", "TABLE_NAME") ENABLE
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPSCHEMA
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPSCHEMA" ADD CONSTRAINT "REPCAT$_REPSCHEMA_PRIMARY" PRIMARY KEY ("SNAME", "DBLINK", "GOWNER") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_TAB$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TAB$" ADD CONSTRAINT "LOGMNR_TAB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE
  ALTER TABLE "LOGMNR_TAB$" MODIFY ("OBJ#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_OPQTYPE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_OPQTYPE$" ADD CONSTRAINT "LOGMNR_OPQTYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE
  ALTER TABLE "LOGMNR_OPQTYPE$" MODIFY ("OBJ#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNR_OPQTYPE$" MODIFY ("INTCOL#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_SITES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_SITES" ADD CONSTRAINT "REPCAT$_TEMPLATE_SITES_U1" UNIQUE ("REFRESH_TEMPLATE_NAME", "USER_NAME", "SITE_NAME", "REPAPI_SITE_ID") ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" ADD CONSTRAINT "REPCAT$_TEMPLATE_SITES_PK" PRIMARY KEY ("TEMPLATE_SITE_ID") ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" ADD CONSTRAINT "REPCAT$_TEMPLATE_SITES_C2" CHECK ((site_name is not null and repapi_site_id is null) or
   (site_name is null and repapi_site_id is not null)) ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" ADD CONSTRAINT "REPCAT$_TEMPLATE_SITES_C1" CHECK (status in (-100,-1,0,1)) ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" MODIFY ("STATUS" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" MODIFY ("USER_NAME" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_TEMPLATE_SITES" MODIFY ("REFRESH_TEMPLATE_NAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_DICTSTATE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_DICTSTATE$" ADD CONSTRAINT "LOGMNR_DICTSTATE$_PK" PRIMARY KEY ("LOGMNR_UID") DISABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOG$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_LOG$" ADD CONSTRAINT "LOGMNR_LOG$_PK" PRIMARY KEY ("SESSION#", "THREAD#", "SEQUENCE#", "FIRST_CHANGE#", "DB_ID", "RESETLOGS_CHANGE#", "RESET_TIMESTAMP") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_KOPM$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_KOPM$" ADD CONSTRAINT "LOGMNR_KOPM$_PK" PRIMARY KEY ("LOGMNR_UID", "NAME") DISABLE
  ALTER TABLE "LOGMNR_KOPM$" MODIFY ("NAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table VEHICULOS
--------------------------------------------------------

  ALTER TABLE "VEHICULOS" ADD PRIMARY KEY ("ID") ENABLE
  ALTER TABLE "VEHICULOS" MODIFY ("MARCA_ID" NOT NULL ENABLE)
  ALTER TABLE "VEHICULOS" MODIFY ("TIPO" NOT NULL ENABLE)
  ALTER TABLE "VEHICULOS" MODIFY ("VALOR" NOT NULL ENABLE)
  ALTER TABLE "VEHICULOS" MODIFY ("FABRICANTE_ID" NOT NULL ENABLE)
  ALTER TABLE "VEHICULOS" MODIFY ("AÑO" NOT NULL ENABLE)
  ALTER TABLE "VEHICULOS" MODIFY ("PLACA" NOT NULL ENABLE)
  ALTER TABLE "VEHICULOS" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" ADD CONSTRAINT "MVIEW$_ADV_ELIGIBLE_PK" PRIMARY KEY ("SUMOBJN#", "RUNID#") ENABLE
  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" MODIFY ("FREQUENCY" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" MODIFY ("FLAGS" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" MODIFY ("BYTECOST" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" MODIFY ("RUNID#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_ELIGIBLE" MODIFY ("SUMOBJN#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_AUDIT_ATTRIBUTE
--------------------------------------------------------

  ALTER TABLE "REPCAT$_AUDIT_ATTRIBUTE" ADD CONSTRAINT "REPCAT$_AUDIT_ATTRIBUTE_PK" PRIMARY KEY ("ATTRIBUTE") ENABLE
  ALTER TABLE "REPCAT$_AUDIT_ATTRIBUTE" ADD CONSTRAINT "REPCAT$_AUDIT_ATTRIBUTE_C1" CHECK ((data_type_id in (2, 4, 5, 6, 7) and
                  data_length is not null)
              or (data_type_id not in (2, 4, 5, 6, 7) and
                  data_length is null)
                 ) ENABLE
  ALTER TABLE "REPCAT$_AUDIT_ATTRIBUTE" MODIFY ("SOURCE" CONSTRAINT "REPCAT$_AUDIT_ATTRIBUTE_NN2" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_AUDIT_ATTRIBUTE" MODIFY ("DATA_TYPE_ID" CONSTRAINT "REPCAT$_AUDIT_ATTRIBUTE_NN1" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_USER_PARM_VALUES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_USER_PARM_VALUES" ADD CONSTRAINT "REPCAT$_USER_PARM_VALUES_U1" UNIQUE ("TEMPLATE_PARAMETER_ID", "USER_ID") ENABLE
  ALTER TABLE "REPCAT$_USER_PARM_VALUES" ADD CONSTRAINT "REPCAT$_USER_PARM_VALUES_PK" PRIMARY KEY ("USER_PARAMETER_ID") ENABLE
  ALTER TABLE "REPCAT$_USER_PARM_VALUES" MODIFY ("USER_ID" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_USER_PARM_VALUES" MODIFY ("TEMPLATE_PARAMETER_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPOBJECT
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_PRIMARY" PRIMARY KEY ("SNAME", "ONAME", "TYPE") ENABLE
  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_GENTRIGGER" CHECK (gentrigger IN (0, 1, 2)) ENABLE
  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_GENPACKAGE" CHECK (genpackage IN (0, 1, 2)) ENABLE
  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_STATUS" CHECK (status IN (0, 1, 2, 3, 4, 5, 6)) ENABLE
  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_VERSION" CHECK (version# >= 0 AND version# < 65536) ENABLE
  ALTER TABLE "REPCAT$_REPOBJECT" ADD CONSTRAINT "REPCAT$_REPOBJECT_TYPE" CHECK (type IN (-1, 1, 2, 4, 5, 7, 8, 9, 11, 12, -3,
                                      -4, 13, 14, 32, 33)) ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_INDCOMPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_INDCOMPART$" ADD CONSTRAINT "LOGMNR_INDCOMPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE
  ALTER TABLE "LOGMNR_INDCOMPART$" MODIFY ("PART#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_TS$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TS$" ADD CONSTRAINT "LOGMNR_TS$_PK" PRIMARY KEY ("LOGMNR_UID", "TS#") DISABLE
  ALTER TABLE "LOGMNR_TS$" MODIFY ("BLOCKSIZE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_RESOLUTION_STATISTICS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("PRIMARY_KEY_VALUE" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN8" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("RESOLVED_DATE" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN7" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("FUNCTION_NAME" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN6" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("METHOD_NAME" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN5" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("REFERENCE_NAME" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN4" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("CONFLICT_TYPE_ID" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN3" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("ONAME" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN2" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_RESOLUTION_STATISTICS" MODIFY ("SNAME" CONSTRAINT "REPCAT$_RESOLUTION_STATS_NN1" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_JOURNAL
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_JOURNAL" ADD CONSTRAINT "MVIEW$_ADV_JOURNAL_PK" PRIMARY KEY ("RUNID#", "SEQ#") ENABLE
  ALTER TABLE "MVIEW$_ADV_JOURNAL" MODIFY ("FLAGS" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_JOURNAL" MODIFY ("TIMESTAMP" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_JOURNAL" MODIFY ("SEQ#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_JOURNAL" MODIFY ("RUNID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_SEED$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SEED$" ADD CONSTRAINT "LOGMNR_SEED$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE
  ALTER TABLE "LOGMNR_SEED$" MODIFY ("NULL$" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_TYPE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TYPE$" ADD CONSTRAINT "LOGMNR_TYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "TOID", "VERSION#") DISABLE
  ALTER TABLE "LOGMNR_TYPE$" MODIFY ("TOID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_COLUMN_GROUP
--------------------------------------------------------

  ALTER TABLE "REPCAT$_COLUMN_GROUP" ADD CONSTRAINT "REPCAT$_COLUMN_GROUP_PK" PRIMARY KEY ("SNAME", "ONAME", "GROUP_NAME") ENABLE
  ALTER TABLE "REPCAT$_COLUMN_GROUP" MODIFY ("GROUP_NAME" CONSTRAINT "REPCAT$_COLUMN_GROUP_NN3" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_COLUMN_GROUP" MODIFY ("ONAME" CONSTRAINT "REPCAT$_COLUMN_GROUP_NN2" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_COLUMN_GROUP" MODIFY ("SNAME" CONSTRAINT "REPCAT$_COLUMN_GROUP_NN1" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_OUTPUT
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_OUTPUT" ADD CONSTRAINT "MVIEW$_ADV_OUTPUT_PK" PRIMARY KEY ("RUNID#", "RANK#") ENABLE
  ALTER TABLE "MVIEW$_ADV_OUTPUT" MODIFY ("BENEFIT_TO_COST_RATIO" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_OUTPUT" MODIFY ("OUTPUT_TYPE" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_OUTPUT" MODIFY ("RUNID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_AJG
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_AJG" ADD CONSTRAINT "MVIEW$_ADV_AJG_PK" PRIMARY KEY ("AJGID#") ENABLE
  ALTER TABLE "MVIEW$_ADV_AJG" MODIFY ("HASHVALUE" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_AJG" MODIFY ("AJGDES" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_AJG" MODIFY ("AJGDESLEN" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_AJG" MODIFY ("RUNID#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_AJG" MODIFY ("AJGID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_TABCOMPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TABCOMPART$" ADD CONSTRAINT "LOGMNR_TABCOMPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE
  ALTER TABLE "LOGMNR_TABCOMPART$" MODIFY ("PART#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "PRODUCTS" ADD CONSTRAINT "CK_PRICE" CHECK (price>0) ENABLE
  ALTER TABLE "PRODUCTS" ADD PRIMARY KEY ("ID") ENABLE
--------------------------------------------------------
--  Constraints for Table CATEGORIES
--------------------------------------------------------

  ALTER TABLE "CATEGORIES" ADD CONSTRAINT "CK_CATEGORIES" CHECK (season in ('winter','summer', 'spring', 'autumn')) ENABLE
  ALTER TABLE "CATEGORIES" ADD PRIMARY KEY ("ID") ENABLE
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_STATUS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_STATUS" ADD CONSTRAINT "REPCAT$_TEMPLATE_STATUS_PK" PRIMARY KEY ("TEMPLATE_STATUS_ID") ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_STATUS" MODIFY ("STATUS_TYPE_NAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DEF$_LOB
--------------------------------------------------------

  ALTER TABLE "DEF$_LOB" ADD CONSTRAINT "DEF$_LOB_PRIMARY" PRIMARY KEY ("ID") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOGMNR_BUILDLOG
--------------------------------------------------------

  ALTER TABLE "LOGMNR_LOGMNR_BUILDLOG" ADD CONSTRAINT "LOGMNR_LOGMNR_BUILDLOG_PK" PRIMARY KEY ("LOGMNR_UID", "INITIAL_XID") DISABLE
  ALTER TABLE "LOGMNR_LOGMNR_BUILDLOG" MODIFY ("INITIAL_XID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table VEHICULOS_INTERCAMBIO
--------------------------------------------------------

  ALTER TABLE "VEHICULOS_INTERCAMBIO" ADD PRIMARY KEY ("ID") ENABLE
  ALTER TABLE "VEHICULOS_INTERCAMBIO" MODIFY ("AÑO" NOT NULL ENABLE)
  ALTER TABLE "VEHICULOS_INTERCAMBIO" MODIFY ("MODELO" NOT NULL ENABLE)
  ALTER TABLE "VEHICULOS_INTERCAMBIO" MODIFY ("PLACA" NOT NULL ENABLE)
  ALTER TABLE "VEHICULOS_INTERCAMBIO" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_REFGROUPS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_REFGROUPS" ADD CONSTRAINT "REPCAT$_TEMPLATE_REFGROUPS_PK" PRIMARY KEY ("REFRESH_GROUP_ID") ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_REFGROUPS" MODIFY ("REFRESH_TEMPLATE_ID" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_TEMPLATE_REFGROUPS" MODIFY ("REFRESH_GROUP_NAME" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_TEMPLATE_REFGROUPS" MODIFY ("REFRESH_GROUP_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_UID$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_UID$" ADD CONSTRAINT "LOGMNR_UID$_PK" PRIMARY KEY ("SESSION#") ENABLE
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_TARGETS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_TARGETS" ADD CONSTRAINT "TEMPLATE$_TARGETS_PK" PRIMARY KEY ("TEMPLATE_TARGET_ID") ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_TARGETS" MODIFY ("TARGET_DATABASE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_KEY_COLUMNS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_KEY_COLUMNS" ADD CONSTRAINT "REPCAT$_KEY_COLUMNS_PRIMARY" PRIMARY KEY ("SNAME", "ONAME", "COL") ENABLE
--------------------------------------------------------
--  Constraints for Table REPCAT$_CONFLICT
--------------------------------------------------------

  ALTER TABLE "REPCAT$_CONFLICT" ADD CONSTRAINT "REPCAT$_CONFLICT_PK" PRIMARY KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME") ENABLE
  ALTER TABLE "REPCAT$_CONFLICT" ADD CONSTRAINT "REPCAT$_CONFLICT_C1" CHECK (conflict_type_id in (1, 2, 3)) ENABLE
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_WORKLOAD
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_WORKLOAD" ADD CONSTRAINT "MVIEW$_ADV_WORKLOAD_PK" PRIMARY KEY ("QUERYID#") ENABLE
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("SQL_TEXTLEN" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("SQL_TEXT" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("UNAME" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("COLLECTTIME" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("COLLECTIONID#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_WORKLOAD" MODIFY ("QUERYID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_NTAB$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_NTAB$" ADD CONSTRAINT "LOGMNR_NTAB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE
  ALTER TABLE "LOGMNR_NTAB$" MODIFY ("OBJ#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_AUDIT_COLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_AUDIT_COLUMN" ADD CONSTRAINT "REPCAT$_AUDIT_COLUMN_PK" PRIMARY KEY ("COLUMN_NAME", "ONAME", "SNAME") ENABLE
  ALTER TABLE "REPCAT$_AUDIT_COLUMN" MODIFY ("ATTRIBUTE" CONSTRAINT "REPCAT$_AUDIT_COLUMN_NN5" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_AUDIT_COLUMN" MODIFY ("BASE_REFERENCE_NAME" CONSTRAINT "REPCAT$_AUDIT_COLUMN_NN4" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_AUDIT_COLUMN" MODIFY ("BASE_CONFLICT_TYPE_ID" CONSTRAINT "REPCAT$_AUDIT_COLUMN_NN3" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_AUDIT_COLUMN" MODIFY ("BASE_ONAME" CONSTRAINT "REPCAT$_AUDIT_COLUMN_NN2" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_AUDIT_COLUMN" MODIFY ("BASE_SNAME" CONSTRAINT "REPCAT$_AUDIT_COLUMN_NN1" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GTCS
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_GTCS" ADD CONSTRAINT "LOGMNRC_GTCS_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "OBJV#", "INTCOL#") ENABLE
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("TYPE#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("COLNAME" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("INTCOL#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("SEGCOL#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("OBJV#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("OBJ#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTCS" MODIFY ("LOGMNR_UID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$FLASHBACK_SCN
--------------------------------------------------------

  ALTER TABLE "LOGSTDBY$FLASHBACK_SCN" ADD PRIMARY KEY ("PRIMARY_SCN") ENABLE
  ALTER TABLE "LOGSTDBY$FLASHBACK_SCN" MODIFY ("PRIMARY_SCN" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_LEVEL
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_LEVEL" ADD CONSTRAINT "MVIEW$_ADV_LEVEL_PK" PRIMARY KEY ("RUNID#", "LEVELID#") ENABLE
  ALTER TABLE "MVIEW$_ADV_LEVEL" MODIFY ("COLUMNLIST" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_LEVEL" MODIFY ("TBLOBJ#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_LEVEL" MODIFY ("FLAGS" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_LEVEL" MODIFY ("LEVELID#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_LEVEL" MODIFY ("RUNID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_GENERATED
--------------------------------------------------------

  ALTER TABLE "REPCAT$_GENERATED" ADD CONSTRAINT "REPCAT$_REPGEN_PRIMARY" PRIMARY KEY ("SNAME", "ONAME", "TYPE", "BASE_SNAME", "BASE_ONAME", "BASE_TYPE") ENABLE
  ALTER TABLE "REPCAT$_GENERATED" ADD CONSTRAINT "REPCAT$_GENERATED_OBJ" CHECK (reason IN (0, 1, 2, 3, 4, 5, 6, 7, 9, 10)) ENABLE
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPCAT
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPCAT" ADD CONSTRAINT "REPCAT$_REPCAT_PRIMARY" PRIMARY KEY ("SNAME", "GOWNER") ENABLE
  ALTER TABLE "REPCAT$_REPCAT" ADD CONSTRAINT "REPCAT$_REPCAT_STATUS" CHECK (status IN (0, 1, 2)) ENABLE
--------------------------------------------------------
--  Constraints for Table ANSWERS
--------------------------------------------------------

  ALTER TABLE "ANSWERS" ADD CONSTRAINT "CK_ANSWER" CHECK (price>0) ENABLE
  ALTER TABLE "ANSWERS" ADD PRIMARY KEY ("ID") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_INDPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_INDPART$" ADD CONSTRAINT "LOGMNR_INDPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "BO#") DISABLE
  ALTER TABLE "LOGMNR_INDPART$" MODIFY ("TS#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GTLO
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_GTLO" ADD CONSTRAINT "LOGMNRC_GTLO_PK" PRIMARY KEY ("LOGMNR_UID", "KEYOBJ#", "BASEOBJV#") ENABLE
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("START_SCN" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("INTCOLS" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("LVL0NAME" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("OWNERNAME" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("LVL0TYPE#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("BASEOBJV#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("BASEOBJ#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("LVLCNT" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("KEYOBJ#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GTLO" MODIFY ("LOGMNR_UID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_SITES_NEW
--------------------------------------------------------

  ALTER TABLE "REPCAT$_SITES_NEW" ADD CONSTRAINT "REPCAT$_SITES_NEW_PK" PRIMARY KEY ("EXTENSION_ID", "GOWNER", "GNAME", "DBLINK") ENABLE
  ALTER TABLE "REPCAT$_SITES_NEW" ADD CONSTRAINT "REPCAT$_SITES_NEW_FULL_INST" CHECK (full_instantiation IN ('Y', 'N')) ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_SPILL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SPILL$" ADD CONSTRAINT "LOGMNR_SPILL$_PK" PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "STARTIDX", "ENDIDX", "FLAG", "SEQUENCE#") ENABLE
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_LOG
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_LOG" ADD CONSTRAINT "MVIEW$_ADV_LOG_PK" PRIMARY KEY ("RUNID#") ENABLE
  ALTER TABLE "MVIEW$_ADV_LOG" MODIFY ("STATUS" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DEF$_DEFAULTDEST
--------------------------------------------------------

  ALTER TABLE "DEF$_DEFAULTDEST" ADD CONSTRAINT "DEF$_DEFAULTDEST_PRIMARY" PRIMARY KEY ("DBLINK") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_ICOL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_ICOL$" ADD CONSTRAINT "LOGMNR_ICOL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE
  ALTER TABLE "LOGMNR_ICOL$" MODIFY ("INTCOL#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPPROP
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPPROP" ADD CONSTRAINT "REPCAT$_REPPROP_PRIMARY" PRIMARY KEY ("SNAME", "ONAME", "TYPE", "DBLINK") ENABLE
  ALTER TABLE "REPCAT$_REPPROP" ADD CONSTRAINT "REPCAT$_REPPROP_HOW" CHECK (how IN (0, 1, 2, 3)) ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNRP_CTAS_PART_MAP
--------------------------------------------------------

  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" ADD CONSTRAINT "LOGMNRP_CTAS_PART_MAP_PK" PRIMARY KEY ("LOGMNR_UID", "BASEOBJV#", "KEYOBJ#") ENABLE
  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" MODIFY ("PART#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" MODIFY ("KEYOBJ#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" MODIFY ("BASEOBJV#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" MODIFY ("BASEOBJ#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRP_CTAS_PART_MAP" MODIFY ("LOGMNR_UID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_REFCON$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_REFCON$" ADD CONSTRAINT "LOGMNR_REFCON$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE
  ALTER TABLE "LOGMNR_REFCON$" MODIFY ("OBJ#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_BASETABLE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_BASETABLE" MODIFY ("QUERYID#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_BASETABLE" MODIFY ("COLLECTIONID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DEF$_PROPAGATOR
--------------------------------------------------------

  ALTER TABLE "DEF$_PROPAGATOR" ADD CONSTRAINT "DEF$_PROPAGATOR_PRIMARY" PRIMARY KEY ("USERID") ENABLE
  ALTER TABLE "DEF$_PROPAGATOR" MODIFY ("CREATED" NOT NULL ENABLE)
  ALTER TABLE "DEF$_PROPAGATOR" MODIFY ("USERNAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_OBJECTS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" ADD CONSTRAINT "REPCAT$_TEMPLATE_OBJECTS_U1" UNIQUE ("OBJECT_NAME", "OBJECT_TYPE", "REFRESH_TEMPLATE_ID", "SCHEMA_NAME", "DDL_NUM") ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" ADD CONSTRAINT "REPCAT$_TEMPLATE_OBJECTS_PK" PRIMARY KEY ("TEMPLATE_OBJECT_ID") ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" ADD CONSTRAINT "REPCAT$_TEMPLATE_OBJECTS_VER" CHECK (object_version# >= 0 AND object_version# < 65536) ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("TEMPLATE_REFGROUP_ID" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("DDL_NUM" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("OBJECT_TYPE" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("OBJECT_NAME" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("REFRESH_TEMPLATE_ID" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_TEMPLATE_OBJECTS" MODIFY ("TEMPLATE_OBJECT_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_ROLLUP
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_PK" PRIMARY KEY ("RUNID#", "CLEVELID#", "PLEVELID#") ENABLE
  ALTER TABLE "MVIEW$_ADV_ROLLUP" MODIFY ("FLAGS" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_ROLLUP" MODIFY ("PLEVELID#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_ROLLUP" MODIFY ("CLEVELID#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_ROLLUP" MODIFY ("RUNID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_SESSION$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SESSION$" ADD CONSTRAINT "LOGMNR_SESSION_UK1" UNIQUE ("SESSION_NAME") ENABLE
  ALTER TABLE "LOGMNR_SESSION$" ADD CONSTRAINT "LOGMNR_SESSION_PK" PRIMARY KEY ("SESSION#") ENABLE
  ALTER TABLE "LOGMNR_SESSION$" MODIFY ("SESSION_NAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNRT_MDDL$
--------------------------------------------------------

  ALTER TABLE "LOGMNRT_MDDL$" ADD CONSTRAINT "LOGMNRT_MDDL$_PK" PRIMARY KEY ("SOURCE_OBJ#", "SOURCE_ROWID") ENABLE
  ALTER TABLE "LOGMNRT_MDDL$" MODIFY ("DEST_ROWID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GSII
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_GSII" ADD CONSTRAINT "LOGMNRC_GSII_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") ENABLE
  ALTER TABLE "LOGMNRC_GSII" MODIFY ("INDTYPE#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GSII" MODIFY ("BO#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GSII" MODIFY ("OBJ#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GSII" MODIFY ("LOGMNR_UID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_EXCEPTIONS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_EXCEPTIONS" ADD CONSTRAINT "REPCAT$_EXCEPTIONS_PK" PRIMARY KEY ("EXCEPTION_ID") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_COLTYPE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_COLTYPE$" ADD CONSTRAINT "LOGMNR_COLTYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE
  ALTER TABLE "LOGMNR_COLTYPE$" MODIFY ("OBJ#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DEF$_ERROR
--------------------------------------------------------

  ALTER TABLE "DEF$_ERROR" ADD CONSTRAINT "DEF$_ERROR_PRIMARY" PRIMARY KEY ("ENQ_TID") ENABLE
--------------------------------------------------------
--  Constraints for Table DEF$_PUSHED_TRANSACTIONS
--------------------------------------------------------

  ALTER TABLE "DEF$_PUSHED_TRANSACTIONS" ADD CONSTRAINT "DEF$_PUSHED_TRAN_PRIMARY" PRIMARY KEY ("SOURCE_SITE_ID") ENABLE
  ALTER TABLE "DEF$_PUSHED_TRANSACTIONS" ADD CHECK (disabled IN ('T', 'F')) ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_SESSION_ACTIONS$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SESSION_ACTIONS$" ADD CONSTRAINT "LOGMNR_SESSION_ACTION$_PK" PRIMARY KEY ("LOGMNRSESSION#", "ACTIONNAME") ENABLE
  ALTER TABLE "LOGMNR_SESSION_ACTIONS$" MODIFY ("ACTIONTYPE#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNR_SESSION_ACTIONS$" MODIFY ("PROCESSROLE#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNR_SESSION_ACTIONS$" MODIFY ("LOGMNRSESSION#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNR_SESSION_ACTIONS$" MODIFY ("ACTIONNAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_OBJ$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_OBJ$" ADD CONSTRAINT "LOGMNR_OBJ$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE
  ALTER TABLE "LOGMNR_OBJ$" MODIFY ("OBJ#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_PROCESSED_LOG$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_PROCESSED_LOG$" ADD CONSTRAINT "LOGMNR_PROCESSED_LOG$_PK" PRIMARY KEY ("SESSION#", "THREAD#") ENABLE
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPCOLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPCOLUMN" ADD CONSTRAINT "REPCAT$_REPCOLUMN_PK" PRIMARY KEY ("SNAME", "ONAME", "TYPE", "CNAME") ENABLE
  ALTER TABLE "REPCAT$_REPCOLUMN" ADD CONSTRAINT "REPCAT$_REPCOLUMN_VERSION" CHECK (version# >= 0 AND version# < 65536) ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_DICTIONARY$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_DICTIONARY$" ADD CONSTRAINT "LOGMNR_DICTIONARY$_PK" PRIMARY KEY ("LOGMNR_UID") DISABLE
  ALTER TABLE "LOGMNR_DICTIONARY$" MODIFY ("DB_DICT_OBJECTCOUNT" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_PARAMETERS
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_PARAMETERS" ADD CONSTRAINT "MVIEW$_ADV_PARAMETERS_PK" PRIMARY KEY ("PARAMETER_NAME") ENABLE
  ALTER TABLE "MVIEW$_ADV_PARAMETERS" MODIFY ("PARAMETER_TYPE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_PARAMETER_COLUMN
--------------------------------------------------------

  ALTER TABLE "REPCAT$_PARAMETER_COLUMN" ADD CONSTRAINT "REPCAT$_PARAMETER_COLUMN_PK" PRIMARY KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO", "PARAMETER_TABLE_NAME", "PARAMETER_SEQUENCE_NO", "COLUMN_POS") ENABLE
--------------------------------------------------------
--  Constraints for Table REPCAT$_INSTANTIATION_DDL
--------------------------------------------------------

  ALTER TABLE "REPCAT$_INSTANTIATION_DDL" ADD CONSTRAINT "REPCAT$_INSTANTIATION_DDL_PK" PRIMARY KEY ("REFRESH_TEMPLATE_ID", "PHASE", "DDL_NUM") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_CCOL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_CCOL$" ADD CONSTRAINT "LOGMNR_CCOL$_PK" PRIMARY KEY ("LOGMNR_UID", "CON#", "INTCOL#") DISABLE
  ALTER TABLE "LOGMNR_CCOL$" MODIFY ("INTCOL#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_EXTENSION
--------------------------------------------------------

  ALTER TABLE "REPCAT$_EXTENSION" ADD PRIMARY KEY ("EXTENSION_ID") ENABLE
  ALTER TABLE "REPCAT$_EXTENSION" ADD CONSTRAINT "REPCAT$_EXTENSION_PUSH_TO_NEW" CHECK (push_to_new IN ('Y', 'N')) ENABLE
  ALTER TABLE "REPCAT$_EXTENSION" ADD CONSTRAINT "REPCAT$_EXTENSION_PUSH_TO_MDEF" CHECK (push_to_mdef IN ('Y', 'N')) ENABLE
  ALTER TABLE "REPCAT$_EXTENSION" ADD CONSTRAINT "REPCAT$_EXTENSION_STATUS" CHECK (extension_status IN (0, 1, 2, 3, 4)) ENABLE
  ALTER TABLE "REPCAT$_EXTENSION" ADD CONSTRAINT "REPCAT$_EXTENSION_EXPORTREQ" CHECK (export_required IN ('Y', 'N')) ENABLE
  ALTER TABLE "REPCAT$_EXTENSION" ADD CONSTRAINT "REPCAT$_EXTENSION_CODE" CHECK (extension_code IN (0)) ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_SESSION_EVOLVE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SESSION_EVOLVE$" ADD CONSTRAINT "LOGMNR_SESSION_EVOLVE$_PK" PRIMARY KEY ("SESSION#", "DB_ID", "RESET_SCN", "RESET_TIMESTAMP") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOB$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_LOB$" ADD CONSTRAINT "LOGMNR_LOB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE
  ALTER TABLE "LOGMNR_LOB$" MODIFY ("CHUNK" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table SQLPLUS_PRODUCT_PROFILE
--------------------------------------------------------

  ALTER TABLE "SQLPLUS_PRODUCT_PROFILE" MODIFY ("PRODUCT" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DEF$_DESTINATION
--------------------------------------------------------

  ALTER TABLE "DEF$_DESTINATION" ADD CONSTRAINT "DEF$_DESTINATION_PRIMARY" PRIMARY KEY ("DBLINK", "CATCHUP") ENABLE
  ALTER TABLE "DEF$_DESTINATION" MODIFY ("LAST_DELIVERED" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_RESTART_CKPT_TXINFO$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_RESTART_CKPT_TXINFO$" ADD CONSTRAINT "LOGMNR_RESTART_CKPT_TXINFO$_PK" PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "SESSION_NUM", "SERIAL_NUM", "EFFECTIVE_SCN") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GSBA
--------------------------------------------------------

  ALTER TABLE "LOGMNRC_GSBA" ADD CONSTRAINT "LOGMNRC_GSBA_PK" PRIMARY KEY ("LOGMNR_UID", "AS_OF_SCN") ENABLE
  ALTER TABLE "LOGMNRC_GSBA" MODIFY ("AS_OF_SCN" NOT NULL ENABLE)
  ALTER TABLE "LOGMNRC_GSBA" MODIFY ("LOGMNR_UID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_SUBCOLTYPE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_SUBCOLTYPE$" ADD CONSTRAINT "LOGMNR_SUBCOLTYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#", "TOID") DISABLE
  ALTER TABLE "LOGMNR_SUBCOLTYPE$" MODIFY ("OBJ#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNR_SUBCOLTYPE$" MODIFY ("VERSION#" NOT NULL ENABLE)
  ALTER TABLE "LOGMNR_SUBCOLTYPE$" MODIFY ("TOID" NOT NULL ENABLE)
  ALTER TABLE "LOGMNR_SUBCOLTYPE$" MODIFY ("INTCOL#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_PARTOBJ$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_PARTOBJ$" ADD CONSTRAINT "LOGMNR_PARTOBJ$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE
  ALTER TABLE "LOGMNR_PARTOBJ$" MODIFY ("OBJ#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_COL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_COL$" ADD CONSTRAINT "LOGMNR_COL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE
  ALTER TABLE "LOGMNR_COL$" MODIFY ("OBJ#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_RESOLUTION_METHOD
--------------------------------------------------------

  ALTER TABLE "REPCAT$_RESOLUTION_METHOD" ADD CONSTRAINT "REPCAT$_RESOL_METHOD_PK" PRIMARY KEY ("CONFLICT_TYPE_ID", "METHOD_NAME") ENABLE
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FILTERINSTANCE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_FILTERINSTANCE" MODIFY ("RUNID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_REFRESH_TEMPLATES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" ADD CONSTRAINT "REPCAT$_REFRESH_TEMPLATES_U1" UNIQUE ("REFRESH_TEMPLATE_NAME") ENABLE
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" ADD CONSTRAINT "REPCAT$_REFRESH_TEMPLATES_PK" PRIMARY KEY ("REFRESH_TEMPLATE_ID") ENABLE
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" ADD CONSTRAINT "REFRESH_TEMPLATES_C1" CHECK ((public_template in ('Y','N'))
   or public_template is NULL) ENABLE
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("TEMPLATE_STATUS_ID" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("TEMPLATE_TYPE_ID" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("REFRESH_GROUP_ID" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("REFRESH_TEMPLATE_NAME" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("REFRESH_GROUP_NAME" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("OWNER" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_REFRESH_TEMPLATES" MODIFY ("REFRESH_TEMPLATE_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$SKIP_SUPPORT
--------------------------------------------------------

  ALTER TABLE "LOGSTDBY$SKIP_SUPPORT" MODIFY ("NAME" NOT NULL ENABLE)
  ALTER TABLE "LOGSTDBY$SKIP_SUPPORT" MODIFY ("ACTION" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_CDEF$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_CDEF$" ADD CONSTRAINT "LOGMNR_CDEF$_PK" PRIMARY KEY ("LOGMNR_UID", "CON#") DISABLE
  ALTER TABLE "LOGMNR_CDEF$" MODIFY ("OBJ#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FJG
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_FJG" ADD CONSTRAINT "MVIEW$_ADV_FJG_PK" PRIMARY KEY ("FJGID#") ENABLE
  ALTER TABLE "MVIEW$_ADV_FJG" MODIFY ("HASHVALUE" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_FJG" MODIFY ("FJGDES" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_FJG" MODIFY ("FJGDESLEN" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_FJG" MODIFY ("AJGID#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_FJG" MODIFY ("FJGID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_INDSUBPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_INDSUBPART$" ADD CONSTRAINT "LOGMNR_INDSUBPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "POBJ#") DISABLE
  ALTER TABLE "LOGMNR_INDSUBPART$" MODIFY ("TS#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_TABSUBPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TABSUBPART$" ADD CONSTRAINT "LOGMNR_TABSUBPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "POBJ#") DISABLE
  ALTER TABLE "LOGMNR_TABSUBPART$" MODIFY ("TS#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_INTEGRATED_SPILL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_INTEGRATED_SPILL$" ADD CONSTRAINT "LOGMNR_INTEG_SPILL$_PK" PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "FLAG") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_USER$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_USER$" ADD CONSTRAINT "LOGMNR_USER$_PK" PRIMARY KEY ("LOGMNR_UID", "USER#") DISABLE
  ALTER TABLE "LOGMNR_USER$" MODIFY ("NAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_ATTRCOL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_ATTRCOL$" ADD CONSTRAINT "LOGMNR_ATTRCOL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE
  ALTER TABLE "LOGMNR_ATTRCOL$" MODIFY ("OBJ#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_FLAVOR_OBJECTS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_FLAVOR_OBJECTS" ADD CONSTRAINT "REPCAT$_FLAVOR_OBJECTS_PK" PRIMARY KEY ("SNAME", "ONAME", "TYPE", "GNAME", "FLAVOR_ID", "GOWNER") ENABLE
  ALTER TABLE "REPCAT$_FLAVOR_OBJECTS" ADD CONSTRAINT "REPCAT$_FLAVOR_OBJECTS_VERSION" CHECK (version# >= 0 AND version# < 65536) ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_PROPS$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_PROPS$" ADD CONSTRAINT "LOGMNR_PROPS$_PK" PRIMARY KEY ("LOGMNR_UID", "NAME") DISABLE
  ALTER TABLE "LOGMNR_PROPS$" MODIFY ("NAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOBFRAG$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_LOBFRAG$" ADD CONSTRAINT "LOGMNR_LOBFRAG$_PK" PRIMARY KEY ("LOGMNR_UID", "FRAGOBJ#") DISABLE
  ALTER TABLE "LOGMNR_LOBFRAG$" MODIFY ("FRAG#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "CLIENTES" ADD PRIMARY KEY ("ID") ENABLE
  ALTER TABLE "CLIENTES" MODIFY ("TELEFONO" NOT NULL ENABLE)
  ALTER TABLE "CLIENTES" MODIFY ("DIRECCION" NOT NULL ENABLE)
  ALTER TABLE "CLIENTES" MODIFY ("APELLIDO" NOT NULL ENABLE)
  ALTER TABLE "CLIENTES" MODIFY ("NOMBRE" NOT NULL ENABLE)
  ALTER TABLE "CLIENTES" MODIFY ("CEDULA" NOT NULL ENABLE)
  ALTER TABLE "CLIENTES" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_OBJECT_TYPES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_OBJECT_TYPES" ADD CONSTRAINT "REPCAT$_OBJECT_TYPE_PK" PRIMARY KEY ("OBJECT_TYPE_ID") ENABLE
--------------------------------------------------------
--  Constraints for Table DEF$_CALLDEST
--------------------------------------------------------

  ALTER TABLE "DEF$_CALLDEST" ADD CONSTRAINT "DEF$_CALLDEST_PRIMARY" PRIMARY KEY ("ENQ_TID", "DBLINK", "STEP_NO") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_AGE_SPILL$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_AGE_SPILL$" ADD CONSTRAINT "LOGMNR_AGE_SPILL$_PK" PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "SEQUENCE#") ENABLE
--------------------------------------------------------
--  Constraints for Table LOGMNR_PARAMETER$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_PARAMETER$" MODIFY ("NAME" NOT NULL ENABLE)
  ALTER TABLE "LOGMNR_PARAMETER$" MODIFY ("SESSION#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_INFO
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_INFO" ADD CONSTRAINT "MVIEW$_ADV_INFO_PK" PRIMARY KEY ("RUNID#", "SEQ#") ENABLE
  ALTER TABLE "MVIEW$_ADV_INFO" MODIFY ("INFOLEN" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_INFO" MODIFY ("TYPE" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_INFO" MODIFY ("SEQ#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_INFO" MODIFY ("RUNID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_USER_AUTHORIZATIONS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_USER_AUTHORIZATIONS" ADD CONSTRAINT "REPCAT$_USER_AUTHORIZATIONS_U1" UNIQUE ("USER_ID", "REFRESH_TEMPLATE_ID") ENABLE
  ALTER TABLE "REPCAT$_USER_AUTHORIZATIONS" ADD CONSTRAINT "REPCAT$_USER_AUTHORIZATIONS_PK" PRIMARY KEY ("USER_AUTHORIZATION_ID") ENABLE
  ALTER TABLE "REPCAT$_USER_AUTHORIZATIONS" MODIFY ("REFRESH_TEMPLATE_ID" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_USER_AUTHORIZATIONS" MODIFY ("USER_ID" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_USER_AUTHORIZATIONS" MODIFY ("USER_AUTHORIZATION_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_TABPART$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_TABPART$" ADD CONSTRAINT "LOGMNR_TABPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "BO#") DISABLE
  ALTER TABLE "LOGMNR_TABPART$" MODIFY ("BO#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_CLIQUE
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_CLIQUE" ADD CONSTRAINT "MVIEW$_ADV_CLIQUE_PK" PRIMARY KEY ("CLIQUEID#") ENABLE
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("NUMROWS" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("ROWSIZE" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("BYTECOST" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("FREQUENCY" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("HASHVALUE" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEDES" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEDESLEN" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("RUNID#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_RESOLUTION
--------------------------------------------------------

  ALTER TABLE "REPCAT$_RESOLUTION" ADD CONSTRAINT "REPCAT$_RESOLUTION_PK" PRIMARY KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO") ENABLE
  ALTER TABLE "REPCAT$_RESOLUTION" MODIFY ("FUNCTION_NAME" CONSTRAINT "REPCAT$_RESOLUTION_NN2" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_RESOLUTION" MODIFY ("METHOD_NAME" CONSTRAINT "REPCAT$_RESOLUTION_NN1" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_GC
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_GC" ADD CONSTRAINT "MVIEW$_ADV_GC_PK" PRIMARY KEY ("GCID#") ENABLE
  ALTER TABLE "MVIEW$_ADV_GC" MODIFY ("HASHVALUE" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_GC" MODIFY ("GCDES" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_GC" MODIFY ("GCDESLEN" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_GC" MODIFY ("FJGID#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_GC" MODIFY ("GCID#" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_TYPES
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_TYPES" ADD CONSTRAINT "REPCAT$_TEMPLATE_TYPES_PK" PRIMARY KEY ("TEMPLATE_TYPE_ID") ENABLE
--------------------------------------------------------
--  Constraints for Table TIPO_IDENTIFACIONES
--------------------------------------------------------

  ALTER TABLE "TIPO_IDENTIFACIONES" ADD PRIMARY KEY ("ID") ENABLE
  ALTER TABLE "TIPO_IDENTIFACIONES" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_OBJECT_PARMS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_OBJECT_PARMS" ADD CONSTRAINT "REPCAT$_OBJECT_PARMS_PK" PRIMARY KEY ("TEMPLATE_PARAMETER_ID", "TEMPLATE_OBJECT_ID") ENABLE
  ALTER TABLE "REPCAT$_OBJECT_PARMS" MODIFY ("TEMPLATE_OBJECT_ID" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_OBJECT_PARMS" MODIFY ("TEMPLATE_PARAMETER_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_FLAVORS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_FLAVORS" ADD CONSTRAINT "REPCAT$_FLAVORS_UNQ1" UNIQUE ("GNAME", "FLAVOR_ID", "GOWNER") ENABLE
  ALTER TABLE "REPCAT$_FLAVORS" ADD CONSTRAINT "REPCAT$_FLAVORS_C2" CHECK (published is NULL or (published in ('Y','N','O'))) ENABLE
  ALTER TABLE "REPCAT$_FLAVORS" MODIFY ("GNAME" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_FLAVORS" MODIFY ("FLAVOR_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$EVENTS
--------------------------------------------------------

  ALTER TABLE "LOGSTDBY$EVENTS" MODIFY ("EVENT_TIME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_ENC$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_ENC$" ADD CONSTRAINT "LOGMNR_ENC$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "OWNER#") DISABLE
  ALTER TABLE "LOGMNR_ENC$" MODIFY ("MKEYID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_ATTRIBUTE$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_ATTRIBUTE$" ADD CONSTRAINT "LOGMNR_ATTRIBUTE$_PK" PRIMARY KEY ("LOGMNR_UID", "TOID", "VERSION#", "ATTRIBUTE#") DISABLE
  ALTER TABLE "LOGMNR_ATTRIBUTE$" MODIFY ("TOID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_TEMPLATE_PARMS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_TEMPLATE_PARMS" ADD CONSTRAINT "REPCAT$_TEMPLATE_PARMS_U1" UNIQUE ("REFRESH_TEMPLATE_ID", "PARAMETER_NAME") ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_PARMS" ADD CONSTRAINT "REPCAT$_TEMPLATE_PARMS_PK" PRIMARY KEY ("TEMPLATE_PARAMETER_ID") ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_PARMS" ADD CONSTRAINT "REPCAT$_TEMPLATE_PARMS_C1" CHECK (user_override in ('Y','N')) ENABLE
  ALTER TABLE "REPCAT$_TEMPLATE_PARMS" MODIFY ("PARAMETER_NAME" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_TEMPLATE_PARMS" MODIFY ("REFRESH_TEMPLATE_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_PRIORITY
--------------------------------------------------------

  ALTER TABLE "REPCAT$_PRIORITY" ADD CONSTRAINT "REPCAT$_PRIORITY_PK" PRIMARY KEY ("SNAME", "PRIORITY_GROUP", "PRIORITY") ENABLE
  ALTER TABLE "REPCAT$_PRIORITY" MODIFY ("PRIORITY" CONSTRAINT "REPCAT$_PRIORITY_NN3" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_PRIORITY" MODIFY ("PRIORITY_GROUP" CONSTRAINT "REPCAT$_PRIORITY_NN2" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_PRIORITY" MODIFY ("SNAME" CONSTRAINT "REPCAT$_PRIORITY_NN1" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$APPLY_MILESTONE
--------------------------------------------------------

  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("FETCHLWM_SCN" NOT NULL ENABLE)
  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("PROCESSED_SCN" NOT NULL ENABLE)
  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("EPOCH" NOT NULL ENABLE)
  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("SYNCH_SCN" NOT NULL ENABLE)
  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("COMMIT_SCN" NOT NULL ENABLE)
  ALTER TABLE "LOGSTDBY$APPLY_MILESTONE" MODIFY ("SESSION_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table HELP
--------------------------------------------------------

  ALTER TABLE "HELP" ADD CONSTRAINT "HELP_TOPIC_SEQ" PRIMARY KEY ("TOPIC", "SEQ") ENABLE
  ALTER TABLE "HELP" MODIFY ("SEQ" NOT NULL ENABLE)
  ALTER TABLE "HELP" MODIFY ("TOPIC" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_RESOL_STATS_CONTROL
--------------------------------------------------------

  ALTER TABLE "REPCAT$_RESOL_STATS_CONTROL" ADD CONSTRAINT "REPCAT$_RESOL_STATS_CTRL_PK" PRIMARY KEY ("SNAME", "ONAME") ENABLE
  ALTER TABLE "REPCAT$_RESOL_STATS_CONTROL" MODIFY ("STATUS_UPDATE_DATE" CONSTRAINT "REPCAT$_RESOL_STATS_CTRL_NN3" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_RESOL_STATS_CONTROL" MODIFY ("STATUS" CONSTRAINT "REPCAT$_RESOL_STATS_CTRL_NN2" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_RESOL_STATS_CONTROL" MODIFY ("CREATED" CONSTRAINT "REPCAT$_RESOL_STATS_CTRL_NN1" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOGMNR_RESTART_CKPT$
--------------------------------------------------------

  ALTER TABLE "LOGMNR_RESTART_CKPT$" ADD CONSTRAINT "LOGMNR_RESTART_CKPT$_PK" PRIMARY KEY ("SESSION#", "CKPT_SCN", "XIDUSN", "XIDSLT", "XIDSQN", "SESSION_NUM", "SERIAL_NUM") ENABLE
--------------------------------------------------------
--  Constraints for Table FABRICANTE
--------------------------------------------------------

  ALTER TABLE "FABRICANTE" ADD PRIMARY KEY ("ID") ENABLE
  ALTER TABLE "FABRICANTE" MODIFY ("NOMBRE_FABRICANTE" NOT NULL ENABLE)
  ALTER TABLE "FABRICANTE" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_REPGROUP_PRIVS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_REPGROUP_PRIVS" ADD CONSTRAINT "REPCAT$_REPGROUP_PRIVS_UK" UNIQUE ("USERNAME", "GNAME", "GOWNER") ENABLE
  ALTER TABLE "REPCAT$_REPGROUP_PRIVS" MODIFY ("CREATED" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_REPGROUP_PRIVS" MODIFY ("GLOBAL_FLAG" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_REPGROUP_PRIVS" MODIFY ("USERNAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_PRIORITY_GROUP
--------------------------------------------------------

  ALTER TABLE "REPCAT$_PRIORITY_GROUP" ADD CONSTRAINT "REPCAT$_PRIORITY_GROUP_U1" UNIQUE ("SNAME", "PRIORITY_GROUP", "DATA_TYPE_ID", "FIXED_DATA_LENGTH") ENABLE
  ALTER TABLE "REPCAT$_PRIORITY_GROUP" ADD CONSTRAINT "REPCAT$_PRIORITY_GROUP_PK" PRIMARY KEY ("PRIORITY_GROUP", "SNAME") ENABLE
  ALTER TABLE "REPCAT$_PRIORITY_GROUP" ADD CONSTRAINT "REPCAT$_PRIORITY_GROUP_C2" CHECK ((data_type_id in (4, 7) and
                  fixed_data_length is not null)
              or (data_type_id in (1, 2, 3, 5, 6) and
                  fixed_data_length is null)) ENABLE
  ALTER TABLE "REPCAT$_PRIORITY_GROUP" ADD CONSTRAINT "REPCAT$_PRIORITY_GROUP_C1" CHECK (data_type_id in (1, 2, 3, 4, 5, 6, 7)) ENABLE
  ALTER TABLE "REPCAT$_PRIORITY_GROUP" MODIFY ("DATA_TYPE_ID" CONSTRAINT "REPCAT$_PRIORITY_GROUP_NN1" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPCAT$_SITE_OBJECTS
--------------------------------------------------------

  ALTER TABLE "REPCAT$_SITE_OBJECTS" ADD CONSTRAINT "REPCAT$_SITE_OBJECTS_U1" UNIQUE ("TEMPLATE_SITE_ID", "ONAME", "OBJECT_TYPE_ID", "SNAME") ENABLE
  ALTER TABLE "REPCAT$_SITE_OBJECTS" MODIFY ("OBJECT_TYPE_ID" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_SITE_OBJECTS" MODIFY ("ONAME" NOT NULL ENABLE)
  ALTER TABLE "REPCAT$_SITE_OBJECTS" MODIFY ("TEMPLATE_SITE_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FILTER
--------------------------------------------------------

  ALTER TABLE "MVIEW$_ADV_FILTER" ADD CONSTRAINT "MVIEW$_ADV_FILTER_PK" PRIMARY KEY ("FILTERID#", "SUBFILTERNUM#") ENABLE
  ALTER TABLE "MVIEW$_ADV_FILTER" MODIFY ("SUBFILTERTYPE" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_FILTER" MODIFY ("SUBFILTERNUM#" NOT NULL ENABLE)
  ALTER TABLE "MVIEW$_ADV_FILTER" MODIFY ("FILTERID#" NOT NULL ENABLE)
