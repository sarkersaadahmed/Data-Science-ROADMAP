SELECT TOP (1000) [title]
      ,[categories]
      ,[created]
      ,[id]
      ,[digital_object_identifier]
  FROM [SQL Tutorial].[dbo].[quantum_research_papers]


--selecting everything
select * 
from [SQL Tutorial].[dbo].[quantum_research_papers]

--select something specific

select * 
from [SQL Tutorial].[dbo].[quantum_research_papers]
where categories = 'quant-ph'

--selecting something similar
select *
from [SQL Tutorial].[dbo].[quantum_research_papers]
where title LIKE '%Gen%'
--selecting exactly what you are looking for
select *
from [SQL Tutorial].[dbo].[quantum_research_papers]
where categories = 'quant-ph'
--selecting exactly specific number of letters depending on how many times
--underscore has been selected

--filtering out specific values depending on range
select *
from [SQL Tutorial].[dbo].[quantum_research_papers]
where digital_object_identifier LIKE '%10.1%'


--groups [identifying what are the categories present in my database]
select categories
from [SQL Tutorial].[dbo].[quantum_research_papers]
group by cateogires;


--arranges the id column in order
select distinct categories, id
from [SQL Tutorial].[dbo].[quantum_research_papers]
order by id

--outputs specific category [column1 and their average id value]
--just for the record, i have rearranged them in order
select categories, avg(id) as average_id
from [SQL Tutorial].[dbo].[quantum_research_papers]
group by categories
order by average_id