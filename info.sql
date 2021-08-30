column current_scn form 999999999999999999999
col platform form a20
select dbid, db_unique_name, (select version from v$instance) version, database_role, to_char(created, 'dd/mm/yy hh:mi') created, log_mode, flashback_on, current_scn, platform_name platform 
from v$database;
col host_name form a30
col status form a30
select db.inst_id, instance_name, status||' '||open_mode status, host_name, to_char(startup_time, 'dd/mm/yy hh:mi') up_time, logins, dataguard_broker broker, protection_level
from gv$database db, gv$instance inst 
where db.inst_id=inst.inst_id
order by 1
/
