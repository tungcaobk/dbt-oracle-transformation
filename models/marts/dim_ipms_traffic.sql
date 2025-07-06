select 
    to_char(DATE_CHECK, 'yyyy-mm-dd') as date_check, 
    RESOUCE_TYPE, 
    MAX(TRAFFIC) as traffic 
from {{ ref('stg_ipms_traffic') }}
GROUP BY to_char(DATE_CHECK, 'yyyy-mm-dd'), RESOUCE_TYPE
ORDER BY to_char(DATE_CHECK, 'yyyy-mm-dd'), RESOUCE_TYPE