# Projeto de Obtenção dos Dados de Empresas com Dados Abertos

Este projeto visa adquirir, processar e carregar dados de empresas do Brasil, utilizando dados disponibilizados no portal de **Dados Abertos**. O foco principal é a criação de uma aplicação que permite a análise de empresas e seus estabelecimentos, com um pipeline completo que vai desde a aquisição dos dados até o carregamento em um banco de dados PostgreSQL. 

## Etapas do Projeto

### 1. Aquisição dos Dados
A primeira etapa do projeto consiste na obtenção de dados de empresas, estabelecimentos, sócios e demais informações relacionadas, disponíveis publicamente no site de **Dados Abertos**. Estes dados estão disponíveis no formato **CSV** e compactados em arquivos **ZIP**, organizados em diferentes tabelas.

### 2. Leitura e Conversão dos Arquivos CSV para Parquet
Após o download, todos os arquivos **ZIP** foram descompactados, e os **CSV** resultantes foram lidos. Utilizamos a biblioteca **Dask DataFrame** para gerenciar e processar os dados, dada a sua eficiência no tratamento de grandes volumes de dados. Com essa ferramenta, os **CSV** foram convertidos para o formato **Parquet**, que oferece compressão eficiente e acesso mais rápido para grandes datasets. O **Dask** foi escolhido por sua capacidade de paralelizar operações em datasets grandes, otimizando tempo e uso de memória.

### 3. Tratamento e Limpeza de Dados
Nesta etapa, os 10 DataFrames obtidos (como `empresas`, `estabelecimentos`, `sócios`, etc.) foram tratados para corrigir inconsistências, como valores nulos, tipos de dados incorretos e duplicidades. Também foi feito o **merge** entre essas tabelas, resultando em um único DataFrame unificado, que foi salvo novamente em formato **Parquet**. Essa abordagem permite um maior desempenho e eficiência, tanto no tratamento quanto no armazenamento dos dados.

### 4. Carregamento no Banco de Dados PostgreSQL
Na etapa final, os dados do arquivo **Parquet** unificado foram carregados no banco de dados **PostgreSQL**, utilizando a tabela `empresas`. Utilizamos um processo de inserção em lotes, com controle de duplicidades baseado na chave primária da tabela `cnpj_completo`. O PostgreSQL foi escolhido pelo seu alto desempenho em operações transacionais e consultas complexas, além de ser uma solução robusta e confiável para armazenamento de dados.

## Benefícios da Abordagem

- **Eficiência no Processamento**: Utilizando a biblioteca **Dask DataFrame**, conseguimos tratar grandes volumes de dados de forma eficiente, sem sobrecarregar a memória. O formato **Parquet** proporciona uma compressão eficiente e uma leitura mais rápida.
  
- **Escalabilidade**: A utilização do **Dask** permite paralelizar o processamento, o que pode ser escalado para clusters de processamento maiores, se necessário.

- **PostgreSQL**: Escolhemos o **PostgreSQL** por sua robustez e flexibilidade. Ele oferece suporte a operações complexas, garantias de transações ACID e alto desempenho em grandes volumes de dados.

## Como Rodar o Projeto

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/dariocoelho04/cnpj_dadosabertos.git
2. **Instale as dependências necessárias**:
   ```bash
   pip install -r requirements.txt
3. Configure o PostgreSQL e crie a tabela empresas usando o script de criação de tabela disponível no repositório.
4. Execute o pipeline para aquisição, tratamento e carregamento dos dados conforme descrito nos scripts fornecidos.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue ou enviar um pull request com melhorias ou correções.
