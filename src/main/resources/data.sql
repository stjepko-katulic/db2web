insert into pitanja (pitanje, broj_tocnih_odgovora)
values
('Assuming no database connections exist, which of the following will dynamically change the LOCKLIST database
  configuration parameter for a database named SAMPLE to AUTOMATIC?', 1),
('Which two tasks must be done to read data directly from IBM Softlayer Object Storage and insert it into a DB2
  database? (Choose two.)', 2),
('Which of the following statements about compression for BLU MPP tables is TRUE?', 1),
('A production database has the following daily midnight backup schedule which includes all table spaces. The database incurs the same volume of daily
  activity (inserts, updates, and deletes).

 Sunday Delta -
 Monday Incremental -
 Tuesday Delta -
 Wednesday Delta -
 Thursday Incremental -
 Friday Delta -
 Saturday Full -

 Which day would you expect a RECOVER DATABASE following that days backup to take the longest time to complete?', 1),
('Which statement about NOT ENFORCED unique constraints is TRUE?', 1),
('What is an advantage of using range partitioned tables?', 1),
('A table named MYTABLE contains an XML column and an XML storage object dictionary already exists. What is the effect of enabling
  compression and then running the command REORG TABLE mytable KEEPDICTIONARY?', 1),
('The DBA has observed that queries executed against SALES table have poor performance. SALES is a compressed table and recently
  there have been a lot of rows inserted and modified in that table. The DBA has detected that lower performance may be the result
  of sub-optimal compression dictionary for that table.', 1),
('If the following SQL statements are executed:

  CREATE DATABASE testdb AUTOMATIC STORAGE NO;
  CONNECT TO testdb;
  CREATE STOGROUP sg1 ON /data1;
  CREATE STOGROUP ibmstogroup ON /data2;
  CREATE STOGROUP sg2 ON /data3;

  Which storage group is the default storage group for the TESTDB database?', 1),
('If Secure Sockets Layer is a requirement, which of the following parameters must be set to encrypt data in transit?', 1),
('Automatic space reclamation for column-organized tables can be accomplished in which of the following scenarios?', 1),
('Which security mechanism is responsible for verifying that users are indeed who they claim to be?', 1),
('Which statement about label-based access control (LBAC) is TRUE?', 1),
('Which of the following commands will list all of the disk configurations of the file system DATAFS in a DB2 pureScale cluster?', 1),
('Which command can be used to view the configured global registry settings for all installed DB2 copies found on a Linux server?', 1),
('Which statement regarding event monitors is TRUE?', 1),
('Which options are valid for an online reorganization operation?', 1),
('A DBA has observed that queries executed against SALES table have poor performance. DB2 tools have indicated that the level of data
  fragmentation in the SALES table is very high. Similar results were detected for indexes defined on the SALES table.

  Which of the SALES table?', 1),
('Which of the following are valid Explain operators? (Choose two.)', 2),
('Which is the correct way to backup only metadata about database backups, table space backups, and table load operations for database MYDB?', 1),
('Which of the following SQL statements will list table spaces whose utilization is greater than 95% and may potentially fill, returning an error?', 1),
('When operating in NPS compatibility mode, which of the following are limitations for using a routine written in NZPLSQL? (Choose two.)', 2),
('Which of the following enables the user to connect to the HADR standby database and execute select statements?', 1),
('The DBA is concerned about a new application potentially corrupting a set of tables in table space TS1 in database DB1. TAB1 is a table in TS1. The
  DBA performs the following commands before running the application. The first QUIESCE completes at time pit.

  BACKUP DATABASE DB1 TABLESPACE (TS1) ONLINE
  QUIESCE TABLESPACES FOR TABLE tab1 EXCLUSIVE
  QUIESCE TABLESPACES FOR TABLE tab1 RESET

  Which of the following is TRUE?', 1),
('When the DB2_WORKLOAD registry variable is assigned the value ANALYTICS and then a new database is created, what happens? (Choose two.)', 2),
('Which two of the following functions of DB2 Workload Manager are restricted by license? (Choose two.)', 2),
('Which of the following are all valid types of trigger?', 1),
('The HADR_TARGET_LIST parameter enables HADR to run in multiple standby mode. Which of the following statements are TRUE
  if HADR is active? (Choose two.)', 2),
('For any given column-organized user table, the associated synopsis table may contain information for which of the
  following data types? (Choose two.)', 2),
('Which phase of the LOAD utility is unique to loading column organized tables?', 1),
('When choosing the dimensions for an MDC table, poor space utilization can occur due to low cell density. What can cause an MDC table to
  use much more space?', 1),
('Which of the following actions do you need to acquire the current encryption settings for a database protected by native encryption?', 1),
('When querying the MON_GET_TABLESPACE table function, the values for many of the performance metrics like POOL_DATA_P_READS and
  POOL_DATA_L_READS are showing 0, even though there is activity occurring in the database. Which command must be executed to enable the
  table function to return actual data?', 1),
('Which statement about Data Server Manager (DSM) is TRUE?', 1),
('What is the result of the following scenario?

   CREATE TABLE ten_pct (
    key INT NOT NULL,
    amt DECIMAL(10,0) NOT NULL);

    CREATE OR REPLACE TRIGGER ten_pct_upd BEFORE UPDATE ON ten_pct
    REFERENCING
      OLD AS pld_row
      NEW AS in_row
    FOR EACH ROW
    WHEN (in_row.amt IS NULL)
         SET in_row.amt=old_row.amt * 1.10;

    INSERT INTO ten_pct VALUES (2, 100.00);

    UPDATE ten_pct SET amt=NULL
     WHERE key=2;', 1),
('On Linux and Unix systems, which of the following will set the DB2_FMP_COMM_HEAPSZ registry variable
  to 1 GB (or 256000 pages), only for the instance db2inst1?', 1),
('Which of the following statements about audit policies is TRUE?', 1),
('How would you enable self-tuning of memory areas that are controlled by memory configuration parameters?', 1),
('What is the schema name of the DB2 built-in global variable TRUSTED_CONTEXT?', 1),
('What does dsmtop use to gather metrics?', 1),
('You suspect there is a communications issue between a member and a cluster caching facility (CF) in a
  DB2 pureScale instance. Which command will provide diagnostic information that can be used to confirm
  your suspicions?', 1),
('What levels of authority are needed to create a storage group? (Choose two.)', 2),
('What is the default value of the DB2 registry variable DB2LDAP_SEARCH_SCOPE?', 1),
('Which DB2 Explain Facility tool uses the Explain tables to display access plan information?', 1),
('Which ALTER TABLE statements will put a table named TAB1 in "reorg-pending" state? (Choose two.)', 2),
('If the following SQL statements are executed:

   CREATE TABLE department
     (deptno CHAR(3) NOT NULL,
      location CHAR(16))
      ORGANIZE BY ROW;

   ALTER TABLE department
   ADD CONSTRAINT pk_dept PRIMARY KEY (deptno) NOT ENFORCED;

   INSERT INTO department VALUES (A25, New York);
   INSERT INTO department VALUES (B26, Chicago);
   INSERT INTO department VALUES (A25, Dallas);
   INSERT INTO department VALUES (A56, San Jose);

  How many rows will be added to the DEPARTMENT table?', 1),
('What is the main benefit of performing an ADMIN_MOVE_TABLE operation in multiple steps?', 1),
('Given the following:

  CREATE TABLE t1 (col1 INTEGER NOT NULL);

  CREATE VIEW v1 AS SELECT col1 FROM t1 WHERE col1 > 10;
  CREATE VIEW v2 AS SELECT col1 FROM v1 WHERE col1 < 40 WITH CHECK OPTION;
  CREATE VIEW v3 AS SELECT col1 FROM v2 WHERE col1 < 50;

  What will be the result of the following SQL statement?', 1),
('Which statement regarding setting up a local keystore for DB2 native encryption is TRUE?', 1),
('Which operation best describes the purpose of the SET INTEGRITY PRUNE operation?', 1),
('Which operation can be performed with trusted context privileges that are acquired through a role?', 1),
('Which data types are only valid when DB2_COMPATIBILITY_VECTOR=ORA? (Choose two.)', 2),
('You receive a large data file that contains large object data values that need to be copied into a table in the shortest
  amount of time possible. Which utility should be used?', 1),
('Which command will enable Explicit Hierarchical Locking (EHL) in a DB2 pureScale environment?', 1),
('Which of the following statements is TRUE?', 1),
('Which statement about the db2move command is TRUE?', 1),
('An HADR environment has two standby databases one principal and one auxiliary. What is the only mode that can be used to
  transfer data to the auxiliary standby?', 1),
('Which statement about the DB2_BCKP_COMPRESSION registry variable is TRUE?', 1),
('Where does the DB2 Problem Determination tool (db2pd) get information from?', 1),
('Which tool can be used to get database design recommendations based on SQL statements stored in the database package cache?', 1);



insert into odgovori (pitanje_id, odgovor, tocan)
values
(1, 'UPDATE DB CFG FOR sample USING LOOCKLIST AUTOMATIC IMMEDIATE', 'NE'),
(1, 'UPDATE DB CFG FOR sample USING LOOCKLIST 8192 AUTOMATIC IMMEDIATE', 'NE'),
(1, 'CONNECT TO sample; UPDATE DB CFG FOR sample USING LOCKLIST AUTOMATIC IMMEDIATE; CONNECT RESET;', 'DA'),
(1, 'ATTACH TO db2inst1; UPDATE DB CFG FOR sample USING LOCKLIST AUTOMATIC;', 'NE'),
(2, 'Catalog a storage access alias in the DB2 database ', 'DA'),
(2, 'Create an FTP account on IBM Softlayer Object Storage ', 'NE'),
(2, 'Use the DB2REMOTE parameter of the LOAD command', 'DA'),
(2, 'Establish a remote connection to IBM Softlayer Object Storage using DB2 Connect ', 'NE'),
(2, 'Create a local disk alias at the database server operating system level that points to IBM Softlayer Object Storage ', 'NE'),
(3, 'Compression must be explicitly enabled for BLU MPP tables ', 'NE'),
(3, 'Compression requires decompression to evaluate partition joins ', 'NE'),
(3, 'Unique compression dictionaries are generated for each partition ', 'NE'),
(3, 'Each table has a single compression dictionary that gets replicated across all partitions', 'DA'),
(4, 'Friday', 'DA'),
(4, 'Monday', 'NE'),
(4, 'Saturday', 'NE'),
(4, 'Wednesday', 'NE'),
(5, 'NOT ENFORCED unique constraints can not be defined on primary key columns ', 'NE'),
(5, 'The query optimizer will consider a NOT ENFORCED unique constraint when selecting an optimal data access plan ', 'DA'),
(5, 'When attempting to insert data that does not conform to a NOT ENFORCED unique constraint, a warning will be returned ', 'NE'),
(5, 'Storage requirements for a NOT ENFORCED unique constraint are no different than the storage requirements for a similar unique index ', 'NE'),
(6, 'Ability to run utilities against the partitions in parallel ', 'NE'),
(6, 'Increased query performance through data partition elimination ', 'DA'),
(6, 'Block indexes are much smaller than RID indexes, providing better performance ', 'NE'),
(6, 'Table data is automatically and continuously clustered, req eorganization uiring minimal r ', 'NE'),
(7, 'All data, both new and existing, will be compressed. ', 'DA'),
(7, 'Only new or updated data for XML columns will be compressed.', 'NE'),
(7, 'New and existing XML columns will be compressed but other columns remain unchanged. ', 'NE'),
(7, 'Existing data will remain uncompressed because the RESETDICTIONARY option of the REORG command was not used.', 'NE'),
(8, 'REORG TABLE sales INPLACE RESETDICTIONARY ', 'NE'),
(8, 'REORG TABLE sales INPLACE REBUILDDICTIONARY ', 'NE'),
(8, 'REORG TABLE sales ALLOW WRITE ACCESS RESETDICTIONARY ', 'DA'),
(8, 'REORG TABLE sales ALLOW WRITE ACCESS REBUILDDICTIONARY ', 'NE'),
(9, 'SG1 ', 'DA'),
(9, 'SG2', 'NE'),
(9, 'IBMSTOGROUP ', 'NE'),
(9, 'IBMDEFAULTTSG ', 'NE'),
(10, 'Set the DB2COMM registry variable to DB2COMM=SSL ', 'NE'),
(10, 'Set the DB2COMM registry variable to DB2COMM=SSL, TCPIP ', 'DA'),
(10, 'Set the AUTHENTICATION configuration parameter to DATA_ENCRYPT ', 'NE'),
(10, 'Set the AUTHENTICATION configuration parameter to SERVER_ENCRYPT', 'NE'),
(11, 'When the registry variable DB2_AUTORECLAIMSPACE=YES ', 'NE'),
(11, 'After termination all the back-end processes using TERMINATE command ', 'NE'),
(11, 'After setting the database configuration parameter AUTO_DEL_REC_OBJ to ON ', 'NE'),
(11, 'When the registry variable DB2_WORKLOAD=ANALYTICS prior to database creation ', 'DA'),
(12, 'Authentication ', 'DA'),
(12, 'Roles and privileges ', 'NE'),
(12, 'Mandatory access control ', 'NE'),
(12, 'Discretionary access control ', 'NE'),
(13, 'LBAC protection can be applied to a nickname ', 'NE'),
(13, 'LBAC cannot be used to restrict access to a staging table ', 'DA'),
(13, 'LBAC cannot be used to restrict access to data of columns and rows in the same table', 'NE'),
(13, 'LBAC protection for columns requires a table to contain a column that has a DB2SECURITYLABEL data type ', 'NE'),
(14, 'db2cluster –cfs –list –filesystem datafs ', 'DA'),
(14, 'db2cluster –cfs –display –filesystem datafs ', 'NE'),
(14, 'db2cluster –cfs –listconfig –filesystem datafs ', 'NE'),
(14, 'db2cluster –cfs –displayconfig –filesystem datafs ', 'NE'),
(15, 'db2val ', 'NE'),
(15, 'db2set ', 'NE'),
(15, 'db2look ', 'NE'),
(15, 'db2greg ', 'DA'),
(16, 'Event monitor data can be reviewed while the event monitor is active ', 'DA'),
(16, 'Event monitors must always be started manually after activating a database ', 'NE'),
(16, 'Event monitors must write data to .EVT files before the data can be loaded into database tables ', 'NE'),
(16, 'Event monitors are used to obtain information about how a database system looks at a specific point in time ', 'NE'),
(17, 'FULL and RECLAIM EXTENTS ', 'NE'),
(17, 'CLASSIC and RECLAIM EXTENTS ', 'NE'),
(17, 'FULL and CLEANUP OVERFLOWS ', 'DA'),
(17, 'CLEAN OVERFLOWS and RECLAIM EXTENTS ', 'NE'),
(18, 'REORG TABLE sales AND INDEXES ALL; RUNSTATS ON TABLE sales AND INDEXES ALL;', 'NE'),
(18, 'REORG TABLE sales INPLACE; REORG INDEXES ALL FOR TABLE sales; RUNSTATS ON TABLE sales AND INDEXES ALL; ', 'DA'),
(18, 'RUNSTATS ON TABLE sales AND INDEXES ALL; REORGCHK ON TABLE sales; ', 'NE'),
(18, 'RUNSTATS ON TABLE sales INPLACE AND INDEXES ALL; ', 'NE'),
(19, 'CTQ ', 'NE'),
(19, 'XSCAN ', 'DA'),
(19, 'IXSCAN ', 'DA'),
(19, 'SELECT ', 'NE'),
(19, 'COLSCAN ', 'NE'),
(20, 'CONNECT TO mydb PRUNE HISTORY TO /outdir ', 'NE'),
(20, 'db2trc on –db mydb –m "backup,load" run the desired operations db2tc dump db2trc.dmp
      db2tc format db2tc.dmp db2tc.fmt db2tc off ', 'NE'),
(20, 'BACKUP DATABASE mydb NO TABLESPACE TO /outdir ', 'DA'),
(20, 'db2set DB2_BCKP_PAGE_VERIFICATION=TRUE must be issued first (no instance restart is needed). Run the desired operations. ', 'NE'),
(21, 'SELECT tbsp_name, tbsp_utilization_percent FROM TABLE(sysproc.mon_tbsp_utilization()) AS t WHERE tbsp_utilization_percent > 95 AND tbsp_auto_resize_enabled = 1; ', 'NE'),
(21, 'SELECT tbsp_name, tbsp_utilization_percent FROM syscat.mon_tbsp_utilization WHERE tbsp_utilization_percent > 95 AND tbsp_auto_resize_enabled = 0; ', 'NE'),
(21, 'SELECT tbsp_name, tbsp_utilization_percent FROM syscat.mon_tbsp_utilization WHERE tbsp_utilization_percent > 95 AND tbsp_auto_resize_enabled = 1; ', 'NE'),
(21, 'SELECT tbsp_name, tbsp_utilization_percent FROM sysibmadm.mon_tbsp_utilization WHERE tbsp_utilization_percent > 95 AND tbsp_auto_resize_enabled = 0;', 'DA'),
(22, 'The routine cannot contain comments. ', 'NE'),
(22, 'The routine must return either an integer or a null. ', 'DA'),
(22, 'The routine must be cross-compatible with Oracle PL/SQL syntax rules. ', 'NE'),
(22, 'The routine cannot contain argument lists or variable arguments (varargs)', 'DA'),
(22, 'The routine must be generated with IBM Database Conversion Workbench (DCW). ', 'NE'),
(23, 'DB2_HADR_ROS ', 'DA'),
(23, 'HADR_SPOOL_LIMIT ', 'NE'),
(23, 'DB2_HADR_SOSNDBUF ', 'NE'),
(23, 'DB2_HADR_PEER_WAIT_LIMIT ', 'NE'),
(24, 'The QUIESCE EXCLUSIVE is recorded in the History File once the QUIESCE RESET completes. ', 'NE'),
(24,
    'Once the first QUIESCE completes, there are no running transactions involving tab1, but there might be running transactions against other tables in TS1. ',
    'NE'),
(24,
    'After application corruption, the DBA restores a backup of TS1 and issues ROLLFORWARD DATABASE TO pit AND COMPLETE TABLESPACE (ts1) ONLINE. There might be some uncommitted data in TS1. ',
    'NE'),
(24,
    'After application corruption, the DBA restores a backup of TS1 and issues ROLLFORWARD DATABASE TO pit AND COMPLETE ' ||
     'TABLESPACE (ts1). This ensures none of the application changes were applied.',
    'DA'),
(25, 'The PAGESIZE database configuration parameter is set to 32K. ', 'DA'),
(25, 'The AUTO_REORG database configuration parameter is set to NO. ', 'NE'),
(25, 'The DFT_EXTENT_SZ database configuration parameter is set to 8. ', 'NE'),
(25, 'The DFT_TABLE_ORG database configuration parameter is set to COLUMN. ', 'DA'),
(25, 'The INTRA_PARALLEL database manager configuration parameter is set to NO. ', 'NE'),
(26, 'Creating, using, or altering thresholds ', 'DA'),
(26, 'Granting, altering, or revoking workload privileges ', 'NE'),
(26, 'Using or altering the default service classes and workloads ', 'NE'),
(26, 'Creating service classes, service subclasses, and workloads ', 'DA'),
(26, 'Creating, activating, stopping or dropping workload management event monitors ', 'NE'),
(27, 'AFTER, ATOMIC, BEFORE ', 'NE'),
(27, 'AFTER, ATOMIC, INSTEAD OF ', 'NE'),
(27, 'AFTER, BEFORE, INSTEAD OF ', 'DA'),
(27, 'ATOMIC, BEFORE, INSTEAD OF ', 'NE'),
(28, 'You can change the principal standby of the primary without first stopping HADR on the primary. ', 'NE'),
(28, 'The target list can contain IP addresses that are either IPv4, or IPv6, or a combination of the two. ', 'NE'),
(28,
    'You can remove the primary database from the target list of a standby although the standby is connected to the primary. ',
    'NE'),
(28,
    'You cannot dynamically update the HADR_TARGET_LIST configuration parameter for a standby unless you have enabled the HADR read standby feature. ',
    'DA'),
(28,
    'You cannot remove a standby from the list if it is connected to the primary. To disconnect a standby, simply deactivate it. The you can remove it from the ',
    'DA'),
(29, 'XML ', 'NE'),
(29, 'BLOB ', 'NE'),
(29, 'CLOB ', 'NE'),
(29, 'VARCHAR ', 'DA'),
(29, 'DATETIME', 'DA'),
(30, 'LOAD ', 'NE'),
(30, 'BUILD ', 'NE'),
(30, 'DELETE ', 'NE'),
(30, 'ANALYZE ', 'DA'),
(31, 'The page size is too small. ', 'NE'),
(31, 'The extent size is too small. ', 'NE'),
(31, 'Low cardinality of the dimension(s) chosen. ', 'NE'),
(31, 'High cardinality of the dimension(s) chosen. ', 'DA'),
(32, 'Select from the ADMIN_GET_ENCRYPTION_INFO table function ', 'DA'),
(32, 'Run the db2ckbkp command and verify the compression settings', 'NE'),
(32, 'Check the encrypted database parameter in database configuration ', 'NE'),
(32, 'Check ENCROPTS database configuration parameter for encryption options ', 'NE'),
(33, 'UPDATE DB CFG USING MON_OBJ_METRICS BASE ', 'DA'),
(33, 'UPDATE DB CFG USING MON_ACT_METRICS BASE ', 'NE'),
(33, 'UPDATE DBM CFG USING DFT_MON_BUFPOOL ON ', 'NE'),
(33, 'UPDATE MONITOR SWITCHES USING BUFFERPOOL ON ', 'NE'),
(34, 'DSM can be used for reviewing audit trails ', 'NE'),
(34, 'DSM cannot be used for database administration ', 'NE'),
(34, 'DSM can be used for configuration management of DB2 Data Server drivers ', 'NE'),
(34, 'DSM can be used to efficiently monitor, analyze, identify, and solve a performance issue ', 'DA'),
(35, 'The row is updated to (2, NULL) ', 'NE'),
(35, 'The row is updated to (2, 110.00) ', 'DA'),
(35, 'SQL0407N Assignment of a NULL value to a NOT NULL column is not allowed ', 'NE'),
(35, 'The CREATE TRIGGER statement will fail because amt is defined as NOT NULL ', 'NE'),
(36, 'As the db2 instance owner (db2inst1) execute the command: export DB2_FMP_COMM_HEAPSZ=256000 ', 'NE'),
(36, 'Add to the following line to the userprofile (db2inst1): DB2_FMP_COMM_HEAPSZ=256000 ', 'NE'),
(36, 'As the db2 instance owner (db2inst1) execute the command: db2set-i DB2_FMP_COMM_HEAPSZ=256000 ', 'NE'),
(36, 'As the db2 instance owner (db2inst1) execute the command: db2set–i db2inst1 DB2_FMP_COMM_HEAPSZ=256000', 'DA'),
(37, 'Audit policy changes are applied instantly and affect all inflight transactions. ', 'NE'),
(37, 'Multiple audit policies can be associated with the same table at the same time. ', 'NE'),
(37, 'The audit policy applied to a table is automatically applied to any view based on that table. ', 'NE'),
(37, 'If a user is switched within a trusted connection, the applicable audit policies are re-evaluated for the new user without regard to audit policies for the original ', 'DA'),
(38, 'Set the DB2_WORKLOAD aggregate registry variable to ANALYTICS for self-tuning of the sort parameter on workloads that access column-organized tables. ', 'NE'),
(38, 'Set the SELF_TUNING_MEM database configuration parameter to ON using the UPDATE DATABASE CONFIGURATION command or the db2CfgSet API. ', 'DA'),
(38, 'Set the sortheap or the sheapthres_shr configuration parameters to AUTOMATIC using the UPDATE DATABASE CONFIGURATION command or the db2CfgSet API with sheapthres set to at least 4K. ', 'NE'),
(38, 'Use AUTOMATIC keyword for the buffer pool size on the CREATE BUFFERPOOL statement or the ALTER BUFFERPOOL statement after making sure that ', 'NE'),
(39, 'SYSIBM ', 'DA'),
(39, 'SYSFUN ', 'NE'),
(39, 'SYSCAT ', 'NE'),
(39, 'SYSIBMADM ', 'NE'),
(40, 'db2pd ', 'NE'),
(40, 'db2dart ', 'NE'),
(40, 'the system catalog ', 'NE'),
(40, 'monitoring table functions ', 'DA'),
(41, 'db2cluster -verify ', 'NE'),
(41, 'db2cluster -cm -list -alert ', 'DA'),
(41, 'db2cluster -verify -configuration ', 'NE'),
(41, 'db2cluster -cm -verify -resource', 'NE'),
(42, 'DBADM ', 'NE'),
(42, 'SYSADM ', 'DA'),
(42, 'SQLADM ', 'NE'),
(42, 'SYSCTRL ', 'DA'),
(42, 'SYSMAINT ', 'NE'),
(43, 'NONE ', 'NE'),
(43, 'LOCAL ', 'NE'),
(43, 'DOMAIN ', 'DA'),
(43, 'GLOBAL ', 'NE'),
(44, 'db2look ', 'NE'),
(44, 'db2advis ', 'NE'),
(44, 'db2expln ', 'DA'),
(44, 'db2exfmt ', 'NE'),
(45, 'ALTER TABLE tab1 APPEND ON ', 'NE'),
(45, 'ALTER TABLE tab1 DROP COLUMN col1 ', 'DA'),
(45, 'ALTER TABLE tab1 ALTER COLUMN col1 SET NOT NULL ', 'DA'),
(45, 'ALTER TABLE tab1 DETACH PARTITION part1 INTO tab_part1 ', 'NE'),
(45, 'ALTER TABLE tab1 ADD CONSTRAINT pk_tab1 PRIMARY KEY (col1) ', 'NE'),
(46, '1', 'NE'),
(46, '2', 'NE'),
(46, '3', 'NE'),
(46, '4', 'DA'),
(47, 'It does not acquire locks on the table', 'NE'),
(47, 'It does not require additional temporary disk space ', 'NE'),
(47, 'It enables the user to control when the table will be offline ', 'NE'),
(47, 'It allows the ADMIN_MOVE_TABLE procedure to be used in HADR environments ', 'DA'),
(48, 'The insert will succeed as it passes validation. ', 'DA'),
(48, 'The insert will succeed as there is no WITH CHECK OPTION on view V3. ', 'NE'),
(48, 'The insert will result in an error as it violates the WITH CHECK OPTION on view V2. ', 'NE'),
(48, 'The insert will succeed as the default WITH CHECK OPTION is LOCAL on view V2. ', 'NE'),
(49, 'A local keystore is not needed if a Hardware Security Module (HSM) is used to manage master keys. ', 'NE'),
(49, 'If a local keystore is used to store data encryption keys, a stash file must be used to store master keys temporarily. ', 'NE'),
(49, 'A master key must be generated and placed in an existing local keystore before a new encrypted database will be created. ', 'DA'),
(49, 'After a local keystore is created, you will be prompted for a password whenever the database manager accesses the keystore. ', 'NE'),
(50, 'To prune the contents of a staging table. ', 'DA'),
(50, 'To prune the contents of a synopsis table. ', 'NE'),
(50, 'To prune the contents of a materialized query table (MQT). ', 'NE'),
(50, 'To prune the contents of a declared global temporary table. ', 'NE'),
(51, 'DML operations ', 'DA'),
(51, 'DDL operations ', 'NE'),
(51, 'Server maintenance operations ', 'NE'),
(51, 'Security administration operations ', 'NE'),
(52, 'XML ', 'NE'),
(52, 'REAL ', 'NE'),
(52, 'NUMBER ', 'DA'),
(52, 'VARCHAR2 ', 'DA'),
(52, 'VARBINARY ', 'NE'),
(53, 'LOAD ', 'DA'),
(53, 'INGEST ', 'NE'),
(53, 'IMPORT ', 'NE'),
(53, 'TRANSPORT ', 'NE'),
(54, 'UPDATE DB CFG USING CF_LOCK_SZ AUTOMATIC ', 'NE'),
(54, 'UPDATE DB CFG USING OPT_DIRECT_WRKLD YES ', 'DA'),
(54, 'UPDATE DB CFG USING LOCKLIST 4096 MAXLOCKS 90 ', 'NE'),
(54, 'UPDATE DB CFG USING LOCKLIST AUTOMATIC MAXLOCKS AUTOMATIC ', 'NE'),
(55, 'REORGCHK automatically runs tables reorganization. ', 'NE'),
(55, 'REORGCHK uses only current table and index statistics. ', 'NE'),
(55, 'REORGCHK can only be used for user tables, not for system tables. ', 'NE'),
(55,'REORGCHK can be used to verify the level of data fragmentation and indicate whether reorganization might be required. ', 'DA'),
(56, 'The LOAD actions can be run from a client machine. ', 'NE'),
(56, 'Object ownership cannot be changed after a successful schema copy operation. ', 'NE'),
(56, 'Tables containing GENERATED ALWAYS identity columns can be imported or loaded. ', 'NE'),
(56, 'Loading data into tables containing XML columns is only supported for the LOAD actions. ', 'DA'),
(57, 'SYNC ', 'NE'),
(57, 'ASYNC ', 'NE'),
(57, 'NEARSYNC ', 'NE'),
(57, 'SUPERASYNC ', 'DA'),
(58, 'It does not apply to table space backups. ', 'NE'),
(58, 'It specifies the compression mode to use for DB2 backups. ', 'NE'),
(58, 'It only has effect when applied to a database in which all tables have been compressed. ', 'NE'),
(58, ' If set, backup images created with the BACKUP command are automatically compressed. ', 'DA'),
(59, 'DB2 memory sets ', 'DA'),
(59, 'the db2diag.log file ', 'NE'),
(59, 'Monitoring table functions ', 'NE'),
(59, 'A set of pre-defined event monitors ', 'NE'),
(60, 'db2pd ', 'NE'),
(60, 'db2dart ', 'NE'),
(60, 'db2expln ', 'NE'),
(60, 'db2advis ', 'DA');