## CASO 3
Un hipermercado desea llevar un registro del almacenamiento de sus productos en distintos
depósitos utilizando una base de datos. Para cada depósito se conoce su nombre, ubicación y la
distancia a la que se encuentra del lugar de venta donde está situado el hipermercado. Los
productos se almacenan en los depósitos en lotes. Dentro de un mismo lote todos los productos
son iguales. Para cada lote se conoce: el producto que contiene, la cantidad de dicho producto,
la fecha en que fue recibido y la fecha de vencimiento en caso de que el producto sea
perecedero.
Indique las sentencias SQL necesarias para
a) Listar los productos que en su nombre contengan la palabra ‘CAFE’. Para cada producto se
deberá mostrar: nombre y unidad de medida (ej: ‘kilo’, ‘paquete’).
b) Listar los productos vencidos. Para cada producto se debe indicar: nombre, unidad de
medida, cantidad y fecha de vencimiento.
c) Mostrar el nombre, la ubicación y la distancia al depósito más cercano donde haya al menos
2 lotes de ‘TOMATES EN LATA’.
d) Listar los nombres de los productos que sumando las cantidades de todos los lotes de todos
los depósitos no alcanza para cumplir con el stock mínimo.