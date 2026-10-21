-- ============================================================
-- PROJETO: Sales & Distribution Analytics (AmBev Style)
-- CONSULTAS DE ANÁLISE DE DADOS (SQL)
-- ============================================================

-- 1. Faturamento Total e Volume Vendido por Região
SELECT 
    regiao,
    COUNT(id_pedido) AS total_pedidos,
    SUM(quantidade) AS volume_total_vendido,
    ROUND(SUM(faturamento_total), 2) AS faturamento_total_brl,
    ROUND(AVG(faturamento_total), 2) AS ticket_medio_brl
FROM vendas_ambev
GROUP BY regiao
ORDER BY faturamento_total_brl DESC;


-- 2. Performance de Vendas por Canal de Distribuição
SELECT 
    canal_venda,
    SUM(quantidade) AS volume_vendido,
    ROUND(SUM(faturamento_total), 2) AS faturamento_total,
    ROUND((SUM(faturamento_total) * 100.0 / (SELECT SUM(faturamento_total) FROM vendas_ambev)), 2) AS pct_participacao
FROM vendas_ambev
GROUP BY canal_venda
ORDER BY faturamento_total DESC;


-- 3. Top Produtos Mais Vendidos por Faturamento
SELECT 
    produto,
    SUM(quantidade) AS unidades_vendidas,
    ROUND(SUM(faturamento_total), 2) AS faturamento_gerado
FROM vendas_ambev
GROUP BY produto
ORDER BY faturamento_gerado DESC;


-- 4. Análise Temporal de Evolução de Vendas (Mês a Mês)
SELECT 
    STRFTIME('%Y-%m', data_pedido) AS mes_ano,
    COUNT(id_pedido) AS total_pedidos,
    SUM(quantidade) AS volume_vendido,
    ROUND(SUM(faturamento_total), 2) AS faturamento_mensal
FROM vendas_ambev
GROUP BY mes_ano
ORDER BY mes_ano ASC;