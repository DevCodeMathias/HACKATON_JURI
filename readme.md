# INOVACRED - Plataforma de Prevenção de Ações Judiciais por Inadimplência

**Problema Resolvido**: Nosso negócio se concentra em abordar o desafio de lidar com um número substancial de clientes devedores que frequentemente entram com ações judiciais para discutir suas dívidas. Isso ocorre muitas vezes sob a alegação de desconhecimento ou fraude. Para enfrentar esse problema, desenvolvemos uma plataforma de machine learning que utiliza análise preditiva de dados para identificar proativamente quais clientes têm maior probabilidade de propor ações judiciais.

## Descrição Geral

Nossa plataforma, é uma solução inovadora que combina tecnologia de ponta com inteligência artificial para ajudar as empresas a prevenir ações judiciais decorrentes de inadimplência. Usando um algoritmo de machine learning treinado com dados históricos, nossa plataforma avalia o risco associado a cada cliente devedor. Com base nessa avaliação, as empresas podem adotar estratégias proativas para evitar litígios desnecessários e otimizar a gestão de sua carteira de clientes inadimplentes.

## Tecnologia

- **Plataforma Web/Software**: Desenvolvemos nossa plataforma com Flutter, uma tecnologia de desenvolvimento cross-platform que permite a compilação para web, Windows e Linux. Isso garante acessibilidade e versatilidade na utilização da INOVACRED.

---

> _TEAM AZUL_

![Platform](https://img.shields.io/badge/Platform-Web-blue)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 🛠 Installation (Web/Software)

1. **Pre-requisites**
    - Certifique-se de ter o Dart e o Flutter instalados em sua máquina.

2. **Clone the Repository**

    ```bash
    git clone https://github.com/bellujrb/hackathon-juridico
    ```

3. **Instale as dependencias**

    ```bash
    flutter pub get
    ```

4. **Rode o Web/Software**

    ```bash
    flutter run
    ```

---

## 📂 Project File Tree

```
hackathon_juridico
├── web
  └── ...
├── back-end
    └── ...
```

---

## 🧪 Plano de Teste

A estrutura de testes unitários do Flutter permite testes rápidos e confiáveis. Abaixo está um plano de teste unitário baseado na estrutura de arquivos e Flutter.

#### `hackathon-juridico'

- `back-end`
    - Back-end do Software
- `web`
    - Front-end do Web/Software (Multi Plataform)

## 🛡 Data Security & Privacidade

- Todos os dados são rigorosamente processados e anonimizados para garantir a privacidade.
- Medidas de segurança avançadas protegem contra acesso não autorizado.

---

## 🛠 Tech Stack Web/Software

### Tecnologia(Web/Software)
- Dart
- Flutter

### Design Patterns (Web/Software)
- Singleton

### External Packages (Web/Software)
- Flutter Modular
- Flutter Dotenv
- Google Fonts
- HTTP
- Logger

### Architecture (Web/Software)
- Clean Dart

## 🛠 Tech Stack Back-end

### Tecnologia(Back-end)
- Python

### External Packages (Back-end)
- numpy
- tensorflow
- matplotlib.pyplot
- otenv
- os

---

## Por que Regressão Linear com TensorFlow?

Em resumo, a escolha da regressão linear com TensorFlow foi baseada em sua simplicidade, eficiência, escalabilidade e capacidade de integração, tornando-a a melhor decisão para a INOVACRED para predição de ações judiciais por inadimplência.

### Integração com Ecossistema de Machine Learning:
Como parte de um ecossistema mais amplo de machine learning, o TensorFlow facilita a integração com outras ferramentas e soluções, permitindo a expansão futura.

### Simplicidade e Eficiência:
A regressão linear é uma técnica simples e comprovada para avaliar riscos de inadimplência. Sua implementação com TensorFlow oferece eficiência no treinamento e permite a análise ágil de grandes conjuntos de dados.

### Escalabilidade:
O uso do TensorFlow proporciona escalabilidade, tornando possível lidar com um grande volume de informações de clientes devedores. Isso é fundamental para uma análise abrangente.

### Treinamento Otimizado:
O TensorFlow é otimizado para o treinamento eficiente de modelos, acelerando o processo e melhorando a precisão das previsões.



## Descrição do Código

O código consiste em:

- `linear_regression(x)`: Define a função de hipótese para o modelo linear.
- `mean_squared_error(y_true, y_pred)`: Calcula a função de custo (Erro Quadrático Médio).
- `train_step(x, y)`: Realiza uma etapa de treinamento usando gradiente descendente estocástico (SGD).

## Requisitos

Certifique-se de ter as seguintes bibliotecas instaladas:

- numpy
- tensorflow
- matplotlib
- pandas
- scipy

## Aplicação na Prevenção de Riscos

A regressão linear oferece insights valiosos que podem ser aplicados de maneira sutil para mitigar riscos em diversas áreas, tais como:

- **Análise de Crédito**: Avalia potenciais riscos de inadimplência com base em características dos clientes e comportamentos (do perfil traçado ).

Vale ressaltar que o sucesso do modelo está intrinsecamente ligado à qualidade e representatividade dos dados utilizados em seu treinamento.


## Uso

1. Importe as bibliotecas necessárias.
2. inputa sua base de dados (X e y), baseadas em variáveis depentes e independentes.
3. Inicialize os parâmetros do modelo (W e b).
4. Defina a função de hipótese e a função de custo.
5. Inicialize o otimizador (SGD).
6. Execute o treinamento.
7. Visualize os resultados.

## Roadmap de Desenvolvimento | melhoria  (Backend)

### **Fase 1: Aperfeiçoamento da Implementação Atual**

-  Realizar uma análise detalhada dos dados para identificar possíveis melhorias na qualidade e representatividade do conjunto de dados.
-  Implementar técnicas de pré-processamento de dados, como normalização, tratamento de outliers, e codificação de variáveis categóricas, para melhorar a performance do modelo.
-  Adicionar funcionalidades de validação cruzada e métricas de avaliação de modelo para uma avaliação mais robusta do desempenho.

### **Fase 2: Escalabilidade e Eficiência**

-  Refatorar o código para torná-lo mais modular e escalável, permitindo a fácil incorporação de novos recursos e expansão do escopo do projeto.
-  Implementar estratégias de otimização de código e de treinamento para lidar com conjuntos de dados maiores e aumentar a eficiência computacional.

### **Fase 3: Exploração de Modelos Avançados**

-  Explorar e implementar modelos de regressão mais avançados, como regressão polinomial, regressão ridge, ou regressão LASSO, para avaliar se modelos mais complexos trazem melhorias significativas.
-  Experimentar com técnicas de aprendizado de máquina mais complexas, como árvores de decisão ou redes neurais, para comparar e determinar a abordagem mais eficaz.


```python
# Exemplo de Uso
python linear_regression_example.py