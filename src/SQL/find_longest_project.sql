SELECT id, (finish_date - start_date) AS month_count
FROM project
WHERE (finish_date - start_date) = (SELECT MAX(finish_date - start_date) FROM project);
