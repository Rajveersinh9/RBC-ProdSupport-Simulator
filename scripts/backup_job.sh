#!/bin/bash

echo "🗂️ Starting Backup: $(date)"
tar -czf backup_$(date +%F).tar.gz /var/log
echo "✅ Backup completed."
