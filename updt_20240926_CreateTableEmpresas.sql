CREATE TABLE empresas (
    cnpj_completo VARCHAR(20) PRIMARY KEY, -- Considerando que cnpj_completo será único
    cnpj_basico CHAR(8), -- Parte básica do CNPJ
    razao_social VARCHAR(255), -- Razão social da empresa
    natureza_juridica CHAR(4), -- Código da natureza jurídica
    qualificacao_responsavel CHAR(2), -- Qualificação do responsável
    capital_social DECIMAL(18, 2), -- Capital social em formato numérico
    porte CHAR(2), -- Porte da empresa
    ente_federativo_responsavel VARCHAR(255), -- Ente federativo responsável (pode ser NULL)
    cnpj_ordem CHAR(4), -- Parte ordem do CNPJ
    cnpj_dv CHAR(2), -- Dígito verificador do CNPJ
    identificador_matriz_filial CHAR(1), -- Identificador de matriz ou filial
    nome_fantasia VARCHAR(255), -- Nome fantasia da empresa
    situacao_cadastral VARCHAR(20), -- Código da situação cadastral
    data_situacao_cadastral DATE, -- Data da situação cadastral
    motivo_situacao_cadastral CHAR(10), -- Código do motivo da situação cadastral
    nome_cidade_exterior VARCHAR(255), -- Nome da cidade exterior (se aplicável)
    pais_estabelecimento VARCHAR(255), -- País do estabelecimento
    data_inicio_atividade DATE, -- Data de início das atividades
    cnae_fiscal_principal CHAR(7), -- Código principal do CNAE
    cnae_fiscal_secundaria TEXT, -- Código secundário do CNAE (pode haver mais de um)
    tipo_logradouro VARCHAR(50), -- Tipo de logradouro
    logradouro VARCHAR(500), -- Nome do logradouro
    numero VARCHAR(20), -- Número do endereço
    complemento VARCHAR(255), -- Complemento do endereço
    bairro VARCHAR(255), -- Bairro
    cep CHAR(8), -- CEP
    uf CHAR(10), -- Unidade federativa
    municipio VARCHAR(255), -- Município
    ddd1 CHAR(10), -- DDD do primeiro telefone
    telefone1 VARCHAR(20), -- Número do primeiro telefone
    ddd2 CHAR(10), -- DDD do segundo telefone
    telefone2 VARCHAR(20), -- Número do segundo telefone
    ddd_fax CHAR(10), -- DDD do fax
    fax VARCHAR(20), -- Número do fax
    email VARCHAR(255), -- E-mail
    situacao_especial VARCHAR(255), -- Situação especial (se aplicável)
    data_situacao_especial DATE, -- Data da situação especial
    identificador_socio CHAR(2), -- Identificador do sócio
    nome_socio VARCHAR(255), -- Nome do sócio
    cnpj_cpf_socio VARCHAR(14), -- CNPJ ou CPF do sócio
    qualificacao_socio CHAR(10), -- Qualificação do sócio
    data_entrada_sociedade DATE, -- Data de entrada na sociedade
    pais_socio VARCHAR(255), -- País do sócio
    cpf_representante_legal VARCHAR(11), -- CPF do representante legal
    nome_representante VARCHAR(255), -- Nome do representante legal
    qualificacao_representante CHAR(2), -- Qualificação do representante legal
    faixa_etaria CHAR(10), -- Faixa etária do sócio
    opcao_simples CHAR(2), -- Opção pelo Simples Nacional (S/N)
    data_opcao_simples DATE, -- Data da opção pelo Simples Nacional
    data_exclusao_simples DATE, -- Data de exclusão do Simples Nacional
    opcao_mei CHAR(2), -- Opção pelo MEI (S/N)
    data_opcao_mei DATE, -- Data de opção pelo MEI
    data_exclusao_mei DATE, -- Data de exclusão do MEI
    codigo_cnae CHAR(7), -- Código do CNAE
    descricao_cnae VARCHAR(255), -- Descrição do CNAE
    municipio_codigo CHAR(7), -- Código do município
    municipio_descricao VARCHAR(255), -- Descrição do município
    pais_estabelecimento_codigo CHAR(3), -- Código do país do estabelecimento
    pais_estabelecimento_descricao VARCHAR(255), -- Descrição do país do estabelecimento
    pais_socio_codigo CHAR(10), -- Código do país do sócio
    pais_socio_descricao VARCHAR(255), -- Descrição do país do sócio
    natureza_juridica_codigo CHAR(4), -- Código da natureza jurídica
    natureza_juridica_descricao VARCHAR(255), -- Descrição da natureza jurídica
    motivo_codigo CHAR(10), -- Código do motivo da situação
    motivo_descricao VARCHAR(255) -- Descrição do motivo da situação
);
