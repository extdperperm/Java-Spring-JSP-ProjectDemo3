package es.dsw.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/* Controladora para mapeos de ADMIN
 * 
 * Esta controladira se ha creado para que se compruebe, que tal como se indico en la clase de configuración SecurityAppConfig, solo los
 * usuarios con rol administrador tienen acceso. (Ver SecurityAppConfig.java).
 * */
@Controller
@RequestMapping("/admin/")
public class AdminController {
	
	@GetMapping(value = {"/ejemplo3"})
	public String ejem3() {
		
		return "ejemplo3";
	}

}
