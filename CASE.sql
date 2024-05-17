SELECT Energy,
       PolarizabilityX,
       PolarizabilityY,
       PolarizabilityZ,
       EnergyLUMO,
       ZeroPointVibration,
       FreeEnergy,
       CASE
           WHEN EnergyGap >= -110 THEN 'HighEnergy'
           WHEN PolarizabilityX >= -0.5 AND PolarizabilityY >= -0.5 AND PolarizabilityZ >= -0.5 THEN 'HighPolarizability'
           ELSE 'Low Polarizability'
       END AS EnergyCategory
FROM [chemical thermodynamic and polarizability table].[dbo].[Chemical];
