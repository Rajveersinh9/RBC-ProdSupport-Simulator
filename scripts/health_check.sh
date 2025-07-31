#!/bin/bash

echo "🔍 Running Health Check: $(date)"
uptime
df -h | grep '/$'
free -m
