CREATE TABLE server_log (
    eventId VARCHAR(50),
    userId INT,
    eventType VARCHAR(15),
    locationCountry VARCHAR(25),
    eventTimeStamp VARCHAR(25),
    PRIMARY KEY (eventId)
);