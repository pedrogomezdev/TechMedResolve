# TECHMED RESOLVE 🚀.

Bienvenido al repositorio de TECHMED RESOLVE, aplicación para el proyecto final de ciclo formativo de grado superior en Desarrollo de Aplicaciones Multiplataforma.

## Descripción 📖

TECHMED RESOLVE es una aplicación que sirve para automatizar todo lo posible el proceso de creación, asignación y resolución de partes de reparación en un hospital ante las incidencias o averías ocasionadas en las diferentes máquinas de electromedicina.

Está compuesta de 3 “sub-aplicaciones”: 

**1.	Aplicación para los empleados del hospital**: 
      - Será accesible por los empleados del hospital y les permitirá abrir incidencias de forma rápida y sencilla, pudiendo, además, fotografiar la máquina “en vivo” y adjuntarla en la apertura. Además, podrán ver el estado de los mismos en todo momento. En cualquier caso, tanto cuando abre la incidencia como cuando finaliza, será avisado via email de forma automática.

**2.	Aplicación para los técnicos**: 
      - Será accesible por los técnicos de electromedicina, que tendrán un grid de tareas en el que podrán ver su asignación, y en las que les llegará toda la información de la incidencia generada por los empleados. Aquí es donde ellos mismos podrán cambiar el estado de las incidencias a “en curso”, “finalizado” (o a los diferentes estados que pueda presentar) y comenzar las reparaciones. Una vez finalizadas, podrán rellenar el parte creado de forma automática. También podrán consultar el estado de los partes (abiertos o finalizados) en todo momento.

**3.	Aplicación para los supervisores**: 
      - Desde esta aplicación, los supervisores podrán gestionar toda la información de los técnicos, las máquinas, etc. (tendrán un CRUD para cada una de ellas) así como ver una serie de informes que les permitirán sacar estudios y conclusiones. Esta aplicación además enviará un correo electrónico de forma automática cada viernes con un informe semanal indicando el estado de los equipos.

Además de lo anterior, se han desarrollado una serie de automatismos que permiten el envío de informes vía email cuando ocurren determinados eventos. También se ha incorporado un sistema de mensajería que permite la comunicación entre los diferentes equipos y que está disponible en las tres aplicaciones. 

## Explicación del repositorio 📋

Este repositorio contiene los componentes esenciales del proyecto, organizados en los siguientes directorios:

- **Base de datos:** Contiene scripts de la base de datos y el Diagrama de Entidad-Relación (DER) para una comprensión clara de la estructura de datos.

- **Código:** Incluye el código de las Expression Rules y las interfaces de la aplicación. Dado que el proyecto se desarrolló en una versión de aprendizaje de Appian que no permite la exportación completa, aquí encontrarás los elementos esenciales para entender la lógica de la aplicación.

Asimismo, podrás encontrar un **manual-de-usuario** en formato PDF para obtener orientación sobre cómo utilizar TECHMED RESOLVE.

