# Customer Churn Analytics

# Projet End-to-End : Dashboard décisionnel (Power BI) et modèle prédictif (Machine Learning) pour l'analyse du Churn client.

# Objectif
# Analyser et prédire le churn (attrition) des clients d'une entreprise de télécommunications à partir de données réelles (7 043 clients, 21 variables).

#  Structure du projet



#  Technologies utilisées

 \*\*Power BI\*\*  Dashboard décisionnel \& KPIs

\*\*Python\*\* Analyse exploratoire \& Machine Learning

\*\*pandas, numpy\*\* Manipulation des données

\*\*matplotlib, seaborn\*\* Visualisation

\*\*scikit-learn, XGBoost\*\* Modèles ML

\*\*SQL\*\* Requêtes analytiques



\##  Modèles ML entraînés



| Modèle | Description |

|--------|-------------|

| Logistic Regression | Modèle baseline |

| Random Forest | Ensemble de décision |

| XGBoost | Gradient boosting |


##  Installation

```bash

git clone https://github.com/jnguizo/customer-churn-analytics.git

cd customer-churn-analytics

pip install -r requirements.txt

```

##  Résultats

| Modèle | AUC-ROC |
|--------|---------|
| Logistic Regression | 0.832 |
| Random Forest | 0.817 |
| XGBoost | 0.811 |

- Taux de churn : **26.54%** des clients
- Meilleur modèle : **Logistic Regression** (AUC-ROC: 0.832)
- Variables clés : tenure, type de contrat, charges mensuelles
