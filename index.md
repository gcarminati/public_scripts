1 | info.sql | database and instance information | v$database gv$database v$instance gv$instance database instance info information 
2 | tables.sql | table information | dba_tables dba_segments tables segments
3 | dbms_jobs.sql | information about dbms jobs | dba_jobs dbms_job job scheduler
4 | dbms_running_jobs.sql | information about dbms jobs running | dba_jobs dba_jobs_running dbms_job job scheduler
5 | dbms_job_start.sql | start a dbms job | dba_jobs job ijob start scheduler
6 | dbms_job_stop.sql | stop a dbms job | dba_jobs job ijob stop scheduler
7 | dbms_job_enable.sql | enable a dbms job | dba_jobs job ijob enable scheduler
8 | dbms_job_disable.sql | disable a dbms job | dba_jobs job ijob disable scheduler
9 | dbms_job_without_sid.sql | list dbms jobs without a session | dba_jobs job ijob session scheduler
