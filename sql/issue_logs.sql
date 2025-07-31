-- Find all critical issues in the last 7 days
SELECT log_id, log_level, message, created_at
FROM system_logs
WHERE log_level = 'CRITICAL'
  AND created_at >= DATE_SUB(NOW(), INTERVAL 7 DAY);
