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

Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('AÇÃO', 16, 1, 'Contém sangue, muito sangue e porrada');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('TERROR', 16, 1, 'Medo, muito medo');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('AVENTURA', 12, 1, 'Emoção do início ao fim');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('ANIMAÇÃO', 0, 1, 'Diversão para toda família');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('NOVOS FILMES', 10, 1, 'O que há de novo');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('BIOGRAFIA', 0, 0, 'Conta a história de alguém');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('COMÉDIA', 10, 0, 'Risos e mais risos');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('CRIME', 16, 0, 'Mataram alguém');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('DOCUMENTÁRIO', 0, 0, 'Fatos e mais fatos');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('DRAMA', 12, 0, 'Muita gente triste, com crise existencial');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('FAMÍLIA', 0, 0, 'Para toda família');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('FANTASIA', 10, 0, 'Mundo imaginário');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('GAME-SHOW', 0, 0, 'Game na TV');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('HISTÓRIA', 0, 0, 'Fatos históricos');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('KIDS', 0, 0, 'Fimes para crianças');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('MÚSICAS', 0, 0, 'Músicas e mais músicas');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('MUSICAL', 0, 0, 'Pessoal feliz cantando no filme');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('MISTÉRIO', 12, 0, 'Filmes misteriosos');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('NOTÍCIAS', 0, 0, 'O que acontece no mundo');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('ROMANCE', 12, 0, 'Pessoas que se amam');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('SCI-FI', 16, 0, 'Ficção científica');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('CURTAS', 10, 0, 'Filmes pequenos');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('ESPORTE', 0, 0, 'Esportistas correndo');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('SUSPENSE', 16, 0, 'Tensão no meio do filme e um susto de vez em quando');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('GUERRA', 18, 0, 'Gente se matando sem motivo');
Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('VELHO-OESTE', 18, 0, 'Brigas de bar e tiros de revolver');

Insert into Categoria (Nome, FaixaEtaria, ApareceNoMenu, Descricao) values ('TESTE', 18, 0, 'Teste');

Insert into Filme(Nome, AnoLancamento, Imagem, Visualizacoes, Likes, TempoDuracao, CodigoCategoria)
values('Se meu fusca falasse', 1968, '', 0, 0, 108, 7);

Insert into Filme(Nome, AnoLancamento, Imagem, Visualizacoes, Likes, TempoDuracao, CodigoCategoria)
values ('O poderoso chefão', 1972, '', 0, 0, 175, 8);

Insert into Filme(Nome, AnoLancamento, Imagem, Visualizacoes, Likes, TempoDuracao, CodigoCategoria)
values ('Frozen - Uma aventura congelante', 2013, '', 0, 0, 102, 4);