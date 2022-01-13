DECLARE @message xml = (SELECT message_body FROM deadlock_graph_queue)

SELECT @message.query('(/EVENT_INSTANCE/TextData/deadlock-list)')
