-- Borrar la base de datos llamada projectISS solamente si ya existe --
drop database if exists projectISS;
-- Crear la base de datos projectISS --
create database projectISS;
-- usar la base de datos nombrada projectISS --
use projectISS;

-- Creacion de tablas --

-- Crear Tabla Rol--
create table Rol(
-- Especificar Atributos de la Tabla Rol--
Idrol bigint primary key auto_increment not null,
NameRol varchar(20) not null unique
);
-- Inserciones Estandar de la base de datos--
insert into Rol values("","Administrador");
insert into Rol values("","InstructorGuia");
insert into Rol values("","Lider");
insert into Rol values("","Coordinador");
insert into Rol values("","Instructor");

-- Crear Tabla Rol --
create table State(
-- Especificar Atributos de la Tabla Rol--
IdState bigint primary key auto_increment not null ,
NameEstate varchar(10) not null unique
);
-- Inserciones Predeterminadas de esta tabnla en la base de datos --
insert into State values("","Activo");
insert into State values("","Inactivo");


-- Crear Tabla Barrio --
Create table Neighborhood(

-- Especificar Atributos de la Tabla Barrio --
IdNeighborhood bigint primary key not null auto_increment,
NameNeighborhood varchar(80) not null
);

-- Inserciones Predeterminadas de la tabla barrio en la Base de datos--
Insert into Neighborhood values("","Canaima");
Insert into Neighborhood values("","La floresta de La Sabana");
Insert into Neighborhood values("","Torca");
Insert into Neighborhood values("","Alto de serrezuela");
Insert into Neighborhood values("","Balciones de vista hermonsa");
Insert into Neighborhood values("","Balmoral Norte");
Insert into Neighborhood values("","Buenavista");
Insert into Neighborhood values("","Chaparral");
Insert into Neighborhood values("","El codito");
Insert into Neighborhood values("","El refugio de san antonio");
Insert into Neighborhood values("","El verbenal");
Insert into Neighborhood values("","Horizontes");
Insert into Neighborhood values("","La estrellita");
Insert into Neighborhood values("","La frontera");
Insert into Neighborhood values("","La llanurita");
Insert into Neighborhood values("","Los consuelos");
Insert into Neighborhood values("","Maranta");
Insert into Neighborhood values("","Maturin");
Insert into Neighborhood values("","Medellin");
Insert into Neighborhood values("","Mirador del nrte");
Insert into Neighborhood values("","San antonio Norte");
Insert into Neighborhood values("","Santa Felisia");
Insert into Neighborhood values("","Santandersito");
Insert into Neighborhood values("","Tibata");
Insert into Neighborhood values("","Viña del mar");
Insert into Neighborhood values("","Bosque de san antonio");
Insert into Neighborhood values("","Conjunto camino del palmar");
Insert into Neighborhood values("","El pite");
Insert into Neighborhood values("","El redil");
Insert into Neighborhood values("","La gita");
Insert into Neighborhood values("","La granja norte");
Insert into Neighborhood values("","La uribe");
Insert into Neighborhood values("","Los naranjos");
Insert into Neighborhood values("","San juan bosco");
Insert into Neighborhood values("","Urbanizacion los laurales");
Insert into Neighborhood values("","Ainsuca");
Insert into Neighborhood values("","Altablanca");
Insert into Neighborhood values("","Barrancas");
Insert into Neighborhood values("","California");
Insert into Neighborhood values("","Cerro norte");
Insert into Neighborhood values("","Danubio");
Insert into Neighborhood values("","Don bosco");
Insert into Neighborhood values("","La perla oriental");
Insert into Neighborhood values("","Las areneras");
Insert into Neighborhood values("","Milan(Barrancas)");
Insert into Neighborhood values("","San cristobal norte");
Insert into Neighborhood values("","Santa cecilia norte parta alta");
Insert into Neighborhood values("","Santa cecilia parte baja");
Insert into Neighborhood values("","Santa teresa");
Insert into Neighborhood values("","Sorotama");
Insert into Neighborhood values("","Torcorama");
Insert into Neighborhood values("","Villa nydia");
Insert into Neighborhood values("","Villa Olivia");
Insert into Neighborhood values("","El Toberin");
Insert into Neighborhood values("","Babilonia");
Insert into Neighborhood values("","Dardanelos");
Insert into Neighborhood values("","Estrella del norte");
Insert into Neighborhood values("","Guanoa");
Insert into Neighborhood values("","Jardin norte");
Insert into Neighborhood values("","La liberia");
Insert into Neighborhood values("","La pradera norte");
Insert into Neighborhood values("","Las orquideas");
Insert into Neighborhood values("","Pantanito");
Insert into Neighborhood values("","Santa monica");
Insert into Neighborhood values("","Villa magdala");
Insert into Neighborhood values("","Villa de aranjuez");
Insert into Neighborhood values("","Villas del mediterraneo");
Insert into Neighborhood values("","Zaragoza");
Insert into Neighborhood values("","Acacias");
Insert into Neighborhood values("","Antigua");
Insert into Neighborhood values("","Belmira");
Insert into Neighborhood values("","Bosque del pin");
Insert into Neighborhood values("","Caoboz Salas");
Insert into Neighborhood values("","Capri");
Insert into Neighborhood values("","Cedritos");
Insert into Neighborhood values("","Cedro boliviar");
Insert into Neighborhood values("","Cedro golf");
Insert into Neighborhood values("","Cedro madeir");
Insert into Neighborhood values("","Cedro narvae");
Insert into Neighborhood values("","Cedro salaza");
Insert into Neighborhood values("","El Contador");
Insert into Neighborhood values("","El Rincon deL");
Insert into Neighborhood values("","La Sonora");
Insert into Neighborhood values("","Las margaritas");
Insert into Neighborhood values("","Lisboa de Usaquen");
Insert into Neighborhood values("","Los cedros");
Insert into Neighborhood values("","Los cedros o");
Insert into Neighborhood values("","Montearroyo");
Insert into Neighborhood values("","NuevaAutopista");

