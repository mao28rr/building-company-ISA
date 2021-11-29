-- ***************************************************
-- * SECCIÓN DE BORRADO DE TABLAS PARA REINSTALACIÓN *
-- ***************************************************

-- el FORM 22 Investigacion accidentes de trabajo es similar a documentos o actas, no se crea en el sistema porque requiere mucho tiempo y trabajo
-- este documento se debe crear en word y cargar escaneado a la tabla docuemntos empleado
-- los datos de los accidentes ya se encuentran en el FORM 14 Matriz de caracterizacion de accidentalidad.



DROP TABLE IF EXISTS tab_examenes_medicos;          -- FORM 09 Matriz examenes medicos  incluye tab_examenes_medicos tab_actividades_peligros
DROP TABLE IF EXISTS tab_vulnerabilidad;            -- FORM 23 incluye tab_vulnerabilidad tab_causas_amenazas tab_amenazas tab_puntos_calificar 
DROP TABLE IF EXISTS tab_causas_amenazas;           -- FORM 23 incluye tab_vulnerabilidad tab_causas_amenazas tab_amenazas tab_puntos_calificar 
DROP TABLE IF EXISTS tab_amenazas;                  -- FORM 23 incluye tab_vulnerabilidad tab_causas_amenazas tab_amenazas tab_puntos_calificar 
DROP TABLE IF EXISTS tab_puntos_calificar;          -- FORM 23 incluye tab_vulnerabilidad tab_causas_amenazas tab_amenazas tab_puntos_calificar 
DROP TABLE IF EXISTS tab_indicadores;               -- FORM 20 solo la tabla indicadores, los demas datos son reportes de varias matrices
DROP TABLE IF EXISTS tab_ejecucion_presupuesto;     -- FORM 19 incluye tab_ejecucion_presupuesto tab_cronograma_presupuesto tab_proveedores
DROP TABLE IF EXISTS tab_cronograma_presupuesto;    -- FORM 19 incluye tab_ejecucion_presupuesto tab_cronograma_presupuesto tab_proveedores
DROP TABLE IF EXISTS tab_peligros_riesgos;          -- FORM 12 incluye tab_peligros_riesgos tab_actividades_peligros
DROP TABLE IF EXISTS tab_actividades_peligros;      -- FORM 12 incluye tab_peligros_riesgos tab_actividades_peligros
DROP TABLE IF EXISTS tab_incapacidades;             -- FORM 15 ausentismo laboral incluye tab_incapacidades tab_empleados
DROP TABLE IF EXISTS tab_seg_examenes_medicos;      -- FORM 21 Seguimiento a examenes medicos  
DROP TABLE IF EXISTS tab_accidentalidad;            -- FORM 14 Caracterizacion de accidentalidad incluye tab_empleados tab_peligros tab_accidentalidad
DROP TABLE IF EXISTS tab_peligros;                  -- FORM 14 Caracterizacion de accidentalidad incluye tab_empleados tab_peligros tab_accidentalidad
DROP TABLE IF EXISTS tab_control_cambios;           -- FORM 18 Matriz legal incluye tab_matriz_legal tab_control_cambios
DROP TABLE IF EXISTS tab_matriz_legal;              -- FORM 18 Matriz legal incluye tab_matriz_legal tab_control_cambios
DROP TABLE IF EXISTS tab_planeacion_capacitacion;   -- FORM 11 Matriz de capacitaciones incluye tab_planeacion_capacitacion tab_capacitaciones tab_empleados
DROP TABLE IF EXISTS tab_capacitaciones;            -- FORM 11 Matriz de capacitaciones incluye tab_planeacion_capacitacion tab_capacitaciones tab_empleados
DROP TABLE IF EXISTS tab_acpm;                      -- FOMR 8 Incluye tab_acpm tab_empleados
DROP TABLE IF EXISTS tab_cumpl_actividades_plan;    -- FORM 10 Incluye tab_cumpl_actividades_plan tab_actividades_plan tab_plan_anual tab_estructura_sgsst tab_equipo_responsable
DROP TABLE IF EXISTS tab_actividades_plan;          -- FORM 10 Incluye tab_cumpl_actividades_plan tab_actividades_plan tab_plan_anual tab_estructura_sgsst tab_equipo_responsable
DROP TABLE IF EXISTS tab_plan_anual;                -- FORM 10 Incluye tab_cumpl_actividades_plan tab_actividades_plan tab_plan_anual tab_estructura_sgsst tab_equipo_responsable
DROP TABLE IF EXISTS tab_equipo_responsable;        -- FORM 10 Incluye tab_cumpl_actividades_plan tab_actividades_plan tab_plan_anual tab_estructura_sgsst tab_equipo_responsable
DROP TABLE IF EXISTS tab_acciones_quejas;           -- Modulo quejas incluye tab_quejas tab_acciones_quejas tab_empleados
DROP TABLE IF EXISTS tab_quejas;                    -- Modulo quejas incluye tab_quejas tab_acciones_quejas tab_empleados
DROP TABLE IF EXISTS tab_empleados_actas;           -- Modulo comites o actas incluye tab_actas tab_empleados_actas tab_empleados_comites tab_empleados
DROP TABLE IF EXISTS tab_actas;                     -- Modulo comites o actas incluye tab_actas tab_empleados_actas tab_empleados_comites tab_empleados
DROP TABLE IF EXISTS tab_empleados_comites;         -- Modulo comites o actas incluye tab_actas tab_empleados_actas tab_empleados_comites tab_empleados
DROP TABLE IF EXISTS tab_estructura_sgsst;          -- FORM 10 Incluye tab_cumpl_actividades_plan tab_actividades_plan tab_plan_anual tab_estructura_sgsst tab_equipo_responsable
DROP TABLE IF EXISTS tab_cargos_elementos;          -- FORM 13 Matriz elementos pp incluye tab_cargos_elementos tab_elementos_proveedor tab_elementos_pp tab_proveedores
DROP TABLE IF EXISTS tab_elementos_proveedor;       -- FORM 13 Matriz elementos pp incluye tab_cargos_elementos tab_elementos_proveedor tab_elementos_pp tab_proveedores
DROP TABLE IF EXISTS tab_elementos_pp;              -- FORM 13 Matriz elementos pp incluye tab_cargos_elementos tab_elementos_proveedor tab_elementos_pp tab_proveedores
DROP TABLE IF EXISTS tab_proveedores;               -- Modulo Proveedores incluye tab_elementos_pp tab_elementos_proveedor
DROP TABLE IF EXISTS tab_documentos_empresa;        -- Modulo documentacion incluye tab_documentos_empleado tab_documentos_empresa tab_tipos_documento
DROP TABLE IF EXISTS tab_datos_empresa;             -- Modulo parametros
DROP TABLE IF EXISTS tab_documentos_empleado;       -- Modulo documentacion incluye tab_documentos_empleado tab_documentos_empresa tab_tipos_documento
DROP TABLE IF EXISTS tab_usuarios_roles;            -- Modulo usuarios incluye tab_usuarios tab_usuarios_roles tab_modulos_roles tab_modulos tab_roles tab_empleados
DROP TABLE IF EXISTS tab_usuarios;                  -- Modulo usuarios incluye tab_usuarios tab_usuarios_roles tab_modulos_roles tab_modulos tab_roles tab_empleados
DROP TABLE IF EXISTS tab_empleados;                 -- Modulo empleados FORM 16 Incluye tab_empleados tab_cargos tab_areas tab_niveles_estudio
DROP TABLE IF EXISTS tab_cargos;                    -- Modulo empleados FORM 16 Incluye tab_empleados tab_cargos tab_areas tab_niveles_estudio
DROP TABLE IF EXISTS tab_areas;                     -- Modulo empleados FORM 16 Incluye tab_empleados tab_cargos tab_areas tab_niveles_estudio
DROP TABLE IF EXISTS tab_niveles_estudio;           -- Modulo empleados FORM 16 Incluye tab_empleados tab_cargos tab_areas tab_niveles_estudio
DROP TABLE IF EXISTS tab_tipos_documento;           -- Modulo documentacion incluye tab_documentos_empleado tab_documentos_empresa tab_tipos_documento
DROP TABLE IF EXISTS tab_modulos_roles;             -- antes tab_permisos -- Modulo usuarios incluye tab_usuarios tab_usuarios_roles tab_modulos_roles tab_modulos tab_roles tab_empleados
DROP TABLE IF EXISTS tab_modulos;                   -- Modulo usuarios incluye tab_usuarios tab_usuarios_roles tab_modulos_roles tab_modulos tab_roles tab_empleados
DROP TABLE IF EXISTS tab_roles;                     -- Modulo usuarios incluye tab_usuarios tab_usuarios_roles tab_modulos_roles tab_modulos tab_roles tab_empleados

