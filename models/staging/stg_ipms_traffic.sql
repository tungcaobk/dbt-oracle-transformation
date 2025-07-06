select DATE_CHECK, RESOUCE_TYPE, TRAFFIC 
from {{ source('data_warehouse', 'tech_ipms_traffic') }}