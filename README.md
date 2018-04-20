# BD-Access-Community_Of_Owners
***Base datos Access para Gestionar una Comunidad de propietarios***

<pre>

Project .....: BD-Access-Community_Of_Owners
Summary .....: Base datos Access para Gestionar una Comunidad de propietarios
Created .....: 07/06/2016
Updated .....: 18/04/2018
Author ......: Juan Alcocer - juanalcocer95@gmail.com
Remote ......: https://github.com/juanalcocer95/BD-Access-Community_Of_Owners

</pre>

### Descripción de la actividad
***
Mi proyecto pretende informatizar mediante un sistema de base de datos la gestión de los propietarios y la caja de una comunidad de propietarios.

- Llevar un control de los propietarios, los ingresos que realizan y la demora de las derramas.
- Los ingresos por pago de la cuota de comunidad serán semestrales (se considerara que se ha producido un retraso en su pago si no se paga en su semestre), el primero de enero hasta final de  junio y el segundo de julio hasta final de diciembre. También podrán producirse derramas extras para costear algún imprevisto.
- Llevar un control de los gastos por los servicios contratados.
- Los gastos puede ser por diversos tipos de servicio (luz escalera, seguro de la finca, gastos cuenta corriente, reforma o reparación del edificio,etc...) y ser facturados varios al mes, cada mes, bimestralmente,...,o anualmente.

### Objetivos
***
- Ver los datos de los propietarios(DNI, Nombre, Teléfono, Correo electrónico), modificar los datos de los propietarios, así como registrar el año de entrada en la comunidad y el año de salida si se hubiera producido.
- Controlar los ingresos, ya sean las cuotas semestrales cuyo importe se decidirá una vez al año o las derramas extraordinarias que se realicen para subsanar algún gasto imprevisto.
- Controlar los gastos facturados, el importe de los mismos, la empresa acreedora, y el servicio facturado.
- Hacer informes mensuales de los gastos.
- Hacer informes anuales de los gastos.
- Hacer informes anuales de los ingresos.
- Hacer un informe de el estado de la caja actual.

### Detalle de los datos que se quieren manejar
***
**Propietarios:** nombre, DNI, teléfono, correo electrónico.

**Puertas:** Nº puerta, planta, tamaño.

**Pagos:** fecha, concepto, importe.

**Proveedores:** CIF, nombre empresa, teléfono contacto, servicio ofrecido.

**Cuotas:** año, periodo, importe, fecha inicio pago, fecha fin pago.

**Derramas:** fecha, importe, Concepto. 

![Diagrama](/DiagramaEntidadRelación.jpg)

### Descripción de todos los hitos de información asociados.
***
**1.** Pago de la cuota por uno de los propietarios.

**2.** Pago de una derrama por uno de los propietarios.

**3.** Cobro de una factura por alguna de las empresas que nos realizan algún servicio(luz escalera, seguro de la finca, gastos cuenta corriente, reforma o reparación del edificio,etc…)

**4.** finaliza el mes y se quiere conocer información de:
- Gasto de la escalera de este mes.
- Saldo de la cuenta de la comunidad.

**5.** finaliza el semestre y se quiere conocer información de:
- Propietarios que no han pagado la cuota.
- Saldo de la cuenta de la comunidad.

**6.** finaliza el año y se quiere conocer información de:
- propietarios que no han pagado alguna de las cuotas.
- Media de gasto por mes de la escalera.
- Total de gasto de la escalera este año.
- Saldo de la cuenta de la comunidad.
