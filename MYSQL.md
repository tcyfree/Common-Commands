1. 批量清空数据表

SELECT CONCAT('truncate table ',table_name,';') FROM information_schema.`TABLES` WHERE table_schema='数据库名';
