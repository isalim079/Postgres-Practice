SHOW timezone;

SELECT now()

CREATE TABLE timeZ (time_stamps TIMESTAMP without time zone, time_stamps_zone TIMESTAMP with time zone)

INSERT INTO timeZ values('2024-10-26 14:30:00', '2024-10-26 14:30:00+02:00')

SELECT * FROM timeZ

SELECT CURRENT_DATE;

SELECT now()::date

SELECT now()::time

SELECT to_char(now(), 'dd/mm/yyy')

SELECT to_char(now(), 'dd month, yyyy')

SELECT CURRENT_DATE - INTERVAL '1 year'

SELECT CURRENT_DATE - INTERVAL '1 year 2 month'

SELECT age(CURRENT_DATE, '1998-11-02')      /* You can get user age by this.  */

SELECT *, age(CURRENT_DATE, dob) from students;

SELECT extract(year from '2024-01-25'::date)        /* extract will extract year date or anything from given info */

SELECT extract(day from '2024-01-25'::date)     /* ::date this is type casting. Like I said that this string is date. so type casting will take it as date */

