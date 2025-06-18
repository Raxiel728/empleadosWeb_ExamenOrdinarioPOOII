Este proyecto se desarrolló utilizando IntelliJ IDEA como entorno principal y Apache Tomcat como servidor para ejecutar la aplicación web. Trabajamos con Java 17 y JSP, organizando el proyecto con base en el modelo MVC para separar la lógica, los datos y la vista.

La base de datos utilizada fue MySQL, y se conectó desde Java mediante JDBC. La configuración de acceso se hizo de forma manual, editando el archivo DBConnection.java con nuestro usuario, contraseña y puerto de conexión local.



📌 Requisitos previos
Asegúrate de tener lo siguiente instalado:

Java JDK 17 o superior

Apache Tomcat 10.x

MySQL Server 8.0


📁 Base de datos requerida
La aplicación utiliza una base de datos llamada employees, que debes restaurar en tu servidor MySQL.

📥 La base de datos puede ser encontrada en la sección de Archivos del grupo de MS Teams del curso.
Incluye los siguientes archivos:

employees.sql

load_employees.dump

load_departments.dump

load_dept_emp.dump

load_dept_manager.dump

load_titles.dump

load_salaries1.dump

load_salaries2.dump

load_salaries3.dump

🔧 Paso 1 – Restaurar la base de datos
Abre una terminal (CMD o PowerShell)

Ejecuta este comando para crear y cargar la base principal:

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p < "C:\ruta\a\employees.sql"
Luego ejecuta los archivos .dump en el orden indicado:

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p employees < "load_employees.dump"

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p employees < "load_departments.dump"

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p employees < "load_dept_emp.dump"

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p employees < "load_dept_manager.dump"

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p employees < "load_titles.dump"

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p employees < "load_salaries1.dump"

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p employees < "load_salaries2.dump"

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p employees < "load_salaries3.dump"

⚙️ Paso 2 – Configurar la conexión a MySQL
Abre el archivo:
src/main/java/com/example/empleadosweb/DBConnection.java
Cambia el usuario y contraseña según tu configuración:

String url = "jdbc:mysql://localhost:3306/employees";

String user = "root"; // tu usuario de MySQL

String password = "tu_contraseña";

🚀 Paso 3 – Ejecutar el proyecto en IntelliJ
Abre IntelliJ y selecciona Open > empleadosWeb

Configura Java SDK 17 y agrega Tomcat Server (10.x)

Ve a Run > Edit Configurations

Agrega Tomcat Server > Local

En "Deployment", selecciona empleadosWeb:war exploded

Haz clic en ▶️ Run

🌐 Paso 4 – Usar la aplicación
Abre en tu navegador:

http://localhost:8080/


📸 Nota adicional:  

Para que el logo institucional se visualice correctamente en la página de inicio, asegúrate de que la imagen **"Logo_de_la_Universidad_Veracruzana.png"** esté ubicada en la carpeta:  
`webapp/img/`
