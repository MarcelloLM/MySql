CREATE DATABASE IF NOT EXISTS Restaurante; 

USE Restaurante; 

CREATE TABLE Prato(
	IdPrato int,
    preco double,
    nome varchar(100),
    descricao text,
    categoria varchar(100),
    PRIMARY KEY(IdPrato)
); 

CREATE TABLE Pedido(
	IdPedido int,
    Data_pedido date,
    status_pedido varchar(20), 
    PRIMARY KEY(IdPedido),
    IdCliente int,
    constraint fped foreign key (IdCliente) references Cliente(IdCliente)
);
CREATE TABLE prato_pedido(
	idPrato int,
    idPedido int,
    constraint fkpratoPedido foreign key(idPrato) references Prato(idPrato),
    constraint fkPedido foreign key(idPedido) references Prato(idPedido)
);

CREATE TABLE Cliente(
	IdCliente int,
    telefone varchar(20),
    nome varchar(100), 
    PRIMARY KEY(IdCliente)
);

CREATE TABLE ingrediente(
	IdIngrediente int,
    estoque int,
    nome varchar(100), 
    PRIMARY KEY(IdIngrediente)
);

CREATE TABLE prato_ingrediente(
	IdPrato int,
    IdIngrediente int,
    constraint fkprato foreign key(idPrato) references prato(IdPrato),
    constraint fkid foreign key(IdIngrediente) references prato(IdIngrediente)
);

