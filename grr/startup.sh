#!/bin/sh

# grr connect.inc.php
GRR_FILE="/var/www/GRR/include/connect.inc.php"
echo "<?php" > $GRR_FILE
echo "\$dbHost=\""$MYSQL_HOST"\";" >> $GRR_FILE
echo "\$dbDb=\""$MYSQL_DATABASE"\";" >> $GRR_FILE
echo "\$dbUser=\""$MYSQL_USER"\";" >> $GRR_FILE
echo "\$dbPass=\""$MYSQL_PASSWORD"\";" >> $GRR_FILE
echo "\$table_prefix=\""$MYSQL_PREFIX"\";" >> $GRR_FILE
echo "\$dbPort=\""$MYSQL_PORT"\";" >> $GRR_FILE
echo "?>" >> $GRR_FILE

# RUN
php5-fpm
nginx
