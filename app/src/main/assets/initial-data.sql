

INSERT INTO usuarios (id, user, name, email, age) VALUES (1, 'Balerion', 'Armin', 'aguilar@gmail.com', 22);



INSERT INTO categorias (id, categories) VALUES (1, 'Pensamiento Matematico');
INSERT INTO categorias (id, categories) VALUES (2, 'Pensamiento analitico');
INSERT INTO categorias (id, categories) VALUES (3, 'Estructura de la lengua');
INSERT INTO categorias (id, categories) VALUES (4, 'Compresión lectora');
INSERT INTO categorias (id, categories) VALUES (5, 'Inglés');


INSERT INTO curso (id, name_course) VALUES (1, 'Exani I');
INSERT INTO curso (id, name_course) VALUES (2, 'Exani II');
INSERT INTO curso (id, name_course) VALUES (3, 'Inglés');
INSERT INTO curso (id, name_course) VALUES (4, 'Diagnostico 1');
INSERT INTO curso (id, name_course) VALUES (5, 'Diagnostico 2');

INSERT INTO preguntas (id, curso_id, category_id, descripcion, imagen)
VALUES (1, 2, 1, 'Para ir de Ibarra a Quito hay que recorrer 135km. Si lleva una velocidad de 54km/h. ¿Cuántas horas deberá manejar para recorrer esa distancia?', 0 );

INSERT INTO preguntas (id, curso_id, category_id, descripcion, imagen)
VALUES (2, 2, 1, 'Un padre de familia reparte $400 entre sus 4 hijos de la siguiente manera: al mayor le da $120, al segundo $115, al tercero $105. ¿Cuánto recibirá el menor de todos?', 0 );

INSERT INTO preguntas (id, curso_id, category_id, descripcion, imagen)
VALUES (3, 2, 1, 'Se compran 1500 huevos por $120. Si se rompen 15 huevos y se venden a $2.70 la cubeta (30 huevos). ¿Cuánto gana? ', 0 );

INSERT INTO preguntas (id, curso_id, category_id, descripcion, imagen)
VALUES (4, 2, 3, 'Antonimo de bueno: ', 0 );

INSERT INTO preguntas (id, curso_id, category_id, descripcion, imagen)
VALUES (5, 2, 3, 'Sinonimo de ebrio ', 0 );


INSERT INTO respuestas (pregunta_id, respuesta, imagen) VALUES (1, 2, 0);
INSERT INTO respuestas (pregunta_id, respuesta, imagen) VALUES (2, 1, 0);
INSERT INTO respuestas (pregunta_id, respuesta, imagen) VALUES (3, 3, 0);
INSERT INTO respuestas (pregunta_id, respuesta, imagen) VALUES (4, 4, 0);
INSERT INTO respuestas (pregunta_id, respuesta, imagen) VALUES (5, 1, 0);

INSERT INTO opciones (pregunta_id, opcion_a, imagen_a_id, opcion_b, imagen_b_id,opcion_c, imagen_c_id,opcion_d, imagen_d_id )
 VALUES (1, '3', '','2.5', '', '2', '', '1.5','' );

 INSERT INTO opciones (pregunta_id, opcion_a, imagen_a_id, opcion_b, imagen_b_id,opcion_c, imagen_c_id,opcion_d, imagen_d_id )
 VALUES (2, '60', '','55', '', '70', '', '75','' );

 INSERT INTO opciones (pregunta_id, opcion_a, imagen_a_id, opcion_b, imagen_b_id,opcion_c, imagen_c_id,opcion_d, imagen_d_id )
 VALUES (3, '$12.65', '','$13.0', '', '$13.65', '', '$12.65','' );

  INSERT INTO opciones (pregunta_id, opcion_a, imagen_a_id, opcion_b, imagen_b_id,opcion_c, imagen_c_id,opcion_d, imagen_d_id )
 VALUES (4, 'Generoso', '','Piadoso', '', 'bondadoso', '', 'Malo','' );

   INSERT INTO opciones (pregunta_id, opcion_a, imagen_a_id, opcion_b, imagen_b_id,opcion_c, imagen_c_id,opcion_d, imagen_d_id )
 VALUES (5, 'beodo', '','curado', '', 'sobrio', '', 'rip','' );

 INSERT INTO solucion (pregunta_id, descripcion, imagen)
  VALUES (1,'No hay descripción', 'exani2_solucion_S1_E1');

  INSERT INTO solucion (pregunta_id, descripcion, imagen)
 VALUES (2,'No hay descripción', 'exani2_solucion_S1_E2');

  INSERT INTO solucion (pregunta_id, descripcion, imagen)
 VALUES (3,'No hay descripción', 'exani2_solucion_S1_E3');

   INSERT INTO solucion (pregunta_id, descripcion, imagen)
 VALUES (4,'Antonimo es lo opuesto', '');

   INSERT INTO solucion (pregunta_id, descripcion, imagen)
 VALUES (5,'Sinonimos es lo mismo', '');
