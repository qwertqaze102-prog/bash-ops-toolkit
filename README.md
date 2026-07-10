# Bash Ops Toolkit

**Stack skills:** `Bash · Linux · Git`

> Full portfolio stack: Linux · Docker · Kubernetes · Jenkins · GitLab CI · Ansible · Terraform · Prometheus · Grafana · Zabbix · Nginx · Git · Python · Bash · PowerShell
>
> Hub: https://github.com/qwertqaze102-prog/devops-portfolio-hub


## Toolkit map

```text
bin/
  health-report.sh   → host snapshot
  watchdog.sh        → service auto-recover
  backup-dir.sh      → archive + retention idea
  rotate-logs.sh     → log cleanup/compress
```

Practical shell utilities used in day-to-day operations:
- disk / memory checks
- service watchdog
- log rotation helper
- backup wrapper

```bash
./bin/health-report.sh
./bin/watchdog.sh nginx
./bin/backup-dir.sh /var/www /backups
```

## Screenshots / how it looks

> Diagrams above show architecture. Run the stack locally and attach UI screenshots here if needed:
> - `docs/screenshots/` folder (optional)
> - keep secrets out of screenshots
