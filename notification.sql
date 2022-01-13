USE msdb
GO

CREATE QUEUE deadlock_graph_queue 
GO

CREATE SERVICE deadlock_graph_service
ON QUEUE deadlock_graph_queue
(
[http://schemas.microsoft.com/SQL/Notifications/PostEventNotification]
)
GO

CREATE ROUTE deadlock_graph_route
WITH SERVICE_NAME = 'deadlock_graph_service',
ADDRESS = 'LOCAL'
GO

--GUID to Create EVENT NOTIFICATION
SELECT service_broker_guid FROM sys.databases WHERE name = 'msdb'

CREATE EVENT NOTIFICATION deadlock_graph_event
ON SERVER
WITH FAN_IN
FOR DEADLOCK_GRAPH
TO SERVICE 'deadlock_graph_service', 'service_broker_guid'
GO
