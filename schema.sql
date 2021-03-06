drop table if exists wechat_band;
create table users(
    id integer primary key autoincrement,
    openid string not null,
    goal integer not null
);
INSERT INTO "main"."users" VALUES (1, 'oqjTTvrik4KmYttRuZeePaLEpTUg', 12345);

create table steps(
    id integer primary key autoincrement,
    openid string not null,
    day date not null,
    total_steps integer not null,
    CONSTRAINT "fk_steps" FOREIGN KEY ("id") REFERENCES "users" ("id")
);
INSERT INTO "main"."steps" VALUES (0, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-15', 15);
INSERT INTO "main"."steps" VALUES (1, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-05', 5);
INSERT INTO "main"."steps" VALUES (2, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-06', 6);
INSERT INTO "main"."steps" VALUES (3, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-07', 7);
INSERT INTO "main"."steps" VALUES (4, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-08', 8);
INSERT INTO "main"."steps" VALUES (5, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-09', 9);
INSERT INTO "main"."steps" VALUES (6, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-10', 10);
INSERT INTO "main"."steps" VALUES (7, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-11', 11);
INSERT INTO "main"."steps" VALUES (8, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-12', 12);
INSERT INTO "main"."steps" VALUES (9, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-13', 13);
INSERT INTO "main"."steps" VALUES (10, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-14', 14);

create table heart_rates(
    id integer primary key autoincrement,
    openid string not null,
    day date not null,
    total_rates string not null,
    CONSTRAINT "fk_rates" FOREIGN KEY ("id") REFERENCES "users" ("id")
);

INSERT INTO "main"."heart_rates" VALUES (1, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-14', '87,67,96,93,87,66,99,95,101,87,58,81,78,58,84,79,65,91,73,81,98,88,58,60,81,89,102,85,68,71,83,88,67,66,75,62,81,84,79,102,93,63,64,96,62,68,87,58,79,100,74,91,89,63,71,86,87,97,65,79,64,62,69,89,102,94,85,89,77,95,98,80,93,82,60,91,67,88,87,66,63,98,84,101,59,90,71,69,72,89,87,62,97,74,62,96,83,98,83,94,95,83,91,101,100,64,60,100,84,72,65,64,62,68,86,67,60,66,89,73,83,100,79,98,87,95,71,86,92,101,65,63,70,78,96,97,83,84,81,63,66,85,100,84');
INSERT INTO "main"."heart_rates" VALUES (2, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-13', '79,100,76,93,77,102,80,74,100,76,64,65,76,90,72,81,69,84,63,63,75,101,75,74,86,71,74,91,81,70,70,98,91,72,76,94,64,64,67,82,82,82,83,96,89,58,99,67,78,94,72,96,90,84,58,90,76,94,102,83,70,68,91,72,87,77,93,69,70,95,75,90,95,64,68,74,101,68,101,100,100,65,92,59,91,92,99,77,95,58,61,93,89,60,70,65,69,58,86,70,86,101,78,100,86,65,95,89,84,59,60,102,65,72,98,77,74,59,74,82,75,64,91,83,93,66,70,85,62,74,79,85,88,62,65,101,94,75,102,82,62,90,102,73');
INSERT INTO "main"."heart_rates" VALUES (3, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-12', '92,71,65,85,72,101,92,80,68,99,72,67,81,69,65,70,90,70,98,83,66,69,70,71,83,66,61,65,87,67,83,65,83,94,97,64,86,83,81,88,86,65,68,78,93,71,90,89,68,73,101,90,92,84,59,67,69,69,63,96,75,90,97,92,75,97,75,102,85,101,90,72,102,73,73,87,89,75,88,58,75,64,95,58,72,58,67,95,62,81,67,69,82,73,90,85,73,74,63,101,81,71,71,67,77,68,77,91,97,98,94,99,70,60,62,99,95,87,100,97,77,94,77,69,75,99,67,99,90,99,65,77,89,58,95,87,81,70,95,61,59,98,101,64');
INSERT INTO "main"."heart_rates" VALUES (4, 'oqjTTvrik4KmYttRuZeePaLEpTUg', '2015-11-11', '86,91,90,64,60,88,60,89,62,58,86,59,66,101,77,80,90,93,88,73,72,74,92,90,102,90,95,77,93,77,67,97,99,60,84,58,80,62,97,92,69,77,58,74,69,87,69,69,96,74,63,101,85,86,66,93,80,90,69,84,83,86,60,81,102,76,94,72,83,76,59,62,98,59,69,97,93,100,66,90,73,64,85,72,75,77,77,101,67,67,87,84,73,91,93,79,98,63,63,67,64,80,73,68,73,95,99,70,98,96,80,67,100,69,96,80,99,78,96,67,68,83,83,82,76,77,96,92,88,78,85,74,94,85,58,72,97,102,95,73,83,92,65,97');
