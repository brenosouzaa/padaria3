USE MASTER IF EXISTS(SELECT * FROM SYS.databases WHERE NAME = 'bdTechZoom')
DROP DATABASE bdTechZoom
GO

CREATE DATABASE bdTechZoom
GO

USE bdTechZoom
GO

CREATE TABLE Usuario
( 
   id            INT IDENTITY,
   nome          VARCHAR(100)	NOT NULL,
   email         VARCHAR(100)	NOT NULL,
   senha         VARCHAR(100)	NOT NULL,
   nivelAcesso   VARCHAR(10)    NULL, -- ADM, TEC ou USER
   foto		 VARBINARY(MAX) NULL,
   statusUsuario VARCHAR(20)    NOT NULL, -- ATIVO ou INATIVO ou TROCAR_SENHA

   PRIMARY KEY (id)
)

INSERT INTO USUARIO
VALUES('YASMIN BECCA',
'YASMIN.BECCA01@GMAIL.COM',
'04062005',
'ADM',
NULL,
'ATIVO')

UPDATE USUARIO
SET senha= '12345'
WHERE nome='YASMIN BECCA'

GO

	
INSERT INTO USUARIO
VALUES('JULIO CESAR',
'JULIOCESAR@GMAIL.COM',
'JULIOC',
'ADM',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('BRENO GUSTAVO',
'BRENO.SOUZA@GMAIL.COM',
'BSOUZA',
'ADM',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('ERICK ARAUJO',
'ERICK.ARAUJO@GMAIL.COM',
'ARAUJOO',
'ADM',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('MATEUS GON�ALVES',
'MATEUS.TETEU@GMAIL.COM',
'TETEU',
'ADM',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('JOAO RODIGHERO ',
'JOAO.RODI@GMAIL.COM',
'JRODIGHERO',
'ADM',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('GABRIEL MARTINS',
'GABRIEEL.MARTINS@GMAIL.COM',
'GABRIELMTZ',
'USER',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('MATHEUS HENRIQUE',
'MATHEUS.HENRIQUE@GMAIL.COM',
'BOLANO',
'USER',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('RODRIGO SILVA',
'RODRIGO.SILVA@GMAIL.COM',
'RORO',
'USER',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('ANNA JULLIA',
'ANNA.JU@GMAIL.COM',
'NAJU',
'USER',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('DALISSON MAYCON',
'DALI.LOPES@GMAIL.COM',
'DALIMM',
'USER',
NULL,
'ATIVO')
GO 

INSERT INTO USUARIO
VALUES('VITOR REBOREDA',
'VVREBOREDA@GMAIL.COM',
'REBOBECCA',
'USER',
NULL,
'ATIVO')
GO

INSERT INTO USUARIO
VALUES('ISABELLE BECCA',
'ISA.BECCA@GMAIL.COM',
'ISA28',
'USER',
NULL,
'ATIVO')
GO

SELECT * FROM USUARIO
---WHERE EMAIL = 'YASMIN.BECCA01@GMAIL.COM'

CREATE TABLE PRODUTO(
ID_PROD INT PRIMARY KEY IDENTITY NOT NULL,
NOME_PROD VARCHAR (100) NOT NULL,
foto		 VARBINARY(MAX) NULL,
CATEGORIA_ID VARCHAR (100) NOT NULL)
GO

INSERT INTO PRODUTO
VALUES( 'Iphone XR Apple 6,1 iOS',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Iphone 11 Apple 6,1 iOS',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Iphone 12 Apple 6,1 iOS',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Iphone 13 Apple 6,1 iOS',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy A54 6,4 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy S23 6,8 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy S21 6,4 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy A34 6,6 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Motorola-moto G84 6,5 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Motorola Edge 30 Neo 6,3 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Motorola-moto G53 6,5 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'Motorola-moto G73 6,5 ',
NULL,
'Smartphone')
GO

INSERT INTO PRODUTO
VALUES( 'All in One LG Celeron',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Gamer Completo RGB Intel Core I5',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Completo Intel Core I5',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Dell Inspiron 24 All in One 13a',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Completo Intel Core I7',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Gamer Completo Intel Core i5 6 Gera��o',
NULL,
'Computador')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy Tab S6 Lite',
NULL,
'Tablet')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy Tab A7 Lite',
NULL,
'Tablet')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Galaxy Tab A8',
NULL,
'Tablet')
GO

INSERT INTO PRODUTO
VALUES( 'Apple IPAD',
NULL,
'Tablet')
GO

INSERT INTO PRODUTO
VALUES( 'Acer Aspire 5',
NULL,
'Notebook')
GO

INSERT INTO PRODUTO
VALUES( 'Positivo Duo 2 em 1 Intel',
NULL,
'Notebook')
GO

INSERT INTO PRODUTO
VALUES( 'Samsung Book Celeron-6305',
NULL,
'Notebook')
GO

INSERT INTO PRODUTO
VALUES( 'Alienware M18 i9',
NULL,
'Notebook')
GO

INSERT INTO PRODUTO
VALUES( 'Asus Vivobook 15',
NULL,
'Notebook')
GO

SELECT * FROM Produto



CREATE TABLE CATEGORIA(
ID INT PRIMARY KEY IDENTITY NOT NULL,
NOME VARCHAR (100) NOT NULL)
GO

INSERT INTO CATEGORIA
VALUES ( 'Smartphone')
GO

INSERT INTO Categoria 
VALUES ( 'Computador')
GO

INSERT INTO Categoria 
VALUES ( 'Tablet')
GO

INSERT INTO Categoria 
VALUES ( 'Notebook')
GO


SELECT * FROM Categoria

CREATE TABLE COMENTARIOS(
ID INT PRIMARY KEY IDENTITY NOT NULL,
NOME_PROD VARCHAR (100) NOT NULL,
NOME_USUARIO VARCHAR (100) NOT NULL,
AVALIA�AO VARCHAR (5) NOT NULL,
DESCRI�AO VARCHAR (250))
GO

INSERT INTO Comentarios
VALUES ( 'Iphone XR Apple 6,1 iOS',
'YASMIN BECCA',
'5',
'� um smartphone iOS de bom n�vel, �timo para fotos, que pode satisfazer at� o mais exigente dos usu�rios')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone XR Apple 6,1 iOS',
'ISABELLE BECCA',
'3',
'Pre�o acima de concorrentes')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 11 Apple 6,1 iOS',
'JULIO CESAR',
'4',
'� um �timo custo-benef�cio')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 11 Apple 6,1 iOS',
'BRENO GUSTAVO',
'3',
'A c�mera possui nitidez nas imagens e nas cores, alta resolu��o e boa estabiliza��o')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 12 Apple 6,1 iOS',
'ERICK ARAUJO',
'4',
'C�mera potente, design refinado e nost�lgico, al�m de �timo desempenho da bateria com apps, v�deos e m�sica')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 12 Apple 6,1 iOS',
'JOAO RODIGHERO',
'3',
'� um celular com �timo desempenho para uso di�rio e jogos pesados')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 13 Apple 6,1 iOS',
'GABRIEL MARTINS',
'3',
'Tela sem frequ�ncia alta, mas de �tima qualidade')
Go

