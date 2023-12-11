col job form 99999
col username form a30
col what form a80
col interval form a40
select job, log_user username, what, interval,
TO_CHAR(next_date, 'DD-MON-YYYY HH24:MI:SS') next_date, 
TO_CHAR(last_date, 'DD-MON-YYYY HH24:MI:SS') last_date, 
failures, broken
from dba_jobs where log_user like upper('%&owner%') and job like '%&job%';
