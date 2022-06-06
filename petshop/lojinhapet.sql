/**
	Lojinha pets
    @autor Gabriela
     @version 1.2
*/

create database lojinhapetshop;
use lojinhapetshop;

create table produtos(
	codigo int primary key auto_increment,
    barcode varchar(255),
    produto varchar(255) not null,
    descricao varchar(255) not null,
    fabricante varchar(255) not null,
    datacard timestamp default current_timestamp,
    dataval date not null,
    estoque int not null,
    estoquemin int not null,
    unidade varchar(255) not null,
    localizacao varchar(255),
   custo decimal(10,2),
   lucro decimal(10,2),
   venda decimal(10,2),
   valor decimal(10,2)
    );
    describe produtos;
    
    
  insert into produtos(barcode,produto,descricao,fabricante,dataval,
  estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
  value('1234567890','Aquario ecquarela','Aquario ecquarela','Acquarela','20240523',20,5,'UN','Prateleira 1',0.80,100,30.00);
  
  insert into produtos (barcode,produto,descricao,fabricante,dataval,
  estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
  value ('1234567890','ração','Ração de Carne','ração','20240523',20,5,'UN','Prateleira 2',0.80,80,17.50);
    insert into produtos (barcode,produto,descricao,fabricante,dataval,
  estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
  value ('1234567890','Casinha','Casinha pet','casa tamanho medio','20240523',20,5,'UN','Prateleira 5',0.80,80,50.00);
    insert into produtos (barcode,produto,descricao,fabricante,dataval,
  estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
  value ('1234567890','Coleira','coleira','coleira','20240523',20,5,'UN','Prateleira  3',0.80,80,10.50);
    insert into produtos (barcode,produto,descricao,fabricante,dataval,
  estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
  value ('1234567890','Pote de Aluminio','Pote de Aluminio','Pote','20240523',20,5,'UN','Prateleira 4',0.80,100,25.00);
    insert into produtos (barcode,produto,descricao,fabricante,dataval,
  estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
  value ('1234567890','Escova/pente','Escova/pente','Escova','20240523',20,5,'UN','Prateleira 6',0.80,80,10.50);
    insert into produtos (barcode,produto,descricao,fabricante,dataval,
  estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
  value ('1234567890','Comedouro','comedouro','Comedouro','20240523',20,5,'UN','Prateleira 8',0.80,80,40.00);
  insert into produtos (barcode,produto,descricao,fabricante,dataval,
  estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
  value('1234567890','Caminha','Caminha','Caminha','20240523',20,5,'UN','Prateleira 7',0.80,80,2.20);
  
  drop table produtos;
  
    select * from produtos;
 
     
create table usuarios(
	idusu int primary key auto_increment,
    usuario varchar(255) not null,
    login varchar(255) not null unique,
    senha varchar(255) not null,
    perfil varchar(255)  not null
    );
    
    describe usuarios;

insert into usuarios(usuario,login,senha,perfil)
value('Administrador','admin',md5('admin'),'admin');
    
insert into usuarios(usuario,login,senha,perfil)
value('Gabriela','gabriela',md5('123456'),'user');
    -- Acessando o sistema pela tela de login
-- and (função lógica onde todas as condições devem ser verdadeiras)
select * from usuarios where login='admin' and senha=md5('admin');

create table fornecedores (
	idfor int primary key auto_increment,
    cnpj varchar(255) not null unique,
    ie varchar(255) unique,
    im varchar(255) unique,
    razao varchar(255) not null,
    fantasia varchar(255) not null,
    site varchar(255),
    fone varchar(255) not null,
    contato varchar(255),     
	email varchar(255),
    cep varchar(255) not null,
    endereco varchar(255) not null,
    numero varchar(255) not null,
    complemento varchar(255),
    bairro varchar(255) not null,
    cidade varchar(255) not null,
    uf char(2) not null,
    obs varchar(255)
);
insert into fornecedores
(cnpj,razao,fantasia,fone,cep,endereco,numero,bairro,cidade,uf)
values ('17.127.927/0001-99','Pet shop','Petz',
'9999-1234','03307-000',' Av. Professor Luiz Ignácio Anhaia Mello','5657','Vila Graciosa','São Paulo','SP');


select * from fornecedores;

    