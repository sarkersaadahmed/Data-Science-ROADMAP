STRINGS IN SQL

--identifying the length of the string, ordered
select title, LEN(title) as title_length
from [SQL Tutorial].[dbo].[quantum_research_papers]
order by title_length

trimming in SQL
select rtrim(digital_object_identifier) as trimmed_DOI
from [SQL Tutorial].[dbo].[quantum_research_papers]

--applying first #n of characters from the defined column
select title, RIGHT(title, 10) as trimmed_title
from [SQL Tutorial].[dbo].[quantum_research_papers]

select title, LEFT(title, 10) as trimmed_title
from [SQL Tutorial].[dbo].[quantum_research_papers]
[we get the column name, first #n of characters from the title column]

select title, SUBSTRING(title, 4, 6) as choiced_title
from [SQL Tutorial].[dbo].[quantum_research_papers]
[we get the title column, starts from which position, and takes the #n of characters from that specific position]
select title, REPLACE(title, 'Entanglement of Subspaces and Error Correcting Codes', 'Quantum Entanglement from Quantum Computing') as replaced_title
from [SQL Tutorial].[dbo].[quantum_research_papers]
[simply replaces the title name]

select title, charindex('Entanglement', 'Entanglement of Subspaces and Error Correcting Codes') as found_titles_for_entanglement
from [SQL Tutorial].[dbo].[quantum_research_papers]
[LOCATING WHHICH POSITION THE STRING EXISTS]

select title, 
CONCAT(title, ' ', id) as concatenated_title
from [SQL Tutorial].[dbo].[quantum_research_papers]

[CONCATENATED TWO STRINGS]
