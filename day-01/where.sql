-- Databricks notebook source
SELECT * 
  FROM silver_olist.pedido
 WHERE descSituacao = 'delivered' 
 LIMIT 100

-- COMMAND ----------

SELECT * 
  FROM silver_olist.pedido
 WHERE TRUE
   AND (descSituacao = 'shipped' OR descSituacao = 'cancelled')
   AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT * 
  FROM silver_olist.pedido
 WHERE TRUE
   AND descSituacao IN ('shipped','cancelled')
   AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT * 
  FROM silver_olist.pedido
 WHERE TRUE
   AND descSituacao IN ('shipped','cancelled')
   AND year(dtPedido) = '2018'
   AND datediff(dtEstimativaEntrega,dtAprovado) > 30 
