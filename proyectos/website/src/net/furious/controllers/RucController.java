package net.furious.controllers;

import java.io.IOException;

import net.furious.service.IRucRest;
import net.vetfurious.excepcion.DAOExcepcion;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.vetfurious.negocio.IPublicidad;
import net.vetfurious.util.JsonView;
import net.vetfurious.modelo.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class RucController {

	private IRucRest rucRest;
	
	@RequestMapping(value = "/Ruc", method = RequestMethod.GET)
	public ModelAndView IrMenu(HttpServletRequest request,HttpServletResponse response)throws Exception {

		System.out.println("buscar ruc");
	
		ModelAndView model = new ModelAndView();
		String ruc = request.getParameter("ruc");
		
		String rucResponse = rucRest.buscarRuc(ruc);
		model.addObject(rucResponse);

		return JsonView.Render(model, response);

	}

}