-- Crear tabla Tipo de Programa de Formacion-- 
create table TypeTrainingProgram(
 -- Especificar Atributos de la Tabla Programa de Formacion--
IdTypeTrainingProgram bigint primary key auto_increment not null,
NameTypeTrainingProgram varchar(60) not null unique
);
-- Inserciones Predeterminadas de la Tabla Tipo de Porgrama de Formacion en la Base de datos--
insert into TypeTrainingProgram values("","Tecnologo ");
insert into TypeTrainingProgram values("","Tecnico ");

-- Crear Tabla Programa de Formacion--
create table TrainingProgram(
-- Especificar Atributos de la Tabla Programa de Formacion --
IdTrainingProgram bigint primary key auto_increment not null,
NameTrainingProgram varchar(70) not null unique,
fkTypeTrainingProgram bigint not null,
-- Nombrando Constraint fk_TypeTrainingprogram,Foreign key en el Atributo Tipo Programa de Formacion con la tabla Tipo Programa de Formacion ,campo de la tabla Tipo Programa de Formacion--
Constraint fk_TypeTrainingProgram Foreign key (fkTypeTrainingProgram) references TypeTrainingProgram(IdTypeTrainingProgram)
);

-- Inserciones Predeterminadas de la tabla Programa de Formacion--
insert into TrainingProgram values("","ADSI",1);
insert into TrainingProgram values("","PSW",2);
insert into TrainingProgram values("","MEC",2);
insert into TrainingProgram values("","MECDCE",1);
insert into TrainingProgram values("","EA",2);
insert into TrainingProgram values("","DIM",2);

-- Crear Tabla Tipo Espacio de Formacion--
Create table TypeSpaceFormation(
-- Especificar Atributos de la Tabla Tipo Espacio de formacion--
IdTypeSpaceFormation bigint primary key auto_increment not null,
NameSpaceFormation varchar(55) not null unique
);

-- Inserciones Predeterminadas de ña tabla Tipo Espacio de Formacion--
insert into TypeSpaceFormation values("","Privado");
insert into TypeSpaceFormation values("","Publico");
insert into TypeSpaceFormation values("","Centro");

-- Crear Tabla Localidad--
Create table Locality(
-- Especificar Atributos de la tabla localidad--
IdLocality bigint primary key not null auto_increment,
NameLocality varchar(55) unique not null
);
-- Insercion es Predeterminadas de la Tabla Localidad--
insert Into Locality values("","Usaquen");
insert Into Locality values("","Chapinero");
insert Into Locality values("","SantaFe");
insert Into Locality values("","San Cristobal");
insert Into Locality values("","Usme");
insert Into Locality values("","Tunjuelito");
insert Into Locality values("","Bosa");
insert Into Locality values("","Kenedy");
insert Into Locality values("","Fontibon");
insert Into Locality values("","Engativa");
insert Into Locality values("","Suba");
insert Into Locality values("","Barrios Unidos");
insert Into Locality values("","Teusaquillo");
insert Into Locality values("","Los Martires");
insert Into Locality values("","Antonio Nariño");
insert Into Locality values("","Puente Aranda");
insert Into Locality values("","La Candelaria");
insert Into Locality values("","Rafael Uribe Uribe");
insert Into Locality values("","Ciudad Bolivar");
insert Into Locality values("","Sumapaz");

