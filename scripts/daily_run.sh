#!/bin/bash

cd /workspaces/career-ops

echo "# $(date)" >> daily_jobs.md

claude -p "/career-ops scan

Only return a clean list of jobs.
No explanation.
No scoring breakdown.
Format:
- Job title
- Company
- Location
- URL
- Country
- Remote/hybrid/on-site
- Language requirement
" >> daily_jobs.md

git add daily_jobs.md
git commit -m "Daily scan update"
git push