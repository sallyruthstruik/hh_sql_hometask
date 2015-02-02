select 
	organization_form, count(employer_id) as "count" 
from hhschool.employer 
group by organization_form 
having count(employer_id) >= 0 
order by "count" desc;