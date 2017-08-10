Create database MoviesMais;

Use MoviesMais;

Create table Categoria (
	Codigo int not null primary key,
	Nome varchar(100) not null,
	FaixaEtaria int not null,
	ApareceNoMenu bit not null,
	Descricao varchar(300)
);

Create table Filme (
	Codigo int not null primary key,
	Nome varchar(64) not null,
    AnoLancamento int not null,
    Imagem varchar(256) not null,
    Visualizacoes int not null,
    Likes int not null,
    TempoDuracao int not null,
    CodigoCategoria int not null,
	constraint filme_categoria_fk foreign key (CodigoCategoria) references Categoria(Codigo)
);

Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (1, 'AÇÃO', 16, 1, 'Contém sangue, muito sangue e porrada');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (2, 'TERROR', 16, 1, 'Medo, muito medo');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (3, 'AVENTURA', 12, 1, 'Emoção do início ao fim');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (4, 'ANIMAÇÃO', 0, 1, 'Diversão para toda família');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (5, 'NOVOS FILMES', 10, 1, 'O que há de novo');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (6, 'BIOGRAFIA', 0, 0, 'Conta a história de alguém');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (7, 'COMÉDIA', 10, 0, 'Risos e mais risos');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (8, 'CRIME', 16, 0, 'Mataram alguém');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (9, 'DOCUMENTÁRIO', 0, 0, 'Fatos e mais fatos');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (10, 'DRAMA', 12, 0, 'Muita gente triste, com crise existencial');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (11, 'FAMÍLIA', 0, 0, 'Para toda família');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (12, 'FANTASIA', 10, 0, 'Mundo imaginário');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (13, 'GAME-SHOW', 0, 0, 'Game na TV');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (14, 'HISTÓRIA', 0, 0, 'Fatos históricos');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (15, 'KIDS', 0, 0, 'Fimes para crianças');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (16, 'MÚSICAS', 0, 0, 'Músicas e mais músicas');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (17, 'MUSICAL', 0, 0, 'Pessoal feliz cantando no filme');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (18, 'MISTÉRIO', 12, 0, 'Filmes misteriosos');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (19, 'NOTÍCIAS', 0, 0, 'O que acontece no mundo');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (20, 'ROMANCE', 12, 0, 'Pessoas que se amam');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (21, 'SCI-FI', 16, 0, 'Ficção científica');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (22, 'CURTAS', 10, 0, 'Filmes pequenos');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (23, 'ESPORTE', 0, 0, 'Esportistas correndo');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (24, 'SUSPENSE', 16, 0, 'Tensão no meio do filme e um susto de vez em quando');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (25, 'GUERRA', 18, 0, 'Gente se matando sem motivo');
Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (26, 'VELHO-OESTE', 18, 0, 'Brigas de bar e tiros de revolver');

Insert into Categoria (Codigo, Nome, FaixaEtaria, ApareceNoMenu, Descricao) values (27, 'TESTE', 18, 0, 'Teste');

Insert into Filme(Codigo, Nome, AnoLancamento, Imagem, Visualizacoes, Likes, TempoDuracao, CodigoCategoria)
values(1, 'Se meu fusca falasse', 1968, '', 0, 0, 108, 7);

Insert into Filme(Codigo, Nome, AnoLancamento, Imagem, Visualizacoes, Likes, TempoDuracao, CodigoCategoria)
values (2, 'O poderoso chefão', 1972, '', 0, 0, 175, 8);

Insert into Filme(Codigo, Nome, AnoLancamento, Imagem, Visualizacoes, Likes, TempoDuracao, CodigoCategoria)
values (3, 'Frozen - Uma aventura congelante', 2013, '', 0, 0, 102, 4);