SELECT *
FROM [chemical thermodynamic and polarizability table].[dbo].[Chemical] AS D1
FULL OUTER JOIN [SQL Tutorial].[dbo].[quantum_research_papers] AS D2
ON D1.ID = D2.id
where D1.energy is NOT NULL and D2.id is not NULL

SELECT *
FROM [chemical thermodynamic and polarizability table].[dbo].[Chemical] AS D1
RIGHT OUTER JOIN [SQL Tutorial].[dbo].[quantum_research_papers] AS D2
ON D1.ID = D2.id
where D1.energy is NOT NULL and D2.id is not NULL

SELECT *
FROM [chemical thermodynamic and polarizability table].[dbo].[Chemical] AS D1
LEFT OUTER JOIN [SQL Tutorial].[dbo].[quantum_research_papers] AS D2
ON D1.ID = D2.id
where D1.energy is NOT NULL and D2.id is not NULL
