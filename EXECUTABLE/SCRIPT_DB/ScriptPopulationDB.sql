/*PERFILES DE USUARIO*/
INSERT INTO `PHIBASEDB`.`CSPPERFU` (`PFUCPFUAK`, `PFUDPFUAF`, `PFUIACTSF`) VALUES ('01', 'ADMINISTRADOR SISTEMA', '1');
INSERT INTO `PHIBASEDB`.`CSPPERFU` (`PFUCPFUAK`, `PFUDPFUAF`, `PFUIACTSF`) VALUES ('02', 'BIOLOGO QUERIES', '1');

/*USUARIO ADMIN - Password sotileza*/
INSERT INTO USMUSUAR VALUES('admin@phibaseweb.com','Administrador Sistema',
'60df6b1ffb435acb6ad98e280da548f75af0d8a7a544a03596c62e167a5fd73d','01','1',0,0,'0','2016-03-01');


/*Servicios del sistema*/
INSERT INTO CSPSERSI VALUES ('SE001', 'Servicio del Sistema', 'Mantenimiento de los Servicios del Sistema', 'SE001', 'icons/normal/48/world_48.png', '1', '1','1');
INSERT INTO CSPSERSI VALUES ('SE002', 'Perfil de Usuario', 'Mantenimiento de los perfiles de usuario', 'SE002', 'icons/normal/48/group_48.png', '1', '1','1');
INSERT INTO CSPSERSI VALUES ('SE003', 'Asociar Servicios a Perfil', 'Permite asociar servicios del sistema a los perfiles de usuario', 'SE003', 'icons/normal/48/tool_48.png', '1', '0','1');
INSERT INTO CSPSERSI VALUES ('SE004', 'Parametro del Sistema', 'Mantenimiento de los Parametros del Sistema', 'SE004', 'icons/normal/48/gear_48.png', '1', '1','1');
INSERT INTO CSPSERSI VALUES ('SE005', 'Usuario', 'Mantenimiento de Usuarios', 'SE005', 'icons/normal/48/administrator_48.png', '1', '1','1');
INSERT INTO CSPSERSI VALUES ('SE006', 'Log de Ingreso Usuario', 'Consulta del Log de Ingreso de un Usuario', 'SE006', 'icons/normal/48/watchman_48.png', '1', '1','1');
INSERT INTO CSPSERSI VALUES ('SE007', 'Bloqueos de Usuario', 'Consulta de los bloqueos de un Usuario por Password Invalido', 'SE007', 'icons/normal/48/delete_48.png', '1', '1','1');
INSERT INTO CSPSERSI VALUES ('SE008', 'Log Query Usuario', 'Consulta de las queries ejecutadas por los usuarios', 'SE008', 'icons/normal/48/contract_48.png', '1', '1','1');
INSERT INTO CSPSERSI VALUES ('SE009', 'Concepto Semántico', 'Mantenimiento de los conceptos semánticos y sus relaciones', 'SE009', 'icons/normal/48/clip_48.png', '1', '1','1');
INSERT INTO CSPSERSI VALUES ('SE010', 'Detalle Concepto Semántico', 'Mantenimiento del detalle de los conceptos semánticos', 'SE010', 'icons/normal/48/attachment_48.png', '1', '1','1');
INSERT INTO CSPSERSI VALUES ('SE011', 'Consulta Semantic PHI-BASE', 'Pantalla principal de consultas a Semantic PHI-BASE', 'SE011', 'icons/normal/48/zoom_in_48.png', '1', '1','1');

/*Inserta Servicios al perfil de admin*/
INSERT INTO CSPSERPF SELECT '01',SSICSSIAK,'1' FROM CSPSERSI;

/*Parámetros del sistema*/
INSERT INTO CSPPARSI VALUES ('SE01', 'Numero maximo de intentos de inicio no validos para bloquear al usuario.', '2', '3');
INSERT INTO CSPPARSI VALUES ('SE02', 'Numero de Registros a mostrar en el Subfile', '2', '8');
INSERT INTO CSPPARSI VALUES ('SE03', 'Numero de Paginas a Mostrar en Parte Inferior del Subfile', '2', '3');
INSERT INTO CSPPARSI VALUES ('SE04', 'Numero minimo de caracteres en el password', '2', '8');
INSERT INTO CSPPARSI VALUES ('SE05', 'Dias para cambio de contraseña', '2', '60');
INSERT INTO CSPPARSI VALUES ('SE06', 'Tiempo en minutos de Bloqueo de Usuario', '2', '5');
INSERT INTO CSPPARSI VALUES ('SE07', 'Máximo de Registros a desplegar en pantallas de consulta', '2', '100');
INSERT INTO CSPPARSI VALUES ('SE08', 'Dirección Endpoint Virtuoso', '1', 'http://linkeddata.systems:8890/sparql');
INSERT INTO CSPPARSI VALUES ('SE09', 'Maximo de registros autocompletar', '2', '20');
INSERT INTO CSPPARSI VALUES ('SE10', 'URL Servicio visualización', '1', 'http://localhost:9090/visualice');
INSERT INTO CSPPARSI VALUES ('SE11', 'Indicador Visualizacion Integrada', '1', '0');

