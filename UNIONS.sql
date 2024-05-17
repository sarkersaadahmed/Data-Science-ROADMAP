SELECT title, categories, NULL AS PolarizabilityX, NULL AS PolarizabilityY, NULL AS PolarizabilityZ
FROM [SQL Tutorial].[dbo].[quantum_research_papers]
where categories = 'quant-ph'
UNION 
SELECT NULL, NULL, PolarizabilityX, PolarizabilityY, PolarizabilityZ
FROM [chemical thermodynamic and polarizability table].[dbo].[Chemical]
where PolarizabilityX > -0.3
AND 
PolarizabilityY < 0.2
