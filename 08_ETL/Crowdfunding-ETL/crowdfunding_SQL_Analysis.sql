-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT c.cf_id,
	SUM(c.backers_count)
FROM campaign as c
WHERE c.outcome='live'
GROUP BY c.cf_id
ORDER BY sum DESC;


-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT b.cf_id,
	COUNT(b.backer_id) as count
FROM backers as b
GROUP BY b.cf_id 
ORDER BY count DESC;



-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT DISTINCT ON (c.goal - c.pledged)
	b.first_name,
	b.last_name,
	b.email,
	c.goal - c.pledged as "Remaining_Goal_Amount"
FROM campaign as c
INNER JOIN backers as b
ON (c.cf_id = b.cf_id)
WHERE (outcome='live')
ORDER BY "Remaining_Goal_Amount" DESC;




-- Check the table


-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 



-- Check the table


