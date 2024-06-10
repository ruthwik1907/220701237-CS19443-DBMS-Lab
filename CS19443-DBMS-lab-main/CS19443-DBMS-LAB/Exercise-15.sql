1. What privilege should a user be given to log on to the Oracle Server? Is this a system or an object
   privilege?

	The CREATE SESSION system privilege

2. What privilege should a user be given to create tables?

	The CREATE TABLE privilege

3. If you create a table, who can pass along privileges to other users on your table?

	You can, or anyone you have given those privileges to by using the WITH GRANT
	OPTION.

4. You are the DBA. You are creating many users who require the same system privileges.
   What should you use to make your job easier?

	Create a role containing the system privileges and grant the role to the users

5. What command do you use to change your password?

	The ALTER USER statement

6. Grant another user access to your DEPARTMENTS table. Have the user grant you query access to
   his or her DEPARTMENTS table.

	Team 2 executes the GRANT statement.
	GRANT select
	ON departments
	TO <user1>;

	Team 1 executes the GRANT statement.
	GRANT select
	ON departments
	TO <user2>;
	WHERE user1 is the name of team 1 and user2 is the name of team 2.

7. Query all the rows in your DEPARTMENTS table.
	
	SELECT *
	FROM departments;

8. Add a new row to your DEPARTMENTS table. Team 1 should add Education as department
   number 500. Team 2 should add Human Resources department number 510. Query the other
   team’s table.

	Team 1 executes this INSERT statement.

	INSERT INTO departments(department_id, department_name)
	VALUES (500, ’Education’);
	COMMIT;

	Team 2 executes this INSERT statement.

	INSERT INTO departments(department_id, department_name)
	VALUES (510, ’Administration’);
	COMMIT;

9. Query the USER_TABLES data dictionary to see information about the tables that you own.

	SELECT table_name
	FROM user_tables;

10. Revoke the SELECT privilege from the other team.

	Team 1 revokes the privilege.

	REVOKE select
	ON departments
	FROM user2;

	Team 2 revokes the privilege.

	REVOKE select
	ON departments
	FROM user1;

11. Remove the row you inserted into the DEPARTMENTS table in step 8 and save the changes.

	Team 1 executes this INSERT statement.

	DELETE FROM departments
	WHERE department_id = 500;
	COMMIT;

	Team 2 executes this INSERT statement.

	DELETE FROM departments
	WHERE department_id = 510;
	COMMIT;