INSERT INTO Comentarios
VALUES ( 'Iphone 13 Apple 6,1 iOS',
'MATHEUS HENRIQUE',
'3',
'� superior ao iPhone 12')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy A54 6,4',
'RODRIGO SILVA',
'4',
'Melhor visibilidade ao ar livre')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy A54 6,4',
'ANNA JULLIA',
'4',
'Pratico e eficiente')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy S23 6,8',
'DALISSON MAYCON',
'4',
'Caracter�sticas inovadoras que o tornam uma excelente op��o para qualquer tipo de utiliza��o')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy S23 6,8',
'VITOR REBOREDA',
'4',
'Ficou mais agrad�vel de acessar, j� que os dedos ficam posicionados naturalmente.')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy S21 6,4',
'ISABELLE BECCA',
'5',
'� um baita aparelho e conhe�o pessoas muito felizes com ele')

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy S21 6,4',
'JULIO CESAR',
'4',
'O desempenho � agrad�vel, a tela e as c�meras s�o de qualidade, o carregamento super-r�pido de 25 W � �timo')

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy A34 6,6',
'YASMIN BECCA',
'4',
'Carrega super r�pido, � �timo')

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy A34 6,6',
'VITOR REBOREDA',
'4',
'N�o deixa a desejar para um celular nessa faixa de pre�o')

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G84 6,5',
'BRENO GUSTAVO',
'3',
'Smartphone intermedi�rio possui design moderno e excelente tela.')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G84 6,5',
'DALISSON MAYCON',
'3',
'Ultrafino e leve')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola Edge 30 Neo 6,3',
'ERICK ARAUJO',
'4',
'C�meras de boa qualidade e estabiliza��o �ptica')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola Edge 30 Neo 6,3',
'ANNA JULLIA',
'3',
'Ultrafino e leve')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G53 6,5',
'JOAO RODIGHERO',
'3',
'Falta um refino por parte da Motorola para ser ainda melhor')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G53 6,5',
'RODRIGO SILVA',
'4',
'O Moto G53 n�o faz feio ao fotografar � noite e n�o apresenta imagens muito granuladas como ainda � comum em celulares do segmento')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G73 6,5',
'GABRIEL MARTINS',
'4',
'�timo desempenho em ambientes com muita ou pouca luz,')
Go

INSERT INTO Comentarios
VALUES ( 'Motorola-moto G73 6,5',
'MATHEUS HENRIQUE',
'2',
'N�o mudou muito em rela��o ao que a empresa utilizou nos antigos')
Go

INSERT INTO Comentarios
VALUES ( 'All in One LG Celeron',
'MATHEUS HENRIQUE',
'5',
'Ele simplesmente executa toda e qualquer tarefa ')
Go

INSERT INTO Comentarios
VALUES ( 'All in One LG Celeron',
'ANNA JULLIA',
'2',
'Processador e muito fraco j� para tarefas comuns,')
Go

