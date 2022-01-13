# deadlock-sqlserver
Implementation of event notifications by DEADLOCK_GRAPH in SQL Server.

## Run SQL Server
An instance can be run from the docker-compose.yml file.

## Create Event Notification
Run notification.sql.
Remember to query the service_broker_guid and replace it with the string in
the creation of the event notification.

## Run Initial Data
In deadlock.sql the initial tables are used to simulate a deadlock

## Simulate deadlock
Open two queries and paste script 1 and script 2 from deadlock.sql.
Then run the statements in order as specified in deadlock.png.

## Get deadlock graph
Run extract.sql
Then copy the XML and paste it in a file with .xdl filetype.
Open it in SSMS to view a visualised deadlock graph.
