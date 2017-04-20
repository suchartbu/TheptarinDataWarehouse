SELECT "PATIENT"."hn", "PATIENT"."prefix", "PATIENT"."fname", "PATIENT"."lname", "PATIENT"."sex", "PATIENT"."birthday_thdate", "PATIENT"."birthday_thdate" - 5430000 AS "birthday_date", "PATIENT"."first_vn_thdate", "PATIENT"."last_vn_thdate", "PATIENT"."last_vn_thdate" - 5430000 AS "last_vn_date", "PATIENT"."last_disc_thdate", "PATIENT"."last_disc_thdate" - 5430000 AS "last_disc_date", "PATIENT"."last_an", "ADDRESS"."address", "ADDRESS"."tambon", "ADDRESS"."ampher", "ADDRESS"."province", "ADDRESS"."zipcode", "ADDRESS"."tel", "ADDRESS"."mobile", "PATIENT"."nationality", "REGTABV5PF"."RTBTABNAM" AS "nationality_name", "PATIENT"."origin", "REGTABV5PF_1"."RTBTABNAM" AS "origin_name", "PATIENT"."religion", "REGTABV5PF_2"."RTBTABNAM" AS "religion_name", "PATIENT"."marital", "PATIENT"."idcard", "ADDRESS"."guardian_name", "ADDRESS"."guardian_relation", "ADDRESS"."guardian_address", "ADDRESS"."guardian_mobile", "ADDRESS"."email" FROM { OJ "TRHPFV5"."PATIENT" AS "PATIENT" LEFT OUTER JOIN "TRHPFV5"."ADDRESS" AS "ADDRESS" ON "PATIENT"."hn" = "ADDRESS"."hn" RIGHT OUTER JOIN "TRHPFV5"."REGTABV5PF" AS "REGTABV5PF" ON "PATIENT"."nationality" = "REGTABV5PF"."RTBTABCOD" RIGHT OUTER JOIN "TRHPFV5"."REGTABV5PF" AS "REGTABV5PF_1" ON "PATIENT"."origin" = "REGTABV5PF_1"."RTBTABCOD" }, "TRHPFV5"."REGTABV5PF" AS "REGTABV5PF_2" WHERE "PATIENT"."religion" = "REGTABV5PF_2"."RTBTABCOD" AND "REGTABV5PF"."RTBTABTYP" = '02' AND "REGTABV5PF_1"."RTBTABTYP" = '03' AND "REGTABV5PF_2"."RTBTABTYP" = '04'
