create database dbautotec;
-- a linha abaixo escolhe o banco de dados a ser utilizado
use dbautotec;
create table tbusuarios(
id int primary key,
usuario varchar(50) not null,
telefone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null 
);
-- campo abaixo descreve tabela
describe tbusuarios;
insert into tbusuarios(id, usuario, telefone, login, senha)
values(1,'admin', '9999999','admin','admin')
select * from tbusuarios;

update tbusuarios set telefone ='88888888' where id=1;

CREATE TABLE tbclientes (
    id int PRIMARY KEY auto_increment,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    endereco TEXT,
    cpf varchar(11)
);


insert into tbclientes(nome, telefone, endereco, cpf)
values('vinicius', '9999999','rua doutor elcio cezar 150','4740352813');
select * from tbclientes;

CREATE TABLE tbos (
    os INT PRIMARY KEY AUTO_INCREMENT, 
    data_os TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    carro VARCHAR(50) NOT NULL, 
    placa VARCHAR(7) NOT NULL,
    tecnico VARCHAR(50), 
    valor DECIMAL(10,2),
    servico TEXT,
    idclie INT,
    FOREIGN KEY (idclie) REFERENCES tbclientes(id)
);

insert into tbos(carro, placa, tecnico, valor, servico, idclie)
values("Chevrolet Celta 1.0/2008", "DAC2005", "Vinicius", 78.54, "Feito a revisao do motor asodosadosaodsaodasodoasdosadosaodsoadosadosa", 1);
select * from tbos;

select
O.os, carro, valor, servico,
C.nome,telefone
from tbos as O
inner join tbclientes as C
on(O.idclie = C.id);