select * from hhschool.translation a
where name in (
	SELECT name 
	FROM hhschool.translation 
	WHERE lang = 'RU'
) and name not in (
	SELECT name
	FROM hhschool.translation 
	WHERE lang = 'UA'
) and ui = true;