-- Crear tabla Area Sena --
Create table AreaSena(
-- Atributos de la Tabla  Area sena--
IdAreaSena bigint primary key auto_increment not null,
NameArea varchar(75) unique not null
);

-- Inserciones Predeterminadas de la tabla Area sena-- 
insert into AreaSena values("","TeleInformatica");
insert into AreaSena values("","Mercadeo");
insert into AreaSena values("","Logistica");

-- Crear Tabla Jornada--
create table WorkingDay(
-- Especificando Atributos de la Tabla jornada--
IdWorkingDay bigint primary key auto_increment not null,
WorkingDayName varchar(50) unique not null,
StartTime Time not null,
FinishTime Time not null
);
-- Inserciones Predeterminadas de la Tabla Jornada--
insert into WorkingDay values("","Mañana",'06:30:00','12:30:00');
insert into WorkingDay values("","Tarde",'12:30:00','05:30:00');
insert into WorkingDay values("","Noche",'05:30:00','9:30:00');

-- Crear la tabla Tipo Grupo(Tipo Ficha)--
create table TypeGroup(
-- Especificar Atributos de la Tabla Tipo Grupo(Tipo Ficha)--
IdTypeGroup bigint primary key auto_increment not null,
NameTypeGroup varchar(45) unique not null
);

-- Inserciones Predeterminadas de la tabla Tipo Grupo--
insert into TypeGroup values("","Tecnico");
insert into TypeGroup values("","Tecnologo");

-- Crear Tabla Grupo(Ficha)--
create table Groupp(

-- Especificar Atributos de la Tabla Grupo(Ficha)--
IdGroup bigint primary key not null,
ApprenticesNumber bigint not null,
fkState bigint not null,
fkTypeGroup bigint not null,
fkTrainingProgram bigint not null,
fkAreaSena bigint not null,
-- Asignando Constraint/Creando Llave Foreanea con Campos de Esta tabla --

-- Nombrando Constraint fk_Areasena,Foreign key en el Atributo fkAreasena con la tabla Area sena ,campo de la tabla Area Sena--
Constraint fk_AreaSena Foreign key (fkAreaSena) references AreaSena(IdAreaSena),

-- Nombrando Constraint fk_TypeGroup ,Foreign key en el Atributo fkTypeGroup con la tabla Tipo Grupo ,campo de la tabla Tipó Grupo(Ficha)--
Constraint fk_TypeGroup Foreign key (fkTypeGroup) references TypeGroup(IdTypeGroup),

-- Nombrando Constraint fk_State,Foreign key en el Atributo fkstate con la tabla Estado ,campo de la tabla Estado--
Constraint fk_State Foreign key (fkState) references State(IdState),

-- Nombrando Constraint fk_TrainingProgram ,Foreign key en el Atributo fkTrainingProgram con la tabla Programa de Formacion,campo de la tabla Programa de Formacion--
Constraint fk_TrainingProgram Foreign key (fkTrainingProgram) references TrainingProgram(IdTrainingProgram)
);

-- Inserciones Predeterminadas de la tabla Grupo(Ficha) --

insert into Groupp values(1344690,21,1,1,1,1);
insert into Groupp values(1356743,12,1,2,2,1);
insert into Groupp values(1356741,23,1,2,2,3);
insert into Groupp values(1356724,32,1,2,2,1);
insert into Groupp values(1356731,34,1,1,1,2);
insert into Groupp values(1350988,43,2,1,6,3);
insert into Groupp values(1045567,24,2,1,5,2);
insert into Groupp values(1407012,41,2,2,3,1);
insert into Groupp values(1211790,33,1,2,6,2);
insert into Groupp values(1140387,16,2,2,4,1);

-- Crear tabla Espacio de Formacion--
create table SpaceFormation(
-- Especificando Atributos de la Tabla Espacio de Formacion--
IdSpaceFormation bigint primary key auto_increment not null,
SpaceFormation varchar(100) not null,
fkTypeSpaceFormation bigint not null,
-- Asignando Cosntraint-- 
-- Nombrando Constraint fk_TypeSpaceFormation ,Foreign key en el Atributo fkTypeSpaceFormation con la tabla Tipo Espacio de Formacion,campo de la tabla Espacio de Formacion--
Constraint fk_TypeSpaceFormation Foreign key (fkTypeSpaceFormation) references TypeSpaceFormation(IdTypeSpaceFormation)
);

