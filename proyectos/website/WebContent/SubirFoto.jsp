<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*"
    import="net.vetfurious.dao.*"
    import="org.apache.commons.fileupload.*"
    import="org.apache.commons.fileupload.servlet.*"
    import="org.apache.commons.fileupload.disk.*"
    import="java.io.*" %>
<%


File destino = new File(request.getContextPath()+"\\Fotos\\");
System.out.println(destino);
ServletRequestContext src = new ServletRequestContext(request);
if(ServletFileUpload.isMultipartContent(src)){
	DiskFileItemFactory factory = new DiskFileItemFactory((1024*1024),destino);
	ServletFileUpload upload = new  ServletFileUpload(factory);

	java.util.List lista = upload.parseRequest(src);
	File file = null;
	java.util.Iterator it = lista.iterator();

	String Codigo="";
	
	while(it.hasNext()){
		FileItem item=(FileItem)it.next();
		if(item.getFieldName().equals("hiddencodigo")) {
			Codigo=item.getString(); //recoges el valor del campo que insertaste en la jsp
		}
		if(item.isFormField()){
			//En caso sea un objeto diferente a File
			//out.println(item.getFieldName()+"<br>");
		}
		else
		{
			file=new File(item.getName());
			item.write(new File(destino,"'" + file.getName()));
			ClienteDAO objClienteDAO=new ClienteDAO();
			objClienteDAO.UpdateFoto(Codigo,file.getName());
			//out.println("Fichero subido");
			%><Br><table border="2"><tr><td><b>Usted ha subido satisfactoriamente el archivo de nombre:</b>
			<% out.print("codigo " + Codigo); %></td></tr></table> <% 
		} 
	} 
} // end if
%>
