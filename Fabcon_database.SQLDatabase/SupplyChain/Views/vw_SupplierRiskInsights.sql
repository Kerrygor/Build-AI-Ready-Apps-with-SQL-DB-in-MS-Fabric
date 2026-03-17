-- Create a SQL view named SupplyChain.vw_SupplierRiskInsights
-- The view joins Suppliers and SupplierPerformance tables
-- Includes SupplierName, OnTimeDeliveryRate, QualityScore, RiskScore
-- Computes RiskCategory based on RiskScore values

CREATE VIEW SupplyChain.vw_SupplierRiskInsights AS
SELECT
    s.SupplierID,
    s.SupplierName,
    sp.OnTimeDeliveryRate,
    sp.QualityScore,
    sp.RiskScore,
    CASE 
        WHEN sp.RiskScore >= 40 THEN 'High Risk'
        WHEN sp.RiskScore >= 20 AND sp.RiskScore < 40 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS RiskCategory
FROM 
    SupplyChain.Suppliers s
    INNER JOIN SupplyChain.SupplierPerformance sp ON s.SupplierID = sp.SupplierID;

GO