-- Inserciones Predeterminadas de la tabla Espacio de formacion--
insert into SpaceFormation values ("","Informatica2",1);
insert into SpaceFormation values ("","Informatica1",2);
insert into SpaceFormation values ("","Tecnologia",3);
insert into SpaceFormation values ("","Laboratorio",1);
insert into SpaceFormation values ("","Sala Informatica Primer Piso",2);
insert into SpaceFormation values ("","I1",1);
insert into SpaceFormation values ("","Tec1",1);
insert into SpaceFormation values ("","TecSena1",3);
insert into SpaceFormation values ("","Tecnologia 4",3);
insert into SpaceFormation values ("","Informatica 3",2);

-- Crear tabla Instituto--
Create table Institute(

-- Especificar Atributos de la tabla instituto--
IdInstitute bigint primary key auto_increment not null,
NameInstitute varchar(80) not null,
Headquarters varchar(70) not null,
Address varchar(100) not null unique,
Email varchar(200) not null unique,
Phone bigint not null unique,
fkSpaceFormation bigint not null,
fkNeighborhood bigint not null,
fkLocality bigint not null,
-- Asignando Constrainit a los Atributos: fkSpaceformation,fkNeigborhood,fkLocality--

-- Nombrando Constraint fk_SpaceFormation1,Foreign key en el Atributo fkspaceFormacion con la tabla Spaceformation ,campo de la tabla Espacio de Formacion--
Constraint fk_SpaceFormation1 Foreign key (fkSpaceFormation) references SpaceFormation(IdSpaceFormation),

-- Nombrando Constraint fk_Neighborhood2 ,Foreign key en el Atributo fkNeighborhood con la tabla Barrio,Campo de la Tabla Barrio--
Constraint fk_Neighborhood2 Foreign key (fkNeighborhood) references Neighborhood(IdNeighborhood),

-- Nombrando Constraint fk_Locality4,Foreign key en el Atributo fkLocality con la Tabla Localidad,Campo de la Tabla Localidad--
Constraint fk_Locatity4 Foreign key (fkLocality) references Locality(IdLocality)
);

-- Inserciones Predeterminadas de la Tabla Instituto--
Insert into Institute Values("","Celestin","Suba-Toscana","cra 1","ccf@hotmail.com",3,1,1,3);
Insert into Institute Values("","LLeras","Suba-Villamaria","Cra2","lleras@hotmail.com",5,2,2,19);
Insert into Institute Values("","Gerardo Paredes","Suba-Gaitana","Cra3","gp@hotmail.com",4,3,3,12);
Insert into Institute Values("","Fe y Alegria","Suba-Toscana","Cra4","fa@hotmail.com",1,4,4,7);
Insert into Institute Values("","Gerardo Molina","","Cra5","gm@hotmail.com",2,5,5,4);
Insert into Institute Values("","Tibabuyes","Suba-Tibabuyes","Cra6","tb@hotmail.com",6,6,6,9);
Insert into Institute Values("","Dulce Maria","Suba-Compartir","Cra7","dm@hotmail.com",7,7,7,8);
Insert into Institute Values("","Siglo 21","Suba-Aures","Cra8","s21@hotmail.com",8,8,8,13);
Insert into Institute Values("","Julio Flores","Floresta","Cra9","jf@hotmail.com",9,9,9,15);
Insert into Institute Values("","21 Angeles","21 Angeles","Cra10","21a@hotmail.com",10,10,10,10);

-- Crear Tabla Persona --
create table Person(
-- Especificando Atributos de la Tabla Persona--
IdPerson bigint Primary key auto_increment not null,
PersonName varchar(45) not null,
Address varchar(45) not null,
fkLocality bigint not null,
fkNeighborhood bigint not null,
Email varchar(55) not null unique,
Phone bigint not null,
Userpassword varchar(20) not null,

-- Asignado Llaves Foraneas/Cosntraints a Atributos de la Tabla --

-- Nombrando Constraint fk_Neighborhood3 , Foreign key en el Atributo fkNeighborhood con la tabla Barrio,Campo de la Tabla Barrio--
Constraint fk_Neighborhood3 Foreign key (fkNeighborhood) references Neighborhood(IdNeighborhood),

-- Nombrando Constraint fk_Locality2, Foreign key en el Atributo fkLocality con la tabla Localidad,Campo de la Tabla Localidad--
Constraint fk_Locality2 Foreign key (fkLocality) references Locality(IdLocality)
);

