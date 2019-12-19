CREATE OR REPLACE PROCEDURE "MI182_rsmina".sched_meeting(date, character varying, character varying)
 LANGUAGE plpgsql
AS $procedure$
	BEGIN

	CREATE TABLE  "MI182_rsmina".meetings (
	meeting_date DATE,
	client_fname VARCHAR(45),
	client_lname VARCHAR(45),
	company_name VARCHAR(100));

	INSERT INTO "MI182_rsmina".meetings VALUES(
	$1,
	$2,
	$3
	);


	COMMIT;

	END;
$procedure$
;
