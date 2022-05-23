CREATE TABLE IF NOT EXISTS RECORDS(
   rid INTEGER PRIMARY KEY AUTOINCREMENT,
   content TEXT NULL,
   indate TIMESTAMP NOT NULL,
   status INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS TAGS(
   tid INTEGER PRIMARY KEY AUTOINCREMENT,
   text VARCHAR (10) NULL,
   type INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS RTREL(
   uid INTEGER PRIMARY KEY AUTOINCREMENT,
   rid INTEGER NOT NULL,
   tid INTEGER NOT NULL,
   sort INTEGER DEFAULT 0
);

CREATE INDEX IF NOT EXISTS idx_rid ON RTREL (rid);
CREATE INDEX IF NOT EXISTS idx_tid ON RTREL (tid);
CREATE INDEX IF NOT EXISTS idx_text ON TAGS (text);