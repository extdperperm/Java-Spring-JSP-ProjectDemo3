<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 3</title>
<!-- En las vistas .jsp, se puede usar la siguiente directiva para construir las rutas a los recursos est�ticos:
		 ${pageContext.request.contextPath} 
     
     En este proyecto se ha optado por indicarlas de forma est�tica, pero si cambia en las controladoras la ubicaci�n l�gica y relativas mapeadas, podr�an producirse
     errores de acceso a los recursos (.js, .css) si no se actualizan manualmente.
-->
<link rel="stylesheet" href="./styles/index.css">

</head>
<body> 
    <div class="cabecera">
        <div class="cab1"></div>
        <div class="cap2"></div>
    </div>
    <div class="cuerpo">
        <div class="panel1">
            <div class="nota"><div class="notacab1"><p>Proyecto</p></div>
                              <div class="notabody"><p style="text-align: center;"><span>#Spring Proyect Demo 3</span></p>
                            </div>
            </div> 
            <div class="nota"><div class="notacab1"><p>Objetivos</p></div>
                              <div class="notabody"><p class="objetivos">- <b>S</b>pring Security: Configuraci�n.</p>
                                                    <p class="objetivos">- <b>S</b>pring Security: Visibilidad de los recursos.</p>
                                                    <p class="objetivos">- <b>S</b>pring Security: login y autologin.</p>
                              						<p class="objetivos">- <b>S</b>pring Security: logout.</p>
                              						<p class="objetivos">- <b>S</b>pring Security: Usuarios y roles.</p>
                              						<p class="objetivos">- <b>S</b>pring Security: Explotaci�n de la informaci�n de autenticaci�n y autentificaci�n.</p>
                              						<p class="objetivos">- <b>S</b>pring Security: Eventos de login success y login failures.</p>
                              </div>        
                            
            </div>
            <div class="nota"><div class="notacab2"><p>Entorno de Desarrollo</p></div>
                              <div class="notabody"><p><span>Ide:</span> Eclipse, versi�n: 2022-03 (4.23.0)</p>
                                                    <p><span>Servidor:</span> Apache Tomcat, versi�n: 9</p>
                                                    <p><span>Jdk:</span> OpenJdk, versi�n: 17.1</p>
                            </div>
            </div>
            <div class="nota"><div class="notacab2"><p>Estandar de Desarrollo</p></div>
                              <div class="notabody"><p><span>Gestor de proyecto:</span> Maven, versi�n: 3.8.0</p>
                                                    <p><span>Id Artefacto maven:</span> maven-archetype-webapp, versi�n: 1.4</p>
                                                    <p><span>Faceta:</span> Dynamic Web Module, versi�n: 4.0</p>
                            </div>
            </div> 
            <div class="nota"><div class="notacab2"><p>Dependencias</p></div>
                              <div class="notabody"><p><span>Spring Framework:</span> Spring, versi�n 5.3.22. M�dulos: Spring Web MVC</p>
                                                    <p><span>Javax servlet:</span> versi�n: 4.0.1</p>
                                                    <p><span>jstl:</span> versi�n: 1.2</p>
                                                    <p><span>spring security web:</span> versi�n: 5.7.3</p>
                                                    <p><span>spring security config:</span> versi�n: 5.7.3</p>
                                                    <p><span>spring security taglibs:</span> versi�n: 5.7.3</p>
                            </div>
            </div>    
            <div class="nota"><div class="notacab2"><p>Documentaci�n y Sitios de Inter�s</p></div>
                              <div class="notabody"><p><a href="https://mvnrepository.com/" target="_blank">Ir a</a> Maven Repository</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/" target="_blank">Leer</a> Documentaci�n de Spring</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/web.html#mvc-view" target="_blank">Leer</a> Documentaci�n sobre Spring Views I</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/3.2.x/spring-framework-reference/html/view.html" target="_blank">Leer</a> Documentaci�n sobre Spring Views II</p>
                                                    <p><a href="https://www.javatpoint.com/spring-mvc-form-tag-library" target="_blank">Leer</a> Documentaci�n Spring Mvc Tags</p>
                                                    <p><a href="https://docs.spring.io/spring-security/reference/index.html" target="_blank">Leer</a> Documentaci�n Spring Security</p>
                                                    <p><a href="https://spring.io/blog/2022/02/21/spring-security-without-the-websecurityconfigureradapter" target="_blank">Leer</a> Informaci�n m�todos deprecate de Spring Security 2022</p>
                                                    <p><a href="http://www.jtech.ua.es/j2ee/restringido/cw/sesion08-apuntes.html" target="_blank">Leer</a> Informaci�n sobre otras estructuras de control de JSTL. (ej: c:if)</p>
                            </div>
            </div>         
        </div>
        <div class="panel2">
            <div class="item"><p><span>Ejemplo 1 - Security Spring - Logout:</span> En este ejemplo, al hacer click en <b>Salir</b>, se invoca al logout de Spring Security y cuya configuraci�n se encuentra descrita en el m�todo filterChain de la clase SecurityAppConfig.java, permitiendo anular la autenticaci�n del usuario y adem�s reinicia las variables de sesi�n que pudieran existir. Esto desata el evento end session que tiene a disposici�n con ejemplos de como capturarlo en el Spring Proyect Demo 4. Observe como la aplicaci�n devuelve al cliente a la vista de loggin informando por par�metro GET de que se trata de un logout desatado por el usuario.<p>
	            <form:form action="./logout" method="POST">
					<center><input type="submit" value="Salir"/></center>
				</form:form>		
            </div>
            <div class="item"><p><span>Ejemplo 2 -Security Spring - Security Tag Libs:</span> En este ejemplo, si examinas el c�digo del mismo en esta vista, dispones de una muestra de como haciendo uso de una librer�a de JSTL, puedes obtener informaci�n del usuario autenticado o autentificado. Para poder hacer uso de las Security Tag Libs, debes a�adir al POM.XML la dependencia spring-security-taglibs y a�adir en la cabecera de la vista la uri http://www.springframework.org/security/tags. En este ejemplo, la informaci�n del usuario autenticado y autentificado es:<p>
            	<b>Usuario:</b> <security:authentication property="principal.username"/><br/>
            	<b>Roles:</b> <security:authentication property="principal.authorities"/>
            </div>
            <div class="item"><p><span>Ejemplo 3 -Security Spring - Filtro control de acceso por roles:</span> Este ejemplo, solo puede ser ejecutado si el usuario est� autentificado con el rol de administrador, de lo contrario devolver� un error de tipo forbidden. Esta configuraci�n est� implementada en el m�todo filterChain de la clase SecurityAppConfig.java. Esta capacidad de spring security nos permite reservar areas de la aplicaci�n a determinados roles, algo muy com�n en cualquier aplicaci�n. <a href="./admin/ejemplo3">Ver Ejemplo</a><p>
            </div>
            <div class="item"><p><span>Ejemplo 4 -Security Spring - Datos de autentificaci�n desde c�digo java:</span> Este ejemplo, pretende conseguir lo mismo que se hace en el ejemplo 2, pero a diferencia de este �ltimo, se obtiene la informaci�n desde c�digo java haciendo uso de un objeto de tipo Authentication, es decir, desde la controladora. Esto puede ser muy �til para implementar l�gica relacionada con los permisos antes de delegar a la vista. <a href="./ejemplo4">Ver Ejemplo</a><p>
            </div>
            <div class="item"><p><span>Ejemplo 5 -Security Spring - Autologin:</span> Este ejemplo, fuerza desde la controladora un autologin haciendo uso del m�todo login que implementa la interfaz HttpServletRequest. Esto puede ser interesante en procesos de registros de usuario tal que al finalizar exitosamente dicho proceso, se evita que el usuario deba logearse. Tambi�n puede ser �til al combinarlo con el uso de cookies que dispongan de tokens que representen identificadores de usuario para autologearlo cuando accedan al sitio (Ej: muchas redes sociales evitan la autenticaci�n cada vez que se accede por un periodo de tiepo de vigencia que determina sus cookies). <a href="./ejemplo5">Ver Ejemplo</a><p>
            </div>
        </div>
    </div>
    <div class="pie"><p><span>�</span> 2022 - Daniel P�rez P�rez</p></div>

</body>
</html>