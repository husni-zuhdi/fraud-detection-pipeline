SELECT * FROM server_log limit 5; -- should match the first 5 from the server-logs topic
SELECT COUNT(*) FROM server_log; -- 100000
\q -- to exit pgcli