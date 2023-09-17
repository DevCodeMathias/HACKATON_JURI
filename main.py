import pandas as pd

# Ler o arquivo Excel
df = pd.read_excel('data/Base_Hackaton_v.Desafios2e3.xlsx', sheet_name=1)

# Exibir as primeiras linhas do DataFrame para verificar se os dados foram carregados corretamente
pd.set_option('display.max_columns', None)
print(df.head())

valor_totla_div= df['VALOR_DIVIDA'].sum()
print(f'o valor total da dívida é {valor_totla_div}')

# Agrupar por estado e calcular a soma da dívida
divida_por_estado = df.groupby('ESTADO_UF')['VALOR_DIVIDA'].sum()

# Calcular a porcentagem
divida_porcentagem = (divida_por_estado / valor_totla_div) * 100

#categorização 
limites = [0, 18, 30, 40, 50, 60, 100]
rotulos = ['0-18', '19-30', '31-40', '41-50', '51-60', '61+']

# Aplicar a categorização da faixa de idade
df['faixa_idade'] = pd.cut(df['IDADE'], bins=limites, labels=rotulos, right=False)

# Exibir os resultados
print(f'Valor total da dívida: {valor_totla_div}')
print('\nDívida por estado:')
print(divida_por_estado)
print('\nPorcentagem da dívida por estado:')
print(divida_porcentagem)

