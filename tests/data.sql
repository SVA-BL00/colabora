INSERT INTO entidad (nombre) VALUES ('entidad1');
INSERT INTO legislatura (nombre, entidad_id) VALUES ('legislatura1', 1);
INSERT INTO estado (estado) VALUES ('estado1');

INSERT INTO areas (nombre)
VALUES ('area1');

INSERT INTO areas (nombre)
VALUES ('area2');

INSERT INTO usuarios (usuario, rol, contrasena, legislatura_id)
VALUES ('usuario1', 'escritor', 'contrasena1:hashed', 1);

INSERT INTO usuarios (usuario, rol, contrasena, legislatura_id)
VALUES ('usuario2', 'editor', 'contrasena2:hashed', 1);

INSERT INTO usuarios (usuario, rol, contrasena, legislatura_id)
VALUES ('usuario3', 'admin', 'contrasena3:hashed', 1);

INSERT INTO usuarios (usuario, rol, contrasena, legislatura_id)
VALUES ('usuario4', 'escritor', 'contrasena4:hashed', 1);

INSERT INTO iniciativas (legislatura_id, numero,
cambios, documento, tema, resumen, comentario)
VALUES
((SELECT legislatura_id FROM legislatura WHERE nombre='legislatura1'),
 1, 'Cambios 1', 'documento1', 'tema1', 'resumen1', 'comentario1'
);

INSERT INTO iniciativas (legislatura_id, numero,
cambios, documento, tema, resumen, comentario)
VALUES
((SELECT legislatura_id FROM legislatura WHERE nombre='legislatura1'),
 3, 'Cambios 3', 'documento3', 'tema3', 'resumen3', 'comentario3'
);

INSERT INTO clasificacion (legislatura_id, numero, area_id) VALUES
((SELECT legislatura_id FROM legislatura WHERE nombre='legislatura1'),
 3,
 (SELECT area_id FROM areas WHERE nombre='area1')
);

INSERT INTO clasificacion (legislatura_id, numero, area_id) VALUES
((SELECT legislatura_id FROM legislatura WHERE nombre='legislatura1'),
 3,
 (SELECT area_id FROM areas WHERE nombre='area2')
);

INSERT INTO clasificacion (legislatura_id, numero, area_id) VALUES
((SELECT legislatura_id FROM legislatura WHERE nombre='legislatura1'),
 1,
 (SELECT area_id FROM areas WHERE nombre='area1')
);

INSERT INTO asignacion (legislatura_id, numero, usuario_id) VALUES
((SELECT legislatura_id FROM legislatura WHERE nombre='legislatura1'),
 1,
 (SELECT usuario_id FROM usuarios WHERE usuario='usuario1')
);