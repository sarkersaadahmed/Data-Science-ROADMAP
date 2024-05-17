SELECT *
FROM [chemical thermodynamic and polarizability table].[dbo].[Chemical] AS c
INNER JOIN [SQL Tutorial].[dbo].[quantum_research_papers] AS q
ON [SQL Tutorial].[dbo].[quantum_research_papers].categories = [chemical thermodynamic and polarizability table].[dbo].[Chemical].Energy;

