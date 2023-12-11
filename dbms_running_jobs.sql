Select r.sid,  r.instance,  r.job,  r.this_date,  r.this_sec,  SUBSTR(what,1,40) what
From dba_jobs_running r, dba_jobs j;
