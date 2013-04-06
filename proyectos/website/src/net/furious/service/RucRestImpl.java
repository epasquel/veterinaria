package net.furious.service;

import java.net.URI;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;

import org.springframework.stereotype.Service;

import net.vetfurious.util.JsonView;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.api.representation.Form;

@Service  
public class RucRestImpl implements IRucRest {

	@Override
	public String buscarRuc(String ruc) {
		ClientConfig config = new DefaultClientConfig();
		Client client = Client.create(config);
		WebResource service = client.resource(getBaseURI());
		
		return service.path("rest").path("todos")
				.accept(MediaType.APPLICATION_JSON).get(String.class);
	}

	private static URI getBaseURI() {
		return UriBuilder.fromUri(
				"http://localhost:8080/de.vogella.jersey.todo").build();
	}
}