/*Conceptos Semanticos SEPCONCE*/
INSERT INTO SEPCONCE VALUES('00', 'Gene', 'SIO:SIO_010035', 1, '', 'Genes Relacionados a las interacciones');
INSERT INTO SEPCONCE VALUES('01', 'Host', 'SIO:SIO_010415', 1, '', 'Hosts que participan en interacción');
INSERT INTO SEPCONCE VALUES('02', 'Pathogen', 'SIO:SIO_010414', 1, '', 'Patogeno o enfermedad relacionada en una interacción');
INSERT INTO SEPCONCE VALUES('03', 'Protocol Description', 'SIO:SIO_000136', 2, '', 'Descripción del protocolo');
INSERT INTO SEPCONCE VALUES('04', 'Interaction Context Mutant', 'PHIO:POO_0000000', 2, '', 'Contexto mutante de la interacción');
INSERT INTO SEPCONCE VALUES('05', 'Disease Name', 'PHIO:PHIBO_00001', 2, '', 'Nombre de la enfermedad');
INSERT INTO SEPCONCE VALUES('06', 'Gene - Locus ID', 'EDAM:data_1893', 2, '00', 'Identificador Locus del Gen');
INSERT INTO SEPCONCE VALUES('07', 'Gene - Function', 'PHIO:PHIBO_00004', 2, '00', 'Función que tiene el Gen');
INSERT INTO SEPCONCE VALUES('08', 'Gene - Name', 'EDAM:data_2299', 2, '00', 'Nombre del Gen');
INSERT INTO SEPCONCE VALUES('09', 'Allele', 'SIO:SIO_010277', 1, '', 'Alelo');
INSERT INTO SEPCONCE VALUES('10', 'In Vitro Growth', 'PHIO:PHIBO_00018', 2, '09', 'Lo que crece en in vitro');
INSERT INTO SEPCONCE VALUES('11', 'Lethal Knockout', 'PHIO:PHIBO_00013', 2, '09', 'Indicador de si hay knockout o no en el alelo');
INSERT INTO SEPCONCE VALUES('12', 'Gene - Accession', 'EDAM:data_2907', 1, '00', 'Identificador accession del gen');
INSERT INTO SEPCONCE VALUES('13', 'Citation', '<http://schema.org/CreativeWork>', 2, '', 'Citation en la que aparecen las interacciones');

/*Relaciones Conceptos*/
INSERT INTO SEPRELCO VALUES('00', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Gen');
INSERT INTO SEPRELCO VALUES('01', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Host');
INSERT INTO SEPRELCO VALUES('02', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Pathogen');
INSERT INTO SEPRELCO VALUES('03', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Protocol Description');
INSERT INTO SEPRELCO VALUES('03', '02', 'Has Value', 'PHIO:has_value', 'String', 'Valor del Protocol Description');
INSERT INTO SEPRELCO VALUES('04', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Interaction Context Mutant');
INSERT INTO SEPRELCO VALUES('04', '02', 'Has Value', 'PHIO:has_value', 'String', 'Valor del Interaction Context Mutant');
INSERT INTO SEPRELCO VALUES('05', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Disease Name');
INSERT INTO SEPRELCO VALUES('05', '02', 'Has Value', 'PHIO:has_value', 'String', 'Valor del Disease Name');
INSERT INTO SEPRELCO VALUES('06', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Gen - Locus Id');
INSERT INTO SEPRELCO VALUES('06', '02', 'Has Value', 'PHIO:has_value', 'String', 'Valor del Gen - Locus Id');
INSERT INTO SEPRELCO VALUES('07', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Gen Function');
INSERT INTO SEPRELCO VALUES('07', '02', 'Has Value', 'PHIO:has_value', 'String', 'Valor del Gen Function');
INSERT INTO SEPRELCO VALUES('08', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Gene Name');
INSERT INTO SEPRELCO VALUES('08', '02', 'Has Value', 'PHIO:has_value', 'String', 'Valor del Gene Name');
INSERT INTO SEPRELCO VALUES('09', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Allele');
INSERT INTO SEPRELCO VALUES('10', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Invitro Growth');
INSERT INTO SEPRELCO VALUES('10', '02', 'Has Value', 'PHIO:has_value', 'String', 'Valor del Invitro Growth');
INSERT INTO SEPRELCO VALUES('11', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Lethal Knockout');
INSERT INTO SEPRELCO VALUES('11', '02', 'Has Value', 'PHIO:has_value', 'String', 'Valor del Lethal Knockout');
INSERT INTO SEPRELCO VALUES('12', '01', 'Label', 'rdfs:label', 'String', 'Etiqueta del Gene Accession');
INSERT INTO SEPRELCO VALUES('13', '01', 'Label', 'rdfs:label', 'String', 'Etiquteta de Citation');
INSERT INTO SEPRELCO VALUES('13', '02', 'Has Unique Identifier', 'PHIO:has_unique_identifier', 'String', 'Identificador Unico de Citation');