-- Creación tabla roles para permisos de acceso a la aplicacion y roles del sg sst
CREATE TABLE tab_roles
(
    id                      SERIAL,
    nombre                  VARCHAR   NOT NULL, --registra el nombre de cada rol
    responsabilidades       TEXT,               --Las reponsabilidades del rol FOM 03
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL, -- estado en el sistema (true 1 - false 0)
    fecha_creacion          TIMESTAMP DEFAULT NOW(), --fecha creacion del registro
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_roles IS 'Contiene la informacion de los roles para permisos de acceso a la aplicacion y roles del sg sst';

-- Tabla de módulos del sistema, a los cuales tendrá acceso un rol específico
CREATE TABLE tab_modulos
(
    id                      SERIAL,
    nombre                  VARCHAR   NOT NULL, --nombre del modulo
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL, -- estado en el sistema (True: Activo - False: Inactivo)
    fecha_creacion          TIMESTAMP DEFAULT NOW(), --fecha creacion del registro
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_modulos IS 'Contiene la informacion de los modulos del sistema';

--Tabla de módulos permitidos para un rol específico. De acuerdo con cada rol, se establece acceso a los módulos que se necesiten.
CREATE TABLE tab_modulos_roles
(
    id_rol                  BIGINT        NOT NULL, --relacion con la tabla roles
    id_modulo               BIGINT        NOT NULL, --relacion con la tabla modulos
    fecha_creacion          TIMESTAMP DEFAULT NOW(),--fecha creacion del registro
    PRIMARY KEY(id_rol, id_modulo),
    FOREIGN KEY(id_rol)     REFERENCES tab_roles(id),
    FOREIGN KEY(id_modulo)  REFERENCES tab_modulos(id)
);
COMMENT ON TABLE tab_modulos_roles IS 'Contiene la informacion de permisos que tienen los roles sobre los modulos del sistema';

-- ****************************************************************
-- * SECCIÓN DE CREACIÓN DE LAS TABLAS (DDL) MODULO DOCUMENTACION *
-- ****************************************************************

--Tabla de tipos de documento
CREATE TABLE tab_tipos_documento
(
    id                      SERIAL,
    nombre                  VARCHAR    NOT NULL,
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion          TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_tipos_documento IS 'Almacena los tipos de documento como diploma, curso 50 horas, politica de la empresa';

-- Tabla niveles de estudio
CREATE TABLE tab_niveles_estudio
(
    id                      SERIAL,
    nombre                  VARCHAR         NOT NULL,
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion          TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_niveles_estudio IS 'Contiene la informacion de los niveles de estudio';

-- Tabla de areas
CREATE TABLE tab_areas
(
    id                      SERIAL,
    nombre                  VARCHAR         NOT NULL,
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion          TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_areas IS 'Contiene la informacion de todas las areas de la empresa ';


-- 5 Tabla de cargos
CREATE TABLE tab_cargos
(
    id                      SERIAL,
    nombre                  VARCHAR         NOT NULL,
    id_area                 BIGINT          NOT NULL,
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion          TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id),
    FOREIGN KEY(id_area)    REFERENCES tab_areas(id)
);
COMMENT ON TABLE tab_cargos IS 'Contiene la informacion de todos los cargos de la empresa ';


-- Tabla de empleados
CREATE TABLE tab_empleados
(
    id                       SERIAL,
    primer_nombre            VARCHAR         NOT NULL, --Primer nombre del empleado
    segundo_nombre           VARCHAR,                  --Segundo nombre del empleado, puede ser un campo nulo
    primer_apellido          VARCHAR         NOT NULL, --Primer apellido del empleado       
    segundo_apellido         VARCHAR,                  --Segundo apellido del empleado, puede ser un campo nulo
    id_cargo                 BIGINT          NOT NULL, --relacion con la tabla de cargos
    id_nivel_estudio         BIGINT          NOT NULL, --relacion con la tabla de niveles de estudio
    fecha_ingreso            DATE            NOT NULL, --fecha de ingreso a la empresa 
    tipo_documento           SMALLINT        NOT NULL, --Almacena tipo de documento (1: Tarjeta de Identidad / 2: Cédula de ciudadania / 3: Pasaporte )
    identificacion           VARCHAR         NOT NULL, --Número de documento
    fecha_nac                DATE            NOT NULL, --Fecha de nacimiento
    edad                     SMALLINT        NOT NULL, --Edad del empleado
    genero                   CHAR NOT NULL,            --Genero del empleado ( F: Femenino / M: Masculino / O: Otro)
    tipo_sangre              VARCHAR NOT NULL,         --Tipo de sangre
    turno_trabajo            VARCHAR NOT NULL,         --Horario asignado al empleado
    telefono_fijo            VARCHAR ,                 --Contacto Telefono fijo
    celular                  VARCHAR NOT NULL,         --Contacto Telefono Celular
    email                    VARCHAR NOT NULL,         --Correo del empleado usado para restablecimiento de password
    direccion                VARCHAR NOT NULL,         --Direccion de residencia del empleado
    barrio                   VARCHAR NOT NULL,         --Barrio de residencia del empleado
    municipio                VARCHAR NOT NULL,         --Municipio de residencia del empleado
    estrato                  VARCHAR NOT NULL,         --Estrato del empleado
    etnia                    VARCHAR,                  --Etnia del empleado
    comp_familiar            VARCHAR,                  --Cuantas personas componen el nucleo familiar del empleado
    estado_civil             VARCHAR,                  --Estado civil del empleado
    no_hijos                 SMALLINT,                 --Número de hijos del empleado      
    tipo_contrato            VARCHAR NOT NULL,         --Tipo de contrato del empleado      
    eps                      VARCHAR,                  --Almacena la ruta donde se carga el certificado de la EPS del empleado   
    afp                      VARCHAR,                  --Almacena la ruta donde se carga el certificado de la AFP del empleado   
    ccf                      VARCHAR,                  --Almacena la ruta donde se carga el certificado de la caja de compensación familiar del empleado   
    arl                      VARCHAR,                  --Almacena la ruta donde se carga el certificado de la ARL del empleado   
    sufre_enf                BOOLEAN,                  --(True: Sufre enfermedades / False: No sufre de ninguna enfermedad) 
    cual_enf                 VARCHAR,                  --Observacion de predisposicion enfermedades en caso de que aplique
    toma_med                 BOOLEAN,                  --(True: Toma medicamentos / False: No toma medicamentos) 
    cual_med                 VARCHAR,                  --Observacion de medicamentos en caso de que aplique             
    contacto_emerg           VARCHAR NOT NULL,         --Nombre del contacto de emergencia
    parent_emerg             VARCHAR NOT NULL,         --Parentesco del contacto de emergencia
    telefono_emerg           VARCHAR NOT NULL,         --Numero de telefono del contacto de emergencia
    induccion_sst            BOOLEAN,                  --Aplica a induccion del SG-SST (True: Aplica / False: No Aplica)
    fecha_retiro             DATE,                     --Fecha de retiro del empleado
    rango_tiempo_emp         VARCHAR,                  --Calculo de Tiempo que lleva el empleado en la empresa (fecha_ingreso - fecha_actual)
    es_vacunado_covid        BOOLEAN,                  --Almacenar el estado de vacunacion COVID  (True: Vacunado - False: No Vacunado)
    fecha_prim_dosis         DATE,                     --Fecha de primera dosis de vacunacion en caso que aplique
    fecha_seg_dosis          DATE,                     --Fecha de segunda dosis de vacunacion en caso que aplique
    fecha_ter_dosis          DATE,                     --Fecha de tercera dosis de vacunacion en caso que aplique
    activo                   BOOLEAN   DEFAULT TRUE NOT NULL, --Estado del empleado en la empresa (True: Activo - False: Inactivo)
    es_instructor            BOOLEAN   DEFAULT FALSE NOT NULL, --Estado para indicar si el empleado es instructor que realiza las actividades de  capacitaciones (Alimentar la matriz de capacitaciones)
    fecha_creacion           TIMESTAMP DEFAULT NOW(),  --Fecha de creacion del registro del empleado
    PRIMARY KEY(id),
    FOREIGN KEY(id_cargo) REFERENCES tab_cargos(id),
    FOREIGN KEY(id_nivel_estudio) REFERENCES tab_niveles_estudio(id)
);
COMMENT ON TABLE tab_empleados IS 'Contiene la informacion de todos los empleados de la empresa ';
COMMENT ON COLUMN tab_empleados.id_nivel_estudio IS 'De acuerdo a la tabla tab_niveles_estudio';
COMMENT ON COLUMN tab_empleados.id_cargo IS 'Relacion de cargos segun la tab_cargos';

-- Creación tabla usuarios
CREATE TABLE tab_usuarios
(
    id                      SERIAL,   
    usuario                 VARCHAR         NOT NULL, -- Password del usuario
    password                VARCHAR         NOT NULL, -- Password del usuario
    fecha_creacion          TIMESTAMP DEFAULT NOW(),
    activo                  BOOLEAN         NOT NULL DEFAULT TRUE,  -- Rol del usuario en el sistema, asignado al momento de crear un usuario
    id_empleado             BIGINT          NOT NULL, -- Relacion con la tabla de empleados, un usuario es asignado a un empleado 
    PRIMARY KEY(id),
    FOREIGN KEY(id_empleado) REFERENCES tab_empleados(id)
);
COMMENT ON TABLE tab_usuarios IS 'Contiene la informacion de los usuarios de la aplicacion ';
COMMENT ON COLUMN tab_usuarios.id_empleado IS 'La informacion del usuario está en la tabla tab_empleados';
CREATE INDEX indice_usuario ON tab_usuarios(usuario);

-- Tabla usuarios roles
CREATE TABLE tab_usuarios_roles
(
    id                      SERIAL,
    id_usuario              BIGINT         NOT NULL,
    id_rol                  BIGINT         NOT NULL,
    fecha_desde             TIMESTAMP,
    fecha_hasta             TIMESTAMP,
    fecha_creacion          TIMESTAMP      DEFAULT NOW(),
    activo                  BOOLEAN        DEFAULT TRUE NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_usuario) REFERENCES tab_usuarios(id),
    FOREIGN KEY(id_rol) REFERENCES tab_roles(id)
);
COMMENT ON TABLE tab_usuarios_roles IS 'Contiene los registros de los roles por empleado';
COMMENT ON COLUMN tab_usuarios_roles.fecha_desde IS 'desde cuando tiene este rol';
COMMENT ON COLUMN tab_usuarios_roles.fecha_hasta IS 'hasta cuando tiene el rol';

-- Tabla de documentos empleado
CREATE TABLE tab_documentos_empleado
(
    id                      SERIAL,
    id_empleado             BIGINT         NOT NULL, --Relacion con la informacion de la tabla empleado
    id_tipo_documento       BIGINT         NOT NULL, --Relacion con la informacion de la tabla tipos de documento (diploma, curso 50 horas, politica de la empresa')
    nombre_archivo          VARCHAR        NOT NULL, --Ruta donde se alojara el archivo
    fecha_vence             DATE,                    --Fecha de vencimiento del documento
    observacion             TEXT,                    --Observaciones en caso que aplique sobre el documento registrado
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion          TIMESTAMP DEFAULT NOW(), --Almacena la fecha de registro del documento, fecha actual
    PRIMARY KEY(id),
    FOREIGN KEY(id_empleado) REFERENCES tab_empleados(id),
    FOREIGN KEY(id_tipo_documento) REFERENCES tab_tipos_documento(id)
);
COMMENT ON TABLE tab_documentos_empleado IS 'Almacena los documentos de cada empleado';
COMMENT ON COLUMN tab_documentos_empleado.nombre_archivo IS 'Nombre y ruta completa del archivo';

-- Tabla datos Empresa
CREATE TABLE tab_datos_empresa
(
    id                      SERIAL,
    razon_social            VARCHAR     NOT NULL, --Razon social o nombre de la empresa
    NIT                     VARCHAR     NOT NULL, --Documento de identificacion de la empresa
    longitud                VARCHAR     NOT NULL, --Longitud (geocalizacion)
    latitud                 VARCHAR     NOT NULL, --Latitud  (geocalizacion)
    actividad_economica     VARCHAR     NOT NULL, --Actividad economica que desempeña la empresa
    id_sector_economico     BIGINT      NOT NULL,
    nivel_riesgo            VARCHAR     NOT NULL, --Almacena el nivel de riesgo en el que se categoriza la empresa
    cantidad_trabajadores   VARCHAR     NOT NULL, --es un campo calculado
    naturaleza_juridica     VARCHAR     NOT NULL, --Naturaleza (Individual/limitada/Sociedad Anónima..)
    telefono1               VARCHAR     NOT NULL, --Contacto principal
    telefono2               VARCHAR,              --Contacto secundario
    telefono3               VARCHAR,              --Contacto secundario
    direccion               VARCHAR     NOT NULL, --Direccion de la empresa
    email                   VARCHAR     NOT NULL, --Direccion de correo de la empresa
    pagina_web              VARCHAR,              -- Url del sitio web de la empresa
    tipo_empresa            VARCHAR     NOT NULL, --Clasificacion tipo de empresa 
    activo                  BOOLEAN     DEFAULT TRUE NOT NULL, --Estado (True: Activo / False: Inactivo)
    fecha_creacion          TIMESTAMP   DEFAULT NOW(), --Fecha de registro en el sistema
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_datos_empresa IS 'Contiene la informacion de la Empresa ';
COMMENT ON COLUMN tab_datos_empresa.cantidad_trabajadores IS 'Es un campo calculado';
COMMENT ON COLUMN tab_datos_empresa.id_sector_economico IS 'Relacion con la tabla de sectores economicos';

--  Tabla de documentos Empresa
CREATE TABLE tab_documentos_empresa
(
    id                      SERIAL,
    id_tipo_documento       SMALLINT     NOT NULL, --Almacena tipo de documento (1: Tarjeta de Identidad / 2: Cédula de ciudadania / 3: Pasaporte )
    titulo                  VARCHAR      NOT NULL, --Titulo del documento a registrar
    descripcion             TEXT,                  --Breve descripcion del documento a registrar
    firma                   VARCHAR      NOT NULL,  --Almacena la firma del documento
    nombre_archivo          VARCHAR      NOT NULL,  --Almacena la ruta del documento,
    fecha_vence             DATE,                  --Fecha de vencimiento del documento
    observacion             TEXT,                  --Observaciones en caso que aplique sobre el documento registrado
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL, --Estado (True: Activo / False: Inactivo)
    fecha_creacion          TIMESTAMP DEFAULT NOW(),--Fecha de registro en el sistema
    PRIMARY KEY(id),
    FOREIGN KEY(id_tipo_documento) REFERENCES tab_tipos_documento(id)
);
COMMENT ON TABLE tab_documentos_empresa IS 'Almacena los documentos de la Empresa';
COMMENT ON COLUMN tab_documentos_empresa.nombre_archivo IS 'Nombre y ruta completa del archivo';
COMMENT ON COLUMN tab_documentos_empresa.titulo IS 'Para mostrar en la vista Ej: Politica de SG SST';
COMMENT ON COLUMN tab_documentos_empresa.descripcion IS 'Texto para publicar o generar documento en pdf';
COMMENT ON COLUMN tab_documentos_empresa.firma IS 'Nombre de quien firma el documento';

-- Tabla Proveedores
CREATE TABLE tab_proveedores
(
    id                      SERIAL,
    razon_social            VARCHAR     NOT NULL, --Nombre del proveedor
    NIT                     VARCHAR     NOT NULL, --Numero de documento 
    certificado_arl         VARCHAR     NOT NULL, --Almacena la ruta del documento certificado de ARL del proveedor
    es_autorizado           BOOLEAN NOT NULL, -- Valida el estado del proveedor ( True: Autorizado / False: No Autorizado)
    seguridad_social        VARCHAR     NOT NULL, --Almacena la ruta del documento certificado de seguridad social del proveedor
    ficha_seg_productos     VARCHAR     NOT NULL, --Almacena la ruta del documento consolidado de la ficha de los productos que entrega el proveedor
    telefono1               VARCHAR     NOT NULL, --Contacto principal
    telefono2               VARCHAR     NOT NULL, --Contacto secundario
    email                   VARCHAR     NOT NULL, --Correo 
    tipo_empresa            VARCHAR     NOT NULL, --Registra el tipo de empresa
    activo                  BOOLEAN     DEFAULT TRUE NOT NULL, --Registra el estado del proveedor ( True: Activo / False: Inactivo)
    fecha_creacion          TIMESTAMP   DEFAULT NOW(),  --Fecha de registro en el sistema
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_proveedores IS 'Contiene la informacion de los proveedores ';
COMMENT ON COLUMN tab_proveedores.es_autorizado IS 'Indica si esta autorizado por las autoridades de salud para la compra de los insumos necesarios para ejecución del sistema';
COMMENT ON COLUMN tab_proveedores.certificado_arl IS 'Un pdf escaneado, se carga en el sistema';
COMMENT ON COLUMN tab_proveedores.seguridad_social IS 'Un pdf escaneado, se carga en el sistema';
COMMENT ON COLUMN tab_proveedores.ficha_seg_productos IS 'Un pdf escaneado por todos los productos del proveedor, se carga en el sistema';

--  Tabla elementos de proteccion personal
CREATE TABLE tab_elementos_pp
(
    id                      SERIAL,
    nombre                  VARCHAR,
    imagen                  VARCHAR    NOT NULL,
    activo                  BOOLEAN    DEFAULT TRUE NOT NULL,
    fecha_creacion          TIMESTAMP  DEFAULT NOW(),
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_elementos_pp IS 'Contiene la informacion de los elementos de proteccion personal ';
COMMENT ON COLUMN tab_elementos_pp.imagen IS 'Almacena ruta y  nombre de la imagen que corresponde al elemento de protección personal';


-- Tabla elementos_proveedor
CREATE TABLE tab_elementos_proveedor
(
    id                       SERIAL,
    id_proveedor          BIGINT       NOT NULL, --Relacion con la tabla de proveedores
    id_elemento    	     BIGINT       NOT NULL, --Relacion con la tabla de elementos de proteccion personal
    vida_util 		         INTEGER, 	-- Vida util del elemento en meses
    activo                   BOOLEAN   DEFAULT TRUE NOT NULL, --Estado (True: Vigente / False: No Vigente)
    fecha_creacion           TIMESTAMP DEFAULT NOW(), -- Almacena la fecha en la que se registro en el sistema
    PRIMARY KEY(id),
    FOREIGN KEY(id_proveedor) REFERENCES tab_proveedores(id),
    FOREIGN KEY(id_elemento) REFERENCES tab_elementos_pp(id) 
);
COMMENT ON TABLE tab_elementos_proveedor IS 'Contiene la informacion de los elementos pp que suministra cada proveedor esto es para la matriz de elementos de pp';
COMMENT ON COLUMN tab_elementos_proveedor.vida_util IS 'En meses';

--Tabla para la relacion entre cargo con los elementos de proteccion
CREATE TABLE tab_cargos_elementos (
	id serial,
	id_cargo integer NOT NULL,
	id_elemento integer NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (id_cargo) REFERENCES tab_cargos(id),
	FOREIGN KEY (id_elemento) REFERENCES tab_elementos_pp(id)
);
COMMENT ON TABLE tab_cargos_elementos IS 'Contiene la informacion de la relacion entre los cargos y los elementos de proteccion personal asignados';

-- Tabla de estructura del sistema de gestion
CREATE TABLE tab_estructura_sgsst
(
    id                      SERIAL,
    nombre                  VARCHAR         NOT NULL, --nombre de las areas encargadas de la estructura del SG-SST
    activo                  BOOLEAN         DEFAULT TRUE NOT NULL, --estado (True:Activo / False: Inactivo)
    abreviatura             VARCHAR,  --Se indica la abreviatura de la dependencia en caso que aplique (COPASST,BE,COCOLA)
    fecha_creacion          TIMESTAMP       DEFAULT NOW(), --Fecha en la que se realizo la creacion en el sistema
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_estructura_sgsst IS 'Contiene las dependencias o áreas que intervienen en la ejecución del sistema de gestion (Bioseguridad, Perfil Sociodemografico,COCOLA, COPAST,Plan de trabajo ARL, entre otros';
COMMENT ON COLUMN tab_estructura_sgsst.abreviatura IS 'Abreviatura del area como por ejemplo BE(Brigada de emergencia),Comite paritario de seguridad y salud en el trabajo COPASST..';
-- Tabla de empleados comites 
CREATE TABLE tab_empleados_comites
(
    id                      SERIAL,
    id_empleado          BIGINT      NOT NULL, --Relacion con la tabla empleados
    id_comite            BIGINT      NOT NULL, --Relacion para traer el área del sistema que genera el acta ( COCOLA, COPASST, Brigada de emergencia)
    perfil                  INTEGER     NOT NULL, --Se almacena el rol que desempeñara el empleado dentro del comite
    descripcion             VARCHAR,              --Se registra observaciones en caso que aplique
    nombre_archivo          VARCHAR     NOT NULL, --Almacena la ruta y nombre donde se guardara el documento
    fecha_inicio            TIMESTAMP   NOT NULL, --Registra la fecha en la que el empleado ingreso al comite
    fecha_fin               TIMESTAMP, --Se registra la fecha en la que el empleado deja de pertenecer al cómite
    fecha_creacion          TIMESTAMP DEFAULT NOW(), --Registra la fecha de creacion del registro
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL,  --Registra el estado de vinculacion del empleado al comite ( True: Activo / False: Inactivo)
    PRIMARY KEY(id),
    FOREIGN KEY(id_empleado) REFERENCES tab_empleados(id),
    FOREIGN KEY(id_comite) REFERENCES tab_estructura_sgsst(id)
);
COMMENT ON TABLE tab_empleados_comites IS 'Contiene los registros  de la relacion de los empleados con los comites';
COMMENT ON COLUMN tab_empleados_comites.id_comite IS 'Contiene el identificador del área en este caso para el comites del SG-SST a la que pertenece el empleado';
COMMENT ON COLUMN tab_empleados_comites.perfil IS '1=presidente. 2=suplente del presidente. 3=secretario. 4=suplente del secretario. 5=miembro. EL Rol del empleado en el comite';
COMMENT ON COLUMN tab_empleados_comites.nombre_archivo IS 'Nombre y ruta completa del archivo soporte, si lo hay';
-- Tabla de  actas y reuniones
CREATE TABLE tab_actas
(
    id                      SERIAL,
    tipo_acta               SMALLINT      NOT NULL, --Se indica el número que corresponde al  tipo de acta a registrar
    id_comite            BIGINT       NOT NULL, --Relacion para traer el área del sistema que genera el acta ( COCOLA, COPASST, Brigada de emergencia)
    titulo                  VARCHAR       NOT NULL, --Se guarda el titulo de tema a tratar en el acta
    lugar                   VARCHAR       NOT NULL, --Se guarda el titulo de tema a tratar en el acta 
    descripcion             VARCHAR       NOT NULL, --Se indica la descripción del acta
    observacion             TEXT,                --Se registra la observacion general 
    nombre_archivo          VARCHAR       NOT NULL, --Se almacena la ruta del archivo del acta generada y firmada
    soportes                VARCHAR       NOT NULL, --Se almacena la ruta con el archivo de soporte para el acta 
    fecha_inicio            TIMESTAMP     NOT NULL, --Se registra la fecha de inicio
    fecha_fin               TIMESTAMP,              --Se registra la fecha de finalizacion
    fecha_creacion          TIMESTAMP DEFAULT NOW(),--Se registra la fecha de registro del acta en el sistema
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL, -- Registra el estado de registro del acta ( True: Activo / False: Inactivo)
    PRIMARY KEY(id),
    FOREIGN KEY(id_comite) REFERENCES tab_estructura_sgsst(id)
);
COMMENT ON TABLE tab_actas IS 'Contiene los registros  de las actas de las respectivas reuniones de los comites';
COMMENT ON COLUMN tab_actas.tipo_acta IS '1=Reunion 2=Votaciones 3=Nombramientos 4=Otros';
COMMENT ON COLUMN tab_actas.id_comite IS 'Corresponde al id de la relacion con las areas de la tabla estructura del sgsst';
COMMENT ON COLUMN tab_actas.nombre_archivo IS 'Nombre y ruta completa del archivo en pdf del acta';
COMMENT ON COLUMN tab_actas.soportes IS 'Nombre y ruta completa del archivo en pdf de los soportes del acta por ej cuando es de votaciones';
COMMENT ON COLUMN tab_actas.fecha_inicio IS 'fecha y hora inicio de la reunion';
COMMENT ON COLUMN tab_actas.fecha_fin IS 'fecha y hora fin de la reunion';

--  Tabla de registo de empleados intervienen actas
CREATE TABLE tab_empleados_actas
(
    id                       SERIAL,
    id_empleado           BIGINT        NOT NULL, --Relacion con la tabla empleados para identificar la participacion de los empleados en las actas y reuniones
    id_acta               BIGINT        NOT NULL, --Relacion con la tabla actas para identificar el tipo de reuniones en las que participa el empleado
    es_candidato             BOOLEAN       NOT NULL DEFAULT FALSE, -- Registra el tipo de participacion del empleado en la ejecucion  del acta ( True: Candidato / False: Votante)
    observacion              TEXT,  --Se registra la observacion general 
    fecha_creacion           TIMESTAMP DEFAULT NOW(), --Se registra la fecha de registro del acta en el sistema
    activo                   BOOLEAN   DEFAULT TRUE NOT NULL,  -- Registra el estado de registro del acta del empleado ( True: Activo / False: Inactivo)
    PRIMARY KEY(id),
    FOREIGN KEY(id_empleado) REFERENCES tab_empleados(id),
    FOREIGN KEY(id_acta) REFERENCES tab_actas(id)
);
COMMENT ON TABLE tab_empleados_actas IS 'Contiene los registros  relacion de los empleados con las actas';
COMMENT ON COLUMN tab_empleados_actas.id_acta IS 'id del acta en que interviene el empleado';
COMMENT ON COLUMN tab_empleados_actas.id_empleado IS 'id del empelado que interviene en el acta';


--Tabla de quejas
CREATE TABLE tab_quejas
(
    id                      SERIAL,
    id_empleado          BIGINT         NOT NULL, --Relacion con la tabla empleados, son atendidas por el presidente o encargado de las quejas
    nombre                  VARCHAR        NOT NULL, --Titlo o motivo de la queja
    descripcion             VARCHAR        NOT NULL, --Breve descripcion
    nombre_archivo          VARCHAR, --Almacena la ruta del archivo o formato para las quejas
    observacion             TEXT, --Se registra el detalle de la queja a evaluar
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL, --Indica el estado de la revisión de la queja (True: En trámite / False: Resuelta)
    fecha_creacion          TIMESTAMP DEFAULT NOW(), --Se registra la fecha de ingreso de la queja en el sistema
    PRIMARY KEY(id),
    FOREIGN KEY(id_empleado) REFERENCES tab_empleados(id)
);
COMMENT ON TABLE tab_quejas IS 'Contiene los registros y soportes de las acciones para resolver las quejas';
COMMENT ON COLUMN tab_quejas.nombre_archivo IS 'Nombre y ruta completa del archivo soporte, si lo hay';
COMMENT ON COLUMN tab_quejas.id_empleado IS 'id del presidente de cocola o responsable de las quejas ';

-- Tabla de acciones quejas
CREATE TABLE tab_acciones_quejas
(
    id                      SERIAL,
    id_queja             BIGINT         NOT NULL, --Relacion con la tabla que registra las quejas
    nombre                  VARCHAR        NOT NULL, --Nombre o titulo de la accion
    descripcion             VARCHAR        NOT NULL, --Breve descripcion
    nombre_archivo          VARCHAR , --Almacena la ruta del archivo de soporte
    observacion             TEXT           NOT NULL, --Almacena el detalle de las acciones a realizar
    activo                  BOOLEAN        DEFAULT TRUE NOT NULL, --Estado de las acciones (True: Activo / False:Inactivo)
    fecha_creacion          TIMESTAMP      DEFAULT NOW(),  --Se registra la fecha de las acciones registradas en el sistema asociadas a un id de queja
    PRIMARY KEY(id),
    FOREIGN KEY(id_queja) REFERENCES tab_quejas(id)
);
COMMENT ON TABLE tab_acciones_quejas IS 'Contiene los registros y soportes de las acciones para resolver las quejas';
COMMENT ON COLUMN tab_acciones_quejas.nombre_archivo IS 'Nombre y ruta completa del archivo soporte, si lo hay';

-- Tabla de equipo de responsables
CREATE TABLE tab_equipo_responsable
(
    id                      SERIAL,
    nombre_equipo           VARCHAR         NOT NULL, --Nombre del equipo o grupo encargado
    activo                  BOOLEAN         DEFAULT TRUE NOT NULL, --estado (True:Activo / False: Inactivo)
    PRIMARY KEY(id)
);

-- Tabla de plan anual
CREATE TABLE tab_plan_anual
(
    id                      SERIAL,
    año                     SMALLINT         NOT NULL, --Año que corresponde al registro del plan
    objetivo                TEXT             NOT NULL, --Descripcion del objetivo del plan anual
    metas                   TEXT             NOT NULL, --Descripcion breve de las metas del plan anual
    alcance                 TEXT             NOT NULL, --Descripcion del alcance del plan anual 
    activ_planeadas         SMALLINT         NOT NULL, --Cantidad de actividades planeadas
    activ_cumplidas         SMALLINT,  --Cantidad de actividades cumplidas             
    activ_no_cumplidas      SMALLINT,  --Cantidad de actividades no cumplidas
    nombre_archivo          VARCHAR,   --Almacena la ruta del formato de plan anual
    fecha_creacion          TIMESTAMP DEFAULT NOW(), --Fecha de registro en el sistema
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL, --Estado (True: Activo / False:Inactivo)
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_plan_anual IS 'Contiene los registros  relacion de los empleados con las actas';
COMMENT ON COLUMN tab_plan_anual.año IS 'El año tambien podría ser la llave primaria ya que no se puede repetir';
COMMENT ON COLUMN tab_plan_anual.activ_planeadas IS 'Los campos de activ_planeadas cumplidas y no_cumplidas son campos calculados que se deben actualizar de la tabla tab_actividades_plan';
COMMENT ON COLUMN tab_plan_anual.nombre_archivo IS 'Nombre y ruta completa del archivo soporte, si lo hay';

-- Tabla actividades del plan anual
CREATE TABLE tab_actividades_plan
(
    id                      SERIAL,
    id_plan                 BIGINT         NOT NULL, --Relacion con la tabla plan anual que indica el id del plan a registrar actividades
    id_estructura           BIGINT         NOT NULL, --Relacion con la tabla que contiene las areas o dependencias del SGSST
    etapa_phva              CHAR(1)        NOT NULL, --Indica la etapa o ciclo del plan anual
    actividad               TEXT           NOT NULL, --Se registra el detalle de la actividad
    id_equipo_responsable   BIGINT         NOT NULL, --Se relaciona con la tabla de equipo responsable de la ejecución de la actividad
    recursos                TEXT           NOT NULL, --Indicar los recursos asignados (Humanos, Financierosn,Tecnologicos) 
    periodicidad            VARCHAR        NOT NULL, --Se registra la periodicidad de la ejecucion de la actividad.
    fecha_planeacion        TIMESTAMP, --Fecha de la planeacion de las actividades del plan
    fecha_cumplimiento      TIMESTAMP, --Se registra la fecha de cumplimiento de la actividad
    estado_actividad        INTEGER, --Se indica en valor númerico el estado de la actividad
    nombre_archivo          VARCHAR, --Almacena la ruta del archivo
    fecha_creacion          TIMESTAMP DEFAULT NOW(), --Fecha de registro de la actividad en el sistema
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL,  --Estado (True: Activo / False:Inactivo)
    PRIMARY KEY(id),
    FOREIGN KEY(id_plan)    REFERENCES tab_plan_anual(id),
    FOREIGN KEY(id_estructura) REFERENCES tab_estructura_sgsst(id),
    FOREIGN KEY(id_equipo_responsable) REFERENCES tab_equipo_responsable(id)
);
COMMENT ON TABLE tab_actividades_plan IS 'Contiene los registros de actividades planeadas para el año';
COMMENT ON COLUMN tab_actividades_plan.id_estructura IS 'Id De la tabla tab_estructura_sgsst';
COMMENT ON COLUMN tab_actividades_plan.etapa_phva IS 'Recibe un solo caracter P H V A';
COMMENT ON COLUMN tab_actividades_plan.id_equipo_responsable IS 'Corresponde al id de la relacion con la la tabla de equipo responsable de la actividad';
COMMENT ON COLUMN tab_actividades_plan.periodicidad IS 'En texto ingresa el si es quincenal, mensual ...';
COMMENT ON COLUMN tab_actividades_plan.fecha_planeacion IS 'En que fecha se planea la actividad';
COMMENT ON COLUMN tab_actividades_plan.fecha_cumplimiento IS 'En que fecha se debe cumplir la actividad';
COMMENT ON COLUMN tab_actividades_plan.nombre_archivo IS 'Nombre y ruta completa del archivo soporte, si lo hay';

-- Tabla cumplimiento actividades del plan anual
CREATE TABLE tab_cumpl_actividades_plan
(
    id                      SERIAL,
    id_actividad         BIGINT         NOT NULL,--Relacion con la tabla de actividades
    mes                     INTEGER        NOT NULL,--Mes de cumplimiento de la actividad
    porcentaje_cumplimiento DECIMAL(3,1), -- Valor promedio de cumpliento entre las actividades planeadas y concreatadas
    nombre_archivo          VARCHAR, --Almacena la ruta del archivo
    fecha_creacion          TIMESTAMP DEFAULT NOW(),  --Fecha de registro de la actividad en el sistema
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL,  --Estado (True: Activo / False:Inactivo)
    PRIMARY KEY(id),
    FOREIGN KEY(id_actividad) REFERENCES tab_actividades_plan(id)
);
COMMENT ON TABLE tab_cumpl_actividades_plan IS 'Contiene los registros del cumplimiento del plan, cada mes se registra cuanto se cumple de la actividad ej: 0 o 0.5';
COMMENT ON COLUMN tab_cumpl_actividades_plan.mes IS 'Se registra el mes y cuanto de esa actividad se cumplió';
COMMENT ON COLUMN tab_cumpl_actividades_plan.nombre_archivo IS 'Nombre y ruta completa del archivo soporte, si lo hay';

-- Tabla acciones correctivas. preventivas y de mejoramiento
CREATE TABLE tab_acpm
(
    id                      SERIAL,
    tipo_accion             INTEGER         NOT NULL, -- 1=correctivas. 2=preventivas. 3-De mejoramiento
    descripcion_situacion   VARCHAR         NOT NULL,
    descripcion_accion      VARCHAR         NOT NULL,
    nombre_archivo          VARCHAR,
    archivo_correccion      VARCHAR,
    id_empleado             BIGINT,                     -- Si el responsable es un empleado
    responsable_solicitud   VARCHAR,                    -- si el responsable no es empleado
    analisis_causas         VARCHAR,
    costo_correccion        VARCHAR,
    accion_correctiva       VARCHAR,
    fecha_accion            TIMESTAMP,
    fecha_implementacion    TIMESTAMP,
    fecha_verificacion      TIMESTAMP,
    fecha_observaciones     TIMESTAMP,
    estado_actividad        VARCHAR(1), -- c=Cerrado v=Verificado
    eficacia                VARCHAR(2), -- e=eficaz ne=no eficaz
    proceso                 VARCHAR, 
    tema                    VARCHAR, 
    fecha_creacion          TIMESTAMP DEFAULT NOW(),
    activo                  BOOLEAN   DEFAULT TRUE NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_empleado) REFERENCES tab_empleados(id)
);
COMMENT ON TABLE tab_acpm IS 'Contiene los registros la acciones correctivas, preventivas y de mejoramiento';
COMMENT ON COLUMN tab_acpm.responsable_solicitud IS 'Si no es empleado se ingresa el nombre de la persona o area';
COMMENT ON COLUMN tab_acpm.estado_actividad IS 'c=cerrado  v=verificado';
COMMENT ON COLUMN tab_acpm.tipo_accion IS '1=correctivas. 2=preventivas. 3-De mejoramiento';
COMMENT ON COLUMN tab_acpm.eficacia IS 'e=aficaz  ne=no eficaz';
COMMENT ON COLUMN tab_acpm.nombre_archivo IS 'Nombre y ruta completa del archivo soporte, si lo hay';
COMMENT ON COLUMN tab_acpm.archivo_correccion IS 'Nombre y ruta completa del archivo soporte de las correciones, si lo hay';


--Tabla para registrar las capacitaciones FORM 11
CREATE TABLE tab_capacitaciones
(
    id                      SERIAL,
    tipo_capacitacion       VARCHAR,                    -- BE, pp, sst
    descripcion             TEXT            NOT NULL,
    id_empleado             BIGINT,                     -- Si el responsable es un empleado
    responsable             VARCHAR,                    -- si el responsable no es empleado ejem un tercero o una area
    fecha_creacion          TIMESTAMP       DEFAULT NOW(),
    PRIMARY KEY (id),
    FOREIGN KEY(id_empleado) REFERENCES tab_empleados(id)
);
COMMENT ON TABLE tab_capacitaciones IS 'Contiene los registros de las capacitaciones FORM 11';
COMMENT ON COLUMN tab_capacitaciones.id_empleado IS 'Si el responsable es un empleado sino se ingresa en el campo responsable';

-- Tabla planeacion capacitaciones FORM 11
CREATE TABLE tab_planeacion_capacitacion
(
    id                      SERIAL,
    id_capacitacion         BIGINT         NOT NULL,    --Relacion con la tabla de capacitaciones,indica el id de la capacitacion sobre la que se registrara actividades
    fecha_planeacion        TIMESTAMP,                  --Fecha en que se deben realizar las actividades de capacitacion
    fecha_cumplimiento      TIMESTAMP,                  --Se registra la fecha de cumplimiento de la actividad de capacitacion
    estado_actividad        INTEGER,                    --Se indica en valor númerico el estado de la actividad (1:Ejecutado / 0:Pendiente)
    archivo_soporte         VARCHAR,                    --Almacena la ruta del archivo consolidado con las evidencias y soportes de la actividad
    fecha_creacion          TIMESTAMP DEFAULT NOW(), --Fecha de registro de la actividad en el sistema
    PRIMARY KEY(id),
    FOREIGN KEY(id_capacitacion)   REFERENCES tab_capacitaciones
);
COMMENT ON TABLE tab_planeacion_capacitacion IS 'Contiene los registros de actividades de capacitacion planeadas y ejecutadas FORM 11';
COMMENT ON COLUMN tab_planeacion_capacitacion.id_capacitacion IS 'Relacion con la tab_capacitaciones para asociar la lista de actividades con el registro del plan de capacitacion';
COMMENT ON COLUMN tab_planeacion_capacitacion.estado_actividad  IS 'En que estado se encuentra la actividad actividad (0: Pendiente - 1: Ejecutada)';
COMMENT ON COLUMN tab_planeacion_capacitacion.fecha_cumplimiento IS 'En que fecha se cumplió la actividad';
COMMENT ON COLUMN tab_planeacion_capacitacion.archivo_soporte IS 'Nombre y ruta completa del archivo soporte, si lo hay';

--Tabla para almacenar la matriz legal 
CREATE TABLE tab_matriz_legal
(
    id                      SERIAL,
    tipo                    INTEGER,    -- 1=ML SST 2=CODID 
    sector_economico        VARCHAR,
    clasificacion           VARCHAR,
    tema_general            VARCHAR,
    subtema                 VARCHAR,
    año                     INTEGER,
    tipo_num                VARCHAR,
    fecha                   DATE,
    expedida_por            VARCHAR,
    descripcion_norma       VARCHAR,
    articulo                VARCHAR,
    estado                  VARCHAR,
    info                    VARCHAR,
    descripcion_art         VARCHAR,
    PRIMARY KEY (id)
);
COMMENT ON TABLE tab_matriz_legal IS 'Contiene la estructura para almacenar la matriz legal de acuerdo al tipo seleccionado';

--Tabla de control de cambios
CREATE TABLE tab_control_cambios
(
    id                      SERIAL,
    fecha_mod               TIMESTAMP       DEFAULT NOW(),
    norma                   VARCHAR         NOT NULL,
    descripcion             TEXT            NOT NULL,
    responsable_mod         VARCHAR         NOT NULL,
    fecha_publicacion   DATE,
    PRIMARY KEY (id)
);
COMMENT ON TABLE tab_control_cambios IS 'Contiene el historico de los cambios a la tabla de legislacion o normas';

--Tabla de peligros
CREATE TABLE tab_peligros
(
    id                      SERIAL,
    nombre                  VARCHAR       NOT NULL,
    fecha_creacion          TIMESTAMP     DEFAULT NOW(), --Registra la fecha de creacion del registro
    activo                  BOOLEAN       DEFAULT TRUE NOT NULL,  -- Registra el estado de registro ( True: Activo / False: Inactivo)
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_peligros IS 'Contiene los peligros asociados para la accidentalidad FORM 14';

--Tabla de control de accidentalidad
CREATE TABLE tab_accidentalidad
(
    id                      SERIAL,
    fecha                   TIMESTAMP,
    id_empleado             BIGINT          NOT NULL,
    dias_incapacidad        INTEGER         NOT NULL,
    cie10                   VARCHAR         NOT NULL,
    diagnostico             VARCHAR         NOT NULL,
    descripcion_accidente   TEXT            NOT NULL,
    id_peligro_asociado     BIGINT          NOT NULL,
    tipo_accidente          VARCHAR         NOT NULL,
    parte_cuerpo_afectada   VARCHAR         NOT NULL,
    mecanismo_accidente     VARCHAR         NOT NULL,
    agente_accidente        VARCHAR         NOT NULL,
    tipo_lesion             VARCHAR         NOT NULL,
    causa_basica            VARCHAR         NOT NULL,
    causa_inmediata         VARCHAR         NOT NULL,
    medidas_intervencion    VARCHAR,
    cumplimiento            INTEGER,
    fecha_creacion          TIMESTAMP       DEFAULT NOW(), --Registra la fecha de creacion del registro
    activo                  BOOLEAN         DEFAULT TRUE NOT NULL,  -- Registra el estado de registro ( True: Activo / False: Inactivo)
    PRIMARY KEY(id),
    FOREIGN KEY (id_empleado) REFERENCES tab_empleados(id),
    FOREIGN KEY (id_peligro_asociado) REFERENCES tab_peligros(id)
);
COMMENT ON TABLE tab_accidentalidad IS 'Contiene los registros de accidentes FORM 14 Caracterización de la accidentalidad';


--Tabla de control de seguimiento examenes medicos FORM 21
CREATE TABLE tab_seg_examenes_medicos
(
    id                          SERIAL,
    id_empleado                 BIGINT      NOT NULL,
    fecha_examen                TIMESTAMP,
    tipo_examen                 VARCHAR, -- validar si se puede 1=examen ingreso 2=periodico 3=retiro (no hay datos de ejemplo en el formato)
    concepto_aptitud            TEXT,
    aclaraciones_concepto       TEXT,
    sve_visual                  VARCHAR,
    sve_pdme                    VARCHAR,
    sve_auditivo                VARCHAR,
    sve_quimico_respiratorio    VARCHAR,
    sve_osteomuscular           VARCHAR,
    otro                        VARCHAR,
    remision_medica             VARCHAR,
    tipo                        VARCHAR,
    restricciones_laborales     VARCHAR,
    fecha_examen_periodico      TIMESTAMP,
    fecha_creacion              TIMESTAMP     DEFAULT NOW(), --Registra la fecha de creacion del registro
    activo                      BOOLEAN       DEFAULT TRUE NOT NULL,  -- Registra el estado de registro ( True: Activo / False: Inactivo)
    PRIMARY KEY(id),
    FOREIGN KEY (id_empleado) REFERENCES tab_empleados(id)
);
COMMENT ON TABLE tab_seg_examenes_medicos IS 'Contiene los registros de seguimiento exámenes médicos FORM 21';

--Tabla para registrar las incapacidades por empleado ausentismo laboral
CREATE TABLE tab_incapacidades
(
    id                          SERIAL,
    id_empleado              BIGINT      NOT NULL,
    tipo_incapacidad            SMALLINT    NOT NULL CHECK (tipo_incapacidad>0 AND tipo_incapacidad<=2), --limitamos que solo se ingrese 1: Incapacidad generar /2: Accidente trabajo AT
    codigo                      VARCHAR     NOT NULL,
    diagnostico                 VARCHAR     NOT NULL,
    grupo_dx                    VARCHAR     NOT NULL,
    seg_osteomuscular           VARCHAR     NOT NULL,
    origen                      VARCHAR     NOT NULL,
    clasificacion               VARCHAR     NOT NULL,
    fecha_inicio                TIMESTAMP   NOT NULL, --Registra la fecha de inicio de la incapacidad
    fecha_fin                   TIMESTAMP   NOT NULL, --Registra la fecha de fin de la incapacidad
    salario_base                DECIMAL(15,2),  -- Este dato se debe ingresar por el usuario
    salario_dia                 DECIMAL(15,2),  -- Este dato se debe ingresar por el usuario
    total_dias                  SMALLINT,  -- Campo calculado entre las fechas de inicio y de finalizacion de la incapacidad
    eps                         VARCHAR     NOT NULL, --Nombre de la entidad de salud que expide la incapacidad
    nombre_arl                  VARCHAR,
    valor_incapacidad           DECIMAL(15,2) CHECK (valor_incapacidad>=0), -- Valor que se calcula con el valor del salario_dia del empleado con el valor del campo total_dias
    valor_asumido_emp           DECIMAL(15,2) CHECK (valor_asumido_emp>=0), -- Valor asumido por la empresa aplica cuando el total de dias de incapacidad es mayor a 2 dias
    valor_asumido_eps           DECIMAL(15,2) CHECK (valor_asumido_eps>=0), -- Valor asumido por la eps
    fecha_creacion              TIMESTAMP   DEFAULT NOW(), --Registra la fecha de creacion del registro
    PRIMARY KEY(id),
    FOREIGN KEY (id_empleado) REFERENCES tab_empleados(id)
);
COMMENT ON TABLE tab_incapacidades IS 'Contiene los registros para el FORM 15 Ausentismo laboral por incapacidades';
-- no se hacen calculos, solo se registra la informacion de la incapacidad, pagos, valor asumido por las partes etc

----Tabla actividades para FORM 12 Matriz identificacion de peligros
CREATE TABLE tab_actividades_peligros
(
    id                          SERIAL,
    area                        VARCHAR      NOT NULL,      -- PISO 1 -LOCAL 10
    proceso                     VARCHAR      NOT NULL,      -- CORRESPONDENCIA 1. Grupo de correspondencia 2. Puesto de guarda 3. Cuarto eléctrico 4. Cuarto de equípos de cómputo 5. Cafetería
    descripcion                 VARCHAR      NOT NULL,      -- Labores de tipo administrativo que involucran el manejo de video terminales, equipos de oficina, exigencia visual por lectura y revisión de documentos, posición sedente más ...
    es_rutinaria                BOOLEAN      NOT NULL,      -- indica si la actividad es rutinaria o no
    fecha_creacion              TIMESTAMP   DEFAULT NOW(),  --Registra la fecha de creacion del registro
    activo                      BOOLEAN   DEFAULT TRUE NOT NULL, -- estado en el sistema (true 1 - false 0)
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_actividades_peligros IS 'Contiene los registros de las actividades para la matriz de identificacion de peligros FORM 12';


----Tabla peligros para FORM 12 matriz identificacion de peligros 
CREATE TABLE tab_peligros_riesgos
(
    id                          SERIAL,
    id_actividad                BIGINT      NOT NULL,       -- 1
    clasificacion               VARCHAR ,                   -- Biológico: Microorganismos tipo Hongos, Virus, Bacterias, Ricketsias  
    subclasificacion            VARCHAR ,                   -- Trabajo con atención de usuarios y manejo de archivos documentales.
    efectos_posibles            VARCHAR ,                   -- Dermatitis por contacto, alergias tópicas o respiratorias, enfermedades infectocontagiosas.  
    tiempo_exposicion           INTEGER ,                   -- HORAS. ej 8
    -- trabajadores expuestos
    te_directos                 INTEGER ,                   -- ej 10
    te_indirectos               INTEGER ,                   -- ej 12
    -- medidas de control existentes
    fuente                      VARCHAR ,                   -- Mantenimiento a fuentes Lumínicas. Limpieza y revisión a las pantallas de los computadores
    medio                       VARCHAR ,                   -- Fumigaciones a las instalaciones físicas  y  Archivos de gestión, Se dispone de un espacio para el lavado de manos jabón, toallas de manos, durante la jornada laboral.
    trabajador                  VARCHAR ,                   -- El servidor recibe inducción general  de Seguridad y salud en el Trabajo y una inducción por parte de  su jefe o coordinador de área sobre la actividad que  va a desempeñar, se ...
    -- valoracion del riesgo
    nd                          INTEGER ,                   -- 2
    ne                          INTEGER ,                   -- 3
    np                          INTEGER ,                   -- 6
    nivel_probabilidad          VARCHAR ,                   -- MEDIO
    nivel_consecuencia          INTEGER ,                   -- 25
    nivel_riesgo                INTEGER ,                   -- 150
    -- criterios para establecer controles
    interpretacion_nr           VARCHAR ,                   -- II
    aceptabilidad_riesgo        VARCHAR ,                   -- Aceptable con control especifico
    -- medidas de intervencion
    peor_consecuencia           VARCHAR ,                   -- Dermatitis por contacto, alergias tópicas o respiratorias.  
    eliminacion                 VARCHAR ,                   -- Ninguna
    sustitucion                 VARCHAR ,                   -- Ninguna
    control_ingenieria          VARCHAR ,                   -- Ninguna
    controles_admin             VARCHAR ,                   -- Procedimiento de Diagnóstico y gestión de las condiciones de salud de los trabajadores...
    equipo_elementos_pp         VARCHAR ,                   -- Guantes de látex, Tapabocas y gel antibacterial para manipulación de documentos
    fecha_creacion              TIMESTAMP   DEFAULT NOW(),  -- Registra la fecha de creacion del registro
    activo                      BOOLEAN   DEFAULT TRUE NOT NULL, -- estado en el sistema (true 1 - false 0)
    PRIMARY KEY(id),
    FOREIGN KEY (id_actividad ) REFERENCES tab_actividades_peligros(id)
);
COMMENT ON TABLE tab_peligros_riesgos IS 'Contiene los peligros para Matriz identificacion de peligros FORM 12';


----Tabla cronograma presupuesto para FORM 19 recursos sg sst
CREATE TABLE tab_cronograma_presupuesto
(
    id                          SERIAL,
    actividad                   VARCHAR      NOT NULL,              -- Recursos humanos
    observaciones               VARCHAR      NOT NULL,              -- Salario mensual pagado al recurso humano de la compañía (Coordinadora SST, Auxiliar SST)
    responsable                 VARCHAR      NOT NULL,              -- Gerencia SST
    presupuesto                 DECIMAL(15,2)NOT NULL,              -- 36.249.384
    fecha_creacion              TIMESTAMP   DEFAULT NOW(),          -- Registra la fecha de creacion del registro
    activo                      BOOLEAN   DEFAULT TRUE NOT NULL,    -- estado en el sistema (true 1 - false 0)
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_cronograma_presupuesto IS 'Contiene los registros de las actividades del cronograma de ejecucion para FORM 19 Recursos SG SST';

----Tabla ejecucion_presupuesto para FORM 19 sg sst 
CREATE TABLE tab_ejecucion_presupuesto
(
    id                          SERIAL,
    id_actividad                BIGINT      NOT NULL,       -- 2
    fecha                       TIMESTAMP,                  -- 06-01-2021
    factura                     VARCHAR ,                   -- 1371 
    id_proveedor                BIGINT ,                    -- 2 (Extinguir)
    cantidad                    DECIMAL(15,2),              -- 1
    vr_uni_sin_iva              DECIMAL(15,2),              -- 20.000
    vr_iva                      DECIMAL(15,2),              -- 3.800
    vr_total                    DECIMAL(15,2),              -- 23.800
    fecha_creacion              TIMESTAMP   DEFAULT NOW(),          -- Registra la fecha de creacion del registro
    activo                      BOOLEAN   DEFAULT TRUE NOT NULL, -- estado en el sistema (true 1 - false 0)
    PRIMARY KEY(id),
    FOREIGN KEY (id_actividad ) REFERENCES tab_cronograma_presupuesto(id),
    FOREIGN KEY (id_proveedor ) REFERENCES tab_proveedores(id)
);
COMMENT ON TABLE tab_ejecucion_presupuesto IS 'Contiene los registros de ejecucion para FORM 19 Recursos SG SST';

----Tabla indicadores para FORM 20 indicadores SG STT 
CREATE TABLE tab_indicadores
(
    id                          SERIAL,
    tipo_indicador              INTEGER      NOT NULL,              -- 1=estructura 2=proceso 3=resultado
    nombre                      VARCHAR,                
    definicion                  VARCHAR ,               
    metodo_calculo              VARCHAR ,               
    unidad_medida               VARCHAR,                 
    fuente_informacion          VARCHAR,             
    clasificacion               VARCHAR,             
    frecuencia_medición         VARCHAR,             
    meta_anual                  DECIMAL(4,2),        
    interpretacion_resultado    VARCHAR,             
    responsable                 VARCHAR,             
    deben_conocer_resultado     VARCHAR,             
    fecha_creacion              TIMESTAMP   DEFAULT NOW(),          -- Registra la fecha de creacion del registro
    activo                      BOOLEAN   DEFAULT TRUE NOT NULL,    -- estado en el sistema (true 1 - false 0)
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_indicadores IS 'Contiene los registros de indicadores para FORM 20 Indicadores SG SST';

----Tabla puntos a calificar para FORM 23 analisis de vulnerabilidad 
CREATE TABLE tab_puntos_calificar      
(
    id                          SERIAL,
    nombre                      VARCHAR,                
    fecha_creacion              TIMESTAMP   DEFAULT NOW(),          -- Registra la fecha de creacion del registro
    activo                      BOOLEAN   DEFAULT TRUE NOT NULL,    -- estado en el sistema (true 1 - false 0)
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_puntos_calificar IS 'Contiene los registros de los puntos a calificar para FORM 23 analisis de vulnerabilidad';

----Tabla amenazas para FORM 23 analisis de vulnerabilidad 
CREATE TABLE tab_amenazas
(
    id                          SERIAL,
    nombre                      VARCHAR,                
    area_afectada               VARCHAR,                            
    fecha_creacion              TIMESTAMP   DEFAULT NOW(),          -- Registra la fecha de creacion del registro
    activo                      BOOLEAN   DEFAULT TRUE NOT NULL,    -- estado en el sistema (true 1 - false 0)
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_amenazas IS 'Contiene los registros de las amenazas para FORM 23 analisis de vulnerabilidad';

----Tabla causas amenazas para FORM 23 analisis de vulnerabilidad 
CREATE TABLE tab_causas_amenazas
(
    id                          SERIAL,
    id_amenaza                  BIGINT      NOT NULL,              
    es_interno                  BOOLEAN,                            -- indica si el origen es interno true=es interno false= es externo                
    calificacion                VARCHAR,                            -- probable, posible  
    resultado                   VARCHAR,                            -- probable, posible aqui va el rombo  
    fecha_creacion              TIMESTAMP   DEFAULT NOW(),          -- Registra la fecha de creacion del registro
    activo                      BOOLEAN   DEFAULT TRUE NOT NULL,    -- estado en el sistema (true 1 - false 0)
    PRIMARY KEY(id),
    FOREIGN KEY (id_amenaza ) REFERENCES tab_amenazas(id)
);
COMMENT ON TABLE tab_causas_amenazas IS 'Contiene los registros de las causas de amnezas para FORM 23 analisis de vulnerabilidad';

----Tabla vulnerabilidades para FORM 23 analisis de vulnerabilidad 
CREATE TABLE  tab_vulnerabilidad
(
    id                          SERIAL,
    id_amenaza                  BIGINT      NOT NULL,              
    categoria                   VARCHAR     NOT NULL,               -- personas, recurso
    subcategoria                VARCHAR,                            -- materiales             
    id_punto_calificar          BIGINT,                
    valor                       DECIMAL(4,2),                
    fecha_creacion              TIMESTAMP   DEFAULT NOW(),          -- Registra la fecha de creacion del registro
    activo                      BOOLEAN   DEFAULT TRUE NOT NULL,    -- estado en el sistema (true 1 - false 0)
    PRIMARY KEY(id),
    FOREIGN KEY (id_amenaza ) REFERENCES tab_amenazas(id),
    FOREIGN KEY (id_punto_calificar ) REFERENCES tab_puntos_calificar(id)
);
COMMENT ON TABLE tab_vulnerabilidad IS 'Contiene los registros de vulnerabilidades para FORM 23 analisis de vulnerabilidad';

----Tabla peligros para FORM 09 matriz examenes medicos 
CREATE TABLE tab_examenes_medicos
(
    id                          SERIAL,
    id_actividad                BIGINT      NOT NULL,       -- 1
    clasificacion               VARCHAR ,                   -- Biológico: Microorganismos tipo Hongos, Virus, Bacterias, Ricketsias  
    subclasificacion            VARCHAR ,                   -- Trabajo con atención de usuarios y manejo de archivos documentales.
    efectos_posibles            VARCHAR ,                   -- Dermatitis por contacto, alergias tópicas o respiratorias, enfermedades infectocontagiosas.  
    -- controles existentes
    fuente                      VARCHAR ,                   -- Mantenimiento a fuentes Lumínicas. Limpieza y revisión a las pantallas de los computadores
    medio                       VARCHAR ,                   -- Fumigaciones a las instalaciones físicas  y  Archivos de gestión, Se dispone de un espacio para el lavado de manos jabón, toallas de manos, durante la jornada laboral.
    individuo                   VARCHAR ,                   -- El servidor recibe inducción general  de Seguridad y salud en el Trabajo y una inducción por parte de  su jefe o coordinador de área sobre la actividad que  va a desempeñar, se ...
    -- evaluacion del riesgo
    nd                          INTEGER ,                   -- 2
    ne                          INTEGER ,                   -- 3
    np                          INTEGER ,                   -- 6
    nivel_probabilidad          VARCHAR ,                   -- MEDIO
    nivel_consecuencia          INTEGER ,                   -- 25
    nivel_riesgo                INTEGER ,                   -- 150
    aceptabilidad_riesgo        INTEGER ,                   -- 150
    -- criterios para establecer controles
    -- personal expuesto
    planta                      INTEGER ,                   -- ej 10
    mision                      INTEGER ,                   -- ej 12
    contratistas                INTEGER ,                   -- ej 12
    practicantes                INTEGER ,                   -- ej 12
    interpretacion_nr           VARCHAR ,                   -- II
    peor_consecuencia           VARCHAR ,                   -- Dermatitis por contacto, alergias tópicas o respiratorias.  
    exist_requisito_legal       VARCHAR ,                   -- Dermatitis por contacto, alergias tópicas o respiratorias.  
    -- medidas de intervencion
    eliminacion                 VARCHAR ,                   -- Ninguna
    sustitucion                 VARCHAR ,                   -- Ninguna
    control_ingenieria          VARCHAR ,                   -- Ninguna
    controles_admin             VARCHAR ,                   -- Procedimiento de Diagnóstico y gestión de las condiciones de salud de los trabajadores...
    equipo_elementos_pp         VARCHAR ,                   -- Guantes de látex, Tapabocas y gel antibacterial para manipulación de documentos
    fecha_creacion              TIMESTAMP   DEFAULT NOW(),  -- Registra la fecha de creacion del registro
    activo                      BOOLEAN   DEFAULT TRUE NOT NULL, -- estado en el sistema (true 1 - false 0)
    PRIMARY KEY(id),
    FOREIGN KEY (id_actividad ) REFERENCES tab_actividades_peligros(id)
);
COMMENT ON TABLE tab_peligros_riesgos IS 'Contiene los peligros para Matriz examenes medicos FORM 09';

