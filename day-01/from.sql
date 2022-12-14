-- Databricks notebook source
SELECT *,
     datediff(dtEstimativaEntrega,dtEntregue) AS qtDiasPromessaEntrega
  FROM silver_olist.pedido

-- COMMAND ----------

SELECT *
  FROM silver_olist.pedido
