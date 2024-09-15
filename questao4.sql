
--   4) Banco de dados

-- Uma empresa solicitou a você um aplicativo para manutenção de um cadastro de clientes. Após a reunião de definição dos requisitos, as conclusões foram as seguintes:

-- - Um cliente pode ter um número ilimitado de telefones;
-- - Cada telefone de cliente tem um tipo, por exemplo: comercial, residencial, celular, etc. O sistema deve permitir cadastrar novos tipos de telefone;
-- - A princípio, é necessário saber apenas em qual estado brasileiro cada cliente se encontra. O sistema deve permitir cadastrar novos estados;

-- Você ficou responsável pela parte da estrutura de banco de dados que será usada pelo aplicativo. Assim sendo:

-- - Proponha um modelo lógico para o banco de dados que vai atender a aplicação. Desenhe as tabelas necessárias, os campos de cada uma e marque com setas os relacionamentos existentes entre as tabelas;
-- - Aponte os campos que são chave primária (PK) e chave estrangeira (FK);
-- - Faça uma busca utilizando comando SQL que traga o código, a razão social e o(s) telefone(s) de todos os clientes do estado de São Paulo (código “SP”);


-- Modelo Logico
-- Clientes
-- -----------------
-- ID (PK) - Inteiro
-- NOME - Varchar(255)
-- RAZAO_SOCIAL - Varchar(255)

-- Telefones
-- ------------------
-- ID (PK) - Inteiro
-- CLIENTE_ID (FK) - Inteiro
-- TIPO - Varchar(50)
-- NUMERO - Varchar(20)
-- ESTADO_ID (FK) - Inteiro

-- Estados
-- ----------------
-- ID (PK) - Inteiro
-- SIGLA - Char(2)
-- NOME - Varchar(100)


-- select para trazer a razão social e os telefones do estado de SP
SELECT e.SIGLA AS Codigo,
       c.NOME,
       c.RAZAO_SOCIAL,
       t.NUMERO,
       t.TIPO
FROM Clientes c
JOIN Telefones t ON c.ID = t.CLIENTE_ID
JOIN Estados e ON c.EstadoID = e.ID
WHERE e.SIGLA = 'SP'
ORDER BY c.RAZAO_SOCIAL;

