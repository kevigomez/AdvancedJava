package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Conexion;
import model.UsuarioDao;
import model.UsuarioVo;

public class Usuario extends HttpServlet {
    private UsuarioDao regisu;
    private UsuarioVo regisiV;

    @Override
    public void init() throws ServletException {
        Connection con = Conexion.getConnection();
        regisu = new UsuarioDao(con);
        super.init();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion = req.getParameter("accion");

        switch (accion) {
            case "registrar":
                String nombre = req.getParameter("nombre");
                String correo = req.getParameter("email");
                String contraseña = req.getParameter("password");
                String fecha = req.getParameter("date");
                regisiV = new UsuarioVo(nombre, correo, contraseña, fecha);
                try {
                    regisu.RegistrarUs(regisiV);
                    req.setAttribute("nombre", nombre);
                    req.getRequestDispatcher("MEf.jsp").forward(req, resp);

                } catch (Exception e) {
                    e.printStackTrace();
                    resp.sendRedirect("error.jsp");
                }

                break;
            case "actualizar":
                String idUpd = req.getParameter("id1");
                String nombreUpd = req.getParameter("nombre1");
                String correoUpd = req.getParameter("correo1");
                String contraseñaUpd = req.getParameter("contra1");
                 String fechaUpd = req.getParameter("fecha1");

                if (idUpd != null && nombreUpd != null && correoUpd != null && contraseñaUpd != null && fechaUpd != null) {
                    int idUpd1 = Integer.parseInt(idUpd);
                    UsuarioVo usuarioUpd = new UsuarioVo(idUpd1, nombreUpd, correoUpd, contraseñaUpd, fechaUpd);
                    try {
                        regisu.Actualizar(usuarioUpd);
                        req.getRequestDispatcher("actSuccessful.jsp").forward(req, resp);
                    } catch (NumberFormatException e) {
                        resp.sendRedirect("errorID.jsp");
                    } catch (SQLException e) {
                        e.printStackTrace();
                        req.setAttribute("error", e.getMessage());
                        resp.sendRedirect("error.jsp");
                    }
                } else {
                    resp.sendRedirect("errorFields.jsp");
                }
                break;
            default:
                break;
        }

        super.doPost(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion = req.getParameter("accion");

        switch (accion) {
            case "consultar":
                try {
                    List<UsuarioVo> usuarioCon = regisu.consultarUs();
                    req.setAttribute("usuarioCon", usuarioCon);
                    req.getRequestDispatcher("mostrar.jsp").forward(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                    resp.sendRedirect("error.jsp");
                }

                break;
            case "editar":
            String userid = req.getParameter("id");
            try {
                UsuarioVo usuario = regisu.accesoUserId(userid);
                req.setAttribute("usuario", usuario);
                req.getRequestDispatcher("editar.jsp").forward(req, resp);
                
            } catch (Exception e) {
               e.printStackTrace();
            resp.sendRedirect("error.jsp");
            }

            default:
            resp.sendRedirect("error.jsp");
                break;
        }
    }
}
