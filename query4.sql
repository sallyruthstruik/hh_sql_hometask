select b.*
FROM (
	SELECT user_id, min(modification_time) as modification_time
	FROM hhschool.translation_history
	GROUP BY user_id
) a INNER JOIN (
	SELECT * from hhschool.translation_history 
) b ON a.modification_time = b.modification_time
INNER JOIN (
	SELECT * from hhschool.translation WHERE ui = true
) c ON b.name = c.name AND b.lang = c.lang AND b.site_id = c.site_id
ORDER BY modification_time
LIMIT 10;
