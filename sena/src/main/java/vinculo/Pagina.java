package vinculo;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Pagina extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion=req.getParameter("accion");
        switch(accion){
            case "ht":
            req.getRequestDispatcher("HT.jsp").forward(req, resp);
            break;  
            case "registro":
            req.getRequestDispatcher("Registro.jsp").forward(req, resp);
            break;
            case "index":
            req.getRequestDispatcher("index.jsp").forward(req, resp);
            break;
            case "MEf":
            req.getRequestDispatcher("MEf.jsp").forward(req, resp);
            break;
    }
    }
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String username = request.getParameter("nombre");
    String password = request.getParameter("password");
    
    // Comprobación de inicio de sesión quemado
    if (username.equals("Kevin_Gomez") && password.equals("12345678")) {
        // Inicio de sesión exitoso
        response.sendRedirect("MEf.jsp"); 
    } else {
        // Inicio de sesión fallido
        response.sendRedirect("index.jsp"); 
    }
    
}
}