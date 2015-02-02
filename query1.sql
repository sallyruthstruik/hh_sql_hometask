select 
	distinct organization_form 
from hhschool.employer 
where 
	organization_form is not null 
order by organization_form desc;