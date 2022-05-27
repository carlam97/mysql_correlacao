create database loja;
use loja;

create table fornecedores(
codigo int not null auto_increment primary key,
razao varchar(50) not null,
cidade varchar(30),
telefone varchar(20)
);

select * from fornecedores;
select * from produtos;

insert into fornecedores (razao, cidade, telefone)
values ('Papelaria Compasso', 'Marília', '3333-1234'),
	   ('Prosun Informática', 'Pompeia', '3659-5826'),
       ('Supermercado Tauste', 'Ourinhos', '3434-7894');
       
create table produtos(
codigo int not null auto_increment primary key,
nome varchar(30) not null,
preco decimal(7,2),
codigo_fornecedor int
);

insert into produtos (nome, preco, codigo_fornecedor)
values ('Caneta bic azul', 1.5, 1),
	   ('Tela de PC', 330, 2),
       ('Melancia', 11.9, 3),
       ('Leite', 2.59, 3),
	   ('Bola de futebol', 45.5, null);
       
select * from produtos
inner join fornecedores 
on produtos.codigo_fornecedor = fornecedores.codigo;

select nome, codigo_fornecedor, razao from produtos
inner join fornecedores 
on produtos.codigo_fornecedor = fornecedores.codigo;

/* o left permite que todos os dados da tabela esquerda sejam mostrados mesmo que não haja relação com a tabela da direita */
select * from produtos
left join fornecedores 
on produtos.codigo_fornecedor = fornecedores.codigo;