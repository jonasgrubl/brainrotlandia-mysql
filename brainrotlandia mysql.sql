create database brainrotlandia;
use brainrotlandia;

create table brainrots (
id_brainrot int PRIMARY KEY,
nome varchar(50) not null,
elemento varchar (30)
);

create table tipo (
id_brainrot int PRIMARY KEY,
elemento varchar(30),
lugar varchar(30),
dieta varchar(30),
dano int,
FOREIGN KEY (id_brainrot) REFERENCES brainrots(id_brainrot)
);

create table status (
id_brainrot int,
vida int,
dano int, 
velocidade int,
aura int,
FOREIGN KEY (id_brainrot) REFERENCES brainrots(id_brainrot)
);

insert into brainrots (id_brainrot, nome, elemento) values 
(1, 'tung tung sahur', 'terrestre'),
(2, 'tralalero tralala', 'aquatico'),
(3, 'ballerina capuccina', 'terrestre'),
(4, 'capuccino assasino', 'terrestre'),
(5, 'brr brr patapim', 'terrestre'),
(6, 'brr esteh patipum', 'terrestre'),
(7, 'boneca ambalabu', 'terrestre'),
(8, 'gangster footera', 'terrestre'),
(9, 'pakramatmamat', 'terrestre'),
(10, 'trulimero truliccina', 'aquatico');

insert into tipo (id_brainrot, elemento, lugar, dieta, dano) values
(1, 'terrestre', 'casa', 'onivoro', 90),
(2, 'aquatico', 'praia', 'carnivoro', 89),
(3, 'terrestre', 'bale', 'herbiviro', 84 ),
(4, 'terrestre', 'templo', 'herbivoro', 87),
(5, 'terrestre', 'floresta', 'herbivoro', 91),
(6, 'terrestre', 'deserto', 'herbivoro', 91),
(7, 'terrestre', 'rua', 'herbivoro', 82),
(8, 'terrestre', 'deserto', 'herbivoro', 83),
(9, 'terrestre', 'escola','herbivoro', 89),
(10, 'aquatico', 'praia', 'carvinoro', 88);

insert into status (id_brainrot, vida, dano, velocidade, aura) values
(1, '210', 90, 91, 99),
(2, '200', 89, 89, 98),
(3, '150', 84, 85, 90),
(4, '150', 87, 83, 90),
(5, '230', 91, 67, 99),
(6, '240', 91, 61, 99),
(7, '140', 82, 95, 87),
(8, '140', 83, 92, 91),
(9, '200', 89, 86, 92),
(10, '160', 88, 90, 90);

-- exercicio 1 

select brainrots.nome, tipo.elemento
from brainrots
inner join tipo
on tipo.id_brainrot = brainrots.id_brainrot

-- exercicio 2

select brainrots.nome, tipo.elemento, tipo.lugar, tipo.dieta, tipo.dano