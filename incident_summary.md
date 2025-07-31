# Incident Summary – Memory Leak Crash

**Incident Time**: 2025-07-29 03:12 AM  
**Issue**: Application crash due to excessive memory use in batch job  
**Root Cause**: Infinite loop in backup script exceeded memory threshold  
**Actions Taken**:
- Job killed via systemd
- Memory usage reviewed using `top`
- Restart policy added to cron runner

**Resolution**:
- Alert configured via Prometheus for memory > 75%
- Code updated with max loop limit

**Next Steps**:
- Update monitoring thresholds
- Document fix in runbook
