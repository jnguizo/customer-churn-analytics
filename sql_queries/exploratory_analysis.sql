 ## ANALYSE EXPLORATOIRE DU CHURN CLIENT
 ## Projet : Dashboard Décisionnel & Analyse Prédictive du Churn


##1. Taux de Churn Global (État des lieux pour nos futurs KPIs Power BI)
SELECT 
    COUNT(*) AS total_clients,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS nombre_churn,
    ROUND(AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS taux_churn_global
FROM 'data/churn_data.csv';


##2. Analyse par type de contrat (Hypothèse : Les contrats courts partent plus vite)
SELECT 
    Contract,
    COUNT(*) AS total_clients,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS nombre_churn,
    ROUND(AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS taux_churn_pourcent
FROM 'data/churn_data.csv'
GROUP BY Contract
ORDER BY taux_churn_pourcent DESC;


 ##3. Impact financier (Le manque à gagner mensuel précis causé par les départs)
SELECT 
    Churn,
    COUNT(*) AS total_clients,
    ROUND(SUM(MonthlyCharges), 2) AS facturation_mensuelle_totale,
    ROUND(AVG(MonthlyCharges), 2) AS panier_moyen_mensuel
FROM 'data/churn_data.csv'
GROUP BY Churn;