INSERT INTO Comentarios
VALUES ( 'Gamer Completo RGB Intel Core I5',
'ISABELLE BECCA',
'5',
'O computador � maravilhoso! ')
Go

INSERT INTO Comentarios
VALUES ( 'Gamer Completo RGB Intel Core I5',
'BRENO GUSTAVO',
'4',
'Muito r�pido para realizar as tarefas')
Go

INSERT INTO Comentarios
VALUES ( 'Completo Intel Core I5',
'JULIO CESAR',
'3',
'Bom e vale o valor que paguei')
Go

INSERT INTO Comentarios
VALUES ( 'Completo Intel Core I5',
'RODRIGO SILVA',
'2',
'N�o recomendo, o meu deu pau na tela em um m�s de uso')
Go

INSERT INTO Comentarios
VALUES ( 'Dell Inspiron 24 All in One 13a',
'YASMIN BECCA',
'4',
'Muito bom e r�pido, excelente desempenho')
Go

INSERT INTO Comentarios
VALUES ( 'Dell Inspiron 24 All in One 13a',
'GABRIEL MARTINS',
'4',
'� bonito. Est� atendendo �s minhas expectativas.')
Go

INSERT INTO Comentarios
VALUES ( 'Completo Intel Core I7',
'DALISSON MAYCON',
'4',
'�timos processadores')
Go

INSERT INTO Comentarios
VALUES ( 'Completo Intel Core I7',
'JOAO RODIGHERO',
'3',
'Veio tudo certo, por�m o pre�o que cobram pelas pe�as ultrapassadas n�o faz o cliente ter interesse pelo produto')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab S6 Lite',
'RODRIGO SILVA',
'4',
'Boa qualidade de �udio, tela grande com boa resolu��o.')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab S6 Lite',
'ANNA JULLIA',
'4',
'� um excelente produto, mas � importante ressaltar que outros tablets j� foram lan�ados e que superam')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab A7 Lite',
'DALISSON MAYCON',
'4',
'� um tablet compacto com bom desempenho')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab A7 Lite',
'ISABELLE BECCA',
'4',
'Parceiro excepcional para trabalhar e estudar.')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab A8',
'VITOR REBOREDA',
'4',
'Ele tem �timas caracter�sticas, como o fato de ter bastante mem�ria RAM')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Galaxy Tab A8',
'GABRIEL MARTINS',
'4',
'Qualidade de som impressionante, bateria com longa dura��o')
Go

INSERT INTO Comentarios
VALUES ( 'Apple IPAD',
'MATHEUS HENRIQUE',
'5',
'Comprei para estudos e � f�cil de carregar e cont�m todos os recursos que um estudante precisa')
Go

INSERT INTO Comentarios
VALUES ( 'Apple IPAD',
'ISABELLE BECCA',
'3',
'Modelo b�sico')
Go

INSERT INTO Comentarios
VALUES ( 'Acer Aspire 5',
'DALISSON MAYCON',
'4',
'� simples, funcional e tem um bom custo-benef�cio')
Go

INSERT INTO Comentarios
VALUES ( 'Acer Aspire 5',
'ANNA JULLIA',
'5',
'Processador excelente, uso mtas coisas ao mesmo tempo e n�o trava')
Go

INSERT INTO Comentarios
VALUES ( 'Positivo Duo 2 em 1 Intel',
'GABRIEL MARTINS',
'5',
'F�cil de carregar, vers�til e muito pr�tico')
Go

INSERT INTO Comentarios
VALUES ( ' Positivo Duo 2 em 1 Intel',
'VITOR REBOREDA',
'4',
'O notebook � muito bonito, compacto e tem suprido minhas necessidades. A bateria dura o necess�rio, a tela tem uma imagem muito boa')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Book Celeron-6305',
'RODRIGO SILVA',
'4',
'Silencioso e com boa autonomia')
Go

INSERT INTO Comentarios
VALUES ( 'Samsung Book Celeron-6305',
'ISABELLE BECCA',
'3',
'� um �timo produto, pena que a bateria � algo que deixa a desejar')
Go

INSERT INTO Comentarios
VALUES ( 'Alienware M18 i9',
'RODRIGO SILVA',
'4',
'Impressione seus competidores com a tela de 18 polegadas')
Go

INSERT INTO Comentarios
VALUES ( 'Alienware M18 i9',
'MATHEUS HENRIQUE',
'3',
'Potente e elegante')
Go

INSERT INTO Comentarios
VALUES ( 'Asus Vivobook 15',
'VITOR REBOREDA',
'4',
'� um notebook premium ideal para quem realiza tarefas de alto desempenho no PC e precisa trabalhar de qualquer lugar.')
Go

INSERT INTO Comentarios
VALUES ( 'Asus Vivobook 15',
'ERICK ARAUJO',
'5',
'Aparelho de entrada com visual bonito e excelente custo-benef�cio')
Go

SELECT * FROM Comentarios