-- Inserciones Predeterminadas de la Tabla Persona -- 
insert into Person Values("", "Juan", "Calle 1", 1,2, "jdpaez652@misena.edu.co",1,"123456");
Insert Into person Values ("","Diego Boada","calle 76 nº 167-89", 12, 26, "diegobom29@gmail.com", 3, "dboada123");
insert into person values("","Carlos Beltran","calle 146 nº 15-23",16,31,"carlosbeltran@ingenieros.com",5,"cbeltran123");
insert into person values("","Gerardo Zambrano","calle 7 nº 23-28",17,25,"gerazamr@misena.edu.co",6,"123");

-- Crear Tabla Programacion--
create table Programming(

-- Especificar Atributos de la Tabla  Programacion--
IdProgramming bigint primary key auto_increment not null,
fkWorkingDay bigint not null,
fkPersonInstructor bigint not null,
fkGroup bigint not null,
fkInstitute bigint not null,
Hourstowork bigint not null,
DaysToWork varchar(60) not null,

-- Asignado Llaves Foraneas/Cosntraints a Atributos de la Tabla --

-- Nombrando Constraint fk_WorkingDay, Foreign key en el Atributo fkWorkingDay con la tabla Jornada,Campo de la Tabla Jornada--
Constraint fk_WorkingDay Foreign key (fkWorkingDay) references WorkingDay(IdWorkingDay),

-- Nombrando Constraint fk_IdPersonInstructor, Foreign key en el Atributo fkPersonInstructor con la tabla Persona,Campo de la Tabla Persona--
Constraint fk_IdPersonInstructor Foreign key (fkPersonInstructor) references Person(IdPerson),

-- Nombrando Constraint fk_IdGroup1, Foreign key en el Atributo fkGroup con la tabla Grupo(Ficha),Campo de la Tabla Grupo(Ficha)--
Constraint fk_IdGroup1 Foreign key (fkGroup) references Groupp(IdGroup),

-- Nombrando Constraint fkInstitute, Foreign key en el Atributo fkInstitute con la tabla Instituto,Campo de la Tabla Instituto--
Constraint fkInstitute Foreign key (fkInstitute) references Institute(IdInstitute)

); 

-- Insercion Predeterminada de la Tabla Programacion-- 
insert into Programming values ("",1,1,1045567,1,35,"Lunes,Jueves");


-- Crear Tabla Programacion Administrativa--
create table AdmProgramming(

-- Especificar Atributos de la tabla Programacion Administrativa--
IdProgramming bigint primary key auto_increment not null,
fkWorkingDay2 bigint not null,
fkPersonInstructor2 bigint not null,
fkInstitute2 bigint not null,
Hourstowork bigint not null,
DaysToWork varchar(60) not null,

-- Asignado Llaves Foraneas/Cosntraints a Atributos de la Tabla --

-- Nombrando Constraint fk_Workingday2, Foreign key en el Atributo fkWorkingday2 con la tabla Jornada,Campo de la Tabla Jornada--
Constraint fk_WorkingDay2 Foreign key (fkWorkingDay2) references WorkingDay(IdWorkingDay),

-- Nombrando Constraint fk_IdPersonInstructor2, Foreign key en el Atributo fkPersonInstructor2 con la tabla Persona,Campo de la Tabla Persona--
Constraint fk_IdPersonInstructor2 Foreign key (fkPersonInstructor2) references Person(IdPerson),

-- Nombrando Constraint fkInstitute2, Foreign key en el Atributo fkInstitute2 con la tabla Instituto,Campo de la Tabla Instituto--
Constraint fkInstitute2 Foreign key (fkInstitute2) references Institute(IdInstitute)
); 

-- Insercion Predeterminada de la Tabla Programacion Administrativa--
insert into AdmProgramming values ("",1,1,2,34,"Lunes,Miercoles");

-- Crear tabla  Detalle Persona-Rol --
create table Detail_person_rol(

-- Especificar Atributos de la Tabla Detalle Persona-Rol --
Id bigint primary key  auto_increment,
fkperson bigint,
fkrol bigint,
-- Asignado Llaves Foraneas a Atributos de la Tabla --

-- Foreign key en el Atributo fkperson con la tabla Persona,Campo de la Tabla Persona--
 foreign key (fkperson) references person(IdPerson),
 
 -- Foreign key en el Atributo fkrol con la tabla Rol,Campo de la Tabla Rol--
 foreign key (fkrol) references rol(Idrol)
);

-- Inserciones Predeterminadas de la Tabla Detalle Persona-Rol --
insert into Detail_person_rol values("",1,1);
insert into Detail_person_rol values("",2,5);
insert into Detail_person_rol values("",3,5);
insert into Detail_person_rol values("",4,5);



