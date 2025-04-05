## CASO 2
La dirección general de escuelas desea guardar información sobre los eventos que se realizan en
diferentes establecimientos educativos.
Para cada evento se debe poder registrar: un título, uno o más expositores y una temática. La
temática se indica a través de un texto corto de no más de 200 caracteres. Además, cada evento
está orientado a diferente tipo de público, por ejemplo, puede estar orientado a alumnos,
docentes, administrativos o público en general, entre otros.
Por otro lado, para cada establecimiento es importante registrar: nombre del establecimiento,
dirección, teléfono, dirección de correo electrónico y tipo al cual pertenece. Los tipos de
establecimiento pueden ser: educativo nivel inicial, educativo nivel básico, educativo nivel
secundario, educativo nivel terciario, etc.
Es habitual que un mismo evento se lleve a cabo en distintos establecimientos. Para evitar
superposiciones, se lleva un registro donde se indica la fecha y el establecimiento donde se va a
realizar el evento. Luego de dictado el evento y por cuestiones estadísticas, se deja asentada la
cantidad aproximada de público asistente.Indique las sentencias SQL necesarias para:
a) Listar nombre, dirección y número de teléfono de todos los establecimientos ordenados
alfabéticamente por nombre.
b) Listar sin repetición los nombres de los eventos que se realizaron en el 2do. semestre de
2023.
c) Conocer el nombre y la cantidad total de asistentes del evento más visto considerando todas
las exposiciones que se hayan realizado en distintos establecimientos.
d) Listar sin repetición los nombres de los eventos que tienen más de 100 asistentes en
alguna de sus exposiciones.