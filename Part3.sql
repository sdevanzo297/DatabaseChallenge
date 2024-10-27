CREATE OR REPLACE PROCEDURE update_book(
	IN ISBN INT,
	IN memberID INT,
	IN copies INT
)
LANGUAGE plpgsql
AS $$
BEGIN
	UPDATE currentLoan
	SET copies = copies - amount
	WHERE ISBN = ISBN AND memberID = memberID;
	
	commit;
end $$;

call update_book(12345567890, 05, 4); 