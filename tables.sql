select
	dt.owner owner,
  dt.table_name table_name,
  dt.num_rows,
  dt.blocks,
  round((dt.blocks * 8)/1024,1) optimal_size_mb,
  round((ds.blocks * 8)/1024,1) current_size_mb,
  dt.tablespace_name tablespace_name,
  dt.empty_blocks,
  to_char(dt.last_analyzed,'dd/mm/yyyy hh24:mi') last_analyzed,
  dt.partitioned,
  dt.degree par
from 
  dba_tables dt, 
  dba_segments ds
where 
  dt.owner = upper('&owner')
  and dt.table_name = upper('&table_name')
  and dt.owner = ds.owner(+)
  and dt.table_name = ds.segment_name(+)
  and ds.segment_type(+) = 'TABLE'
order by 
  owner, 
  table_name;
