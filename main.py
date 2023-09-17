import pandas as pd
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error
import matplotlib.pyplot as plt

# Ler o arquivo Excel
df = pd.read_excel('data/Base_Hackaton_v.Desafios2e3.xlsx', sheet_name=1)

# Converter a variável categórica 'FAIXA_IDADE_CLIENTE' em variáveis dummy
df = pd.get_dummies(df, columns=['FAIXA_IDADE_CLIENTE'], drop_first=True)

# Definir as variáveis independentes (X) e a variável dependente (y)
X = df[['FAIXA_IDADE_CLIENTE_24 a 27 anos', 'FAIXA_IDADE_CLIENTE_27 a 30 anos', 'FAIXA_IDADE_CLIENTE_30 a 33 anos', 'FAIXA_IDADE_CLIENTE_33 a 36 anos', 'FAIXA_IDADE_CLIENTE_36 a 39 anos', 'FAIXA_IDADE_CLIENTE_39 a 42 anos', 'FAIXA_IDADE_CLIENTE_42 a 45 anos', 'FAIXA_IDADE_CLIENTE_45 a 48 anos', 'FAIXA_IDADE_CLIENTE_48 a 51 anos', 'FAIXA_IDADE_CLIENTE_51 a 54 anos', 'FAIXA_IDADE_CLIENTE_54 a 57 anos', 'FAIXA_IDADE_CLIENTE_57 a 60 anos', 'FAIXA_IDADE_CLIENTE_60 a 63 anos', 'FAIXA_IDADE_CLIENTE_63 a 66 anos', 'FAIXA_IDADE_CLIENTE_66 a 69 anos', 'FAIXA_IDADE_CLIENTE_69 a 72 anos', 'FAIXA_IDADE_CLIENTE_72 a 75 anos', 'FAIXA_IDADE_CLIENTE_75 a 78 anos', 'FAIXA_IDADE_CLIENTE_78 a 81 anos', 'FAIXA_IDADE_CLIENTE_81 a 84 anos', 'FAIXA_IDADE_CLIENTE_84 a 87 anos', 'FAIXA_IDADE_CLIENTE_87 a 90 anos', 'FAIXA_IDADE_CLIENTE_90 a 93 anos', 'FAIXA_IDADE_CLIENTE_93 a 96 anos', 'FAIXA_IDADE_CLIENTE_> 96 anos']]
y = df['VALOR_DIVIDA']

# Dividir os dados em conjuntos de treinamento e teste
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Criar o modelo de regressão linear
modelo = LinearRegression()

# Treinar o modelo
modelo.fit(X_train, y_train)

# Fazer previsões no conjunto de teste
previsoes = modelo.predict(X_test)

# Avaliar a performance do modelo
mse = mean_squared_error(y_test, previsoes)
print(f'Erro Médio Quadrático: {mse}')


# Plotar um gráfico de dispersão para visualizar as previsões
plt.scatter(y_test, previsoes)
plt.xlabel('Valores Reais')
plt.ylabel('Previsões')
plt.title('Valores Reais vs Previsões')
plt.show()




