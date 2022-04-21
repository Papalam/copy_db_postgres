docker run --name postgres_restore --network=postgres_default \
-v /home/docker-containers/postgres/BACKUPS:/backups --rm postgres_restore:latest \
--clean --if-exists --clean --if-exists --host postgres --port 5432 --username "postgres" \
--dbname DB_NAME --role "postgres" --no-password  --section pre-data --section data \
--section post-data --verbose /backups/DB_FILE.backup