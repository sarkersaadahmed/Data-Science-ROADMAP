select *
from [chemical thermodynamic and polarizability table].[dbo].[Chemical]
where Energy in (SELECT id
				from [SQL Tutorial].[dbo].[quantum_research_papers]
				where categories = 'quant-ph')
