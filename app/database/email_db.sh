#!/bin/bash
#script that compesses and emails the database
sqlite3 pairwise_comparisons.db ".backup pairwise_comparisons.db.bak"

#compress the backup
timestamp=$(date +%s)
tar -cvzf "db_backups/db_backup${timestamp}.tar.gz" pairwise_comparisons.db.bak

#email
mutt -s 'db backup' comparisons.demo@gmail.com -a "db_backups/db_backup${timestamp}.tar.gz"  < /dev/null
