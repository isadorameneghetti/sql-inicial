# SQL Inicial - Fundamentos para Análise de Dados 📊

![SQL](https://img.shields.io/badge/SQL-All%20Major%20Dialects-blue.svg)
![Status](https://img.shields.io/badge/Status-Concluído-green.svg)
![Curso](https://img.shields.io/badge/Curso-SQLite%20Online-brightgreen.svg)

## 📋 Sobre o Projeto

**SQL Inicial** é o sexto passo na minha jornada para Engenharia de Inteligência Artificial. Este repositório documenta minha evolução no curso **"SQLite online: conhecendo instruções SQL"** da Alura, ministrado pela professora Beatriz Magalhães (8h), onde aprendo os fundamentos da linguagem SQL para manipulação e consulta de dados.

Após dominar Python, estruturas de dados, NumPy e análise numérica, agora é hora de aprender a **extrair e manipular dados diretamente de bancos de dados relacionais** - uma habilidade essencial para qualquer profissional de dados.

## 🎯 Minha Trilha para Engenharia de IA

```
🚀 Python Básico (Sabor Express) ✅ Concluído
   ↓
🧠 Python: Orientação a Objetos ✅ Concluído
   ↓
📊 Python: Trabalhando com Dados ✅ Concluído
   ↓
📚 Praticando Python: Estruturas de Dados ✅ Concluído
   ↓
🔢 NumPy: Análise Numérica ✅ Concluído
   ↓
🗄️ SQL: Fundamentos para Análise de Dados ⬅️ Você está aqui
   ↓
📈 Pandas & Matplotlib (Análise e Visualização)
   ↓
🤖 Fundamentos de Machine Learning
   ↓
🧬 Deep Learning & Redes Neurais
   ↓
⚡ Engenharia de IA (Objetivo Final)
```

## 📁 Estrutura do Projeto

```
sql-inicial/
│
├── aula01/                    # 📝 Introdução ao SQL e consultas básicas
│   └── (scripts e exercícios)
│
├── aula02/                    # 📝 Filtros e condicionais
│   └── (scripts e exercícios)
│
├── aula03/                    # 📝 Joins e relacionamentos
│   └── (scripts e exercícios)
│
├── aula04/                    # 📝 Inserção, atualização e exclusão
│   └── (scripts e exercícios)
│
├── dados/                     # 🗃️ Datasets utilizados nos exercícios
│
├── desafio/                   # 🏆 Desafios práticos
│
└── README.md                  # Documentação do projeto
```

## 📚 O que Aprendi em Cada Aula

### **aula01** - Introdução ao SQL
- **Conceitos:** O que é SQL, bancos de dados relacionais, SQLite online
- **Comandos:** `SELECT`, `FROM`, `WHERE` básico
- **Habilidade:** Realizar consultas simples em tabelas

### **aula02** - Filtros e Condicionais
- **Conceitos:** Operadores de comparação, operadores lógicos (`AND`, `OR`, `NOT`)
- **Comandos:** `ORDER BY`, `LIMIT`, `BETWEEN`, `LIKE`, `IN`
- **Habilidade:** Filtrar dados com precisão usando múltiplas condições

### **aula03** - Joins e Relacionamentos
- **Conceitos:** Chaves primárias e estrangeiras, normalização
- **Comandos:** `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`
- **Habilidade:** Combinar dados de múltiplas tabelas

### **aula04** - Manipulação de Dados (CRUD)
- **Conceitos:** Integridade referencial, transações
- **Comandos:** `INSERT INTO`, `UPDATE`, `DELETE`, `CREATE TABLE`
- **Habilidade:** Inserir, atualizar e excluir dados mantendo a integridade

### **desafio** - Projeto Prático
- **Objetivo:** Aplicar todos os conceitos em um projeto completo
- **Habilidade:** Resolver problemas reais com SQL

## 🗃️ Comandos SQL Aprendidos

| Categoria | Comandos | Descrição |
|-----------|----------|-----------|
| **Consulta** | `SELECT`, `FROM`, `WHERE` | Buscar dados específicos |
| **Filtros** | `AND`, `OR`, `NOT`, `BETWEEN`, `LIKE`, `IN` | Refinar resultados |
| **Ordenação** | `ORDER BY`, `LIMIT` | Organizar e limitar resultados |
| **Junção** | `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` | Combinar tabelas |
| **Manipulação** | `INSERT INTO`, `UPDATE`, `DELETE` | Modificar dados |
| **Estrutura** | `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE` | Gerenciar tabelas |

## 📊 Boas Práticas Aprendidas

- ✅ **Nomenclatura clara** para tabelas e colunas
- ✅ **Uso de aliases** (`AS`) para melhor legibilidade
- ✅ **Indentação** para consultas complexas
- ✅ **Comentários** explicando a lógica
- ✅ **Backup** antes de operações destrutivas
- ✅ **Testes** com `SELECT` antes de `UPDATE` ou `DELETE`
- ✅ **Integridade referencial** com chaves estrangeiras

## 🔗 Conexão com Análise de Dados e IA

| Conceito SQL | Aplicação em Dados/IA |
|--------------|----------------------|
| `SELECT` com filtros | Extração de datasets específicos |
| `JOIN` | Combinação de múltiplas fontes de dados |
| `GROUP BY` | Agregação para análise exploratória |
| `ORDER BY` | Organização para visualização |
| `INSERT/UPDATE/DELETE` | Preparação e limpeza de dados |
| Subconsultas | Feature engineering avançada |

## 🚀 Como Executar

1. **Ambiente online:** SQLite Online (https://sqliteonline.com/)
2. **Carregue os dados** fornecidos na pasta `dados/`
3. **Execute os scripts** de cada aula no ambiente SQL
4. **Pratique** resolvendo os desafios propostos

## 📈 Exemplo de Consulta

```sql
-- Exemplo: JOIN entre tabelas de clientes e pedidos
SELECT 
    c.nome_cliente,
    c.email,
    p.data_pedido,
    p.valor_total
FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente
WHERE p.valor_total > 1000
ORDER BY p.valor_total DESC
LIMIT 10;
```

## 💡 Dicas para Análise de Dados com SQL

1. **Comece com consultas simples** e vá adicionando complexidade
2. **Use `LIMIT`** para testar antes de processar grandes volumes
3. **Documente suas consultas** com comentários
4. **Valide os resultados** comparando com expectativas
5. **Pratique com datasets reais** para ganhar experiência

## 🔮 Próximos Passos na Trilha de Dados

Com os fundamentos SQL dominados, estou pronto para:

1. **Pandas** - Manipulação de dados em Python (complementar ao SQL)
2. **Análise Exploratória de Dados (EDA)** - Visualização e estatísticas
3. **Machine Learning** - Preparação de dados e modelagem
4. **Big Data** - SQL em escala (Spark SQL, Hive, etc.)

## 💭 Reflexão

> "SQL é a língua franca dos dados. Até os modelos mais avançados de IA precisam de dados bem estruturados, e o SQL é a ferramenta fundamental para acessar, filtrar e preparar esses dados. Dominar SQL significa conseguir conversar diretamente com os bancos de dados - onde a maioria das organizações armazena suas informações mais valiosas."

---

**Desenvolvido com dedicação durante o curso "SQLite online: conhecendo instruções SQL" da Alura** 🐍

*"SQL não é apenas uma linguagem - é a ponte entre os dados brutos e os insights que transformam negócios."*