import pandas as pd
import numpy as np
from datetime import datetime, timedelta

# Configuração de semente para dados reproduzíveis
np.random.seed(42)

# Parâmetros
n_pedidos = 1000
produtos = {
    'Cerveja Pilsen 350ml': 3.50,
    'Cerveja IPA 600ml': 12.00,
    'Cerveja Pure Malt 473ml': 5.50,
    'Refrigerante Guaraná 2L': 7.00,
    'Água Mineral 500ml': 2.00
}
regioes = ['SE - São Paulo', 'SE - Rio de Janeiro', 'S - Porto Alegre', 'NE - Salvador', 'CO - Brasília']
canais = ['Supermercado', 'Bar / Restaurante', 'Conveniência', 'Distribuidor']

# Gerar datas entre Jan/2024 e Out/2026
data_inicio = datetime(2024, 1, 1)
datas = [data_inicio + timedelta(days=int(np.random.randint(0, 1000))) for _ in range(n_pedidos)]

# Montar DataFrame
lista_produtos = list(produtos.keys())
prods_escolhidos = np.random.choice(lista_produtos, n_pedidos)
quantidades = np.random.randint(5, 500, n_pedidos)

df = pd.DataFrame({
    'id_pedido': range(1001, 1001 + n_pedidos),
    'data_pedido': datas,
    'produto': prods_escolhidos,
    'preco_unitario': [produtos[p] for p in prods_escolhidos],
    'quantidade': quantidades,
    'regiao': np.random.choice(regioes, n_pedidos),
    'canal_venda': np.random.choice(canais, n_pedidos)
})
# Calcular Faturamento Total
df['faturamento_total'] = df['preco_unitario'] * df['quantidade']

# Salvar em CSV
df.to_csv('vendas_ambev_style.csv', index=False, encoding='utf-8')
print("✅ Base 'vendas_ambev_style.csv' gerada com sucesso!")