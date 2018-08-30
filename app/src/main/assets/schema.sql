
CREATE TABLE [usuarios](
    [id] INTEGER PRIMARY KEY,
    [user] TEXT NOT NULL,
    [name] TEXT NOT NULL,
    [email] INTEGER NOT NULL,
    [age] INTEGER NOT NULL,
    CHECK(age > 0));

    CREATE TABLE [categorias](
    [id] INTEGER PRIMARY KEY,
    [categories] TEXT NOT NULL );

    CREATE TABLE [curso](
    [id] INTEGER PRIMARY KEY,
    [name_course] TEXT NOT NULL );

    CREATE TABLE [preguntas](
    [id] INTEGER PRIMARY KEY,
    [curso_id]    INTEGER NOT NULL REFERENCES curso([id]),
    [category_id] INTEGER NOT NULL REFERENCES categorias([id]),
    [descripcion] TEXT NOT NULL,
    [imagen]       INTEGER NOT NULL);

      CREATE TABLE [respuestas](
    [id] INTEGER PRIMARY KEY,
    [pregunta_id] INTEGER NOT NULL REFERENCES preguntas([id]),
    [respuesta]   INTEGER NOT NULL,
    [imagen]      INTEGER NOT NULL );

       CREATE TABLE [opciones](
    [id] INTEGER PRIMARY KEY,
    [pregunta_id]    INTEGER NOT NULL REFERENCES preguntas([id]),
    [opcion_a] TEXT NOT NULL,
    [imagen_a_id] TEXT NOT NULL,
    [opcion_b] TEXT NOT NULL,
    [imagen_b_id] TEXT NOT NULL,
    [opcion_c] TEXT NOT NULL,
    [imagen_c_id] TEXT NOT NULL,
    [opcion_d] TEXT NOT NULL,
    [imagen_d_id] TEXT NOT NULL);


      CREATE TABLE [solucion](
    [id] INTEGER PRIMARY KEY,
    [pregunta_id] INTEGER NOT NULL REFERENCES preguntas([id]),
    [descripcion] TEXT NOT NULL,
    [imagen]   text NOT NULL);
