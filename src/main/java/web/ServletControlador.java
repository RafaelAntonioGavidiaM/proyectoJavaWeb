package web;

import datos.VueloDao;
import dominio.Vuelo;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String accion = request.getParameter("accion");
        if (accion != null) {

            switch (accion) {

                case "editar":
                    this.editarVuelo(request, response);
                    break;
                case "eliminar":
                    this.eliminarVuelo(request, response);
                    break;
                case "login":
                    this.ingresarCrud(request, response);
                    break;
                case "salir":
                    this.salirSesion(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Vuelo> vuelos = new VueloDao().ListarVuelos();
        System.out.println("vuelos=" + vuelos);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("vuelos", vuelos);
        sesion.setAttribute("totalVuelos", vuelos.size());
        sesion.setAttribute("saldoTotalVuelos", this.calcularSaldoTotal(vuelos));
        sesion.setAttribute("totalPasajeros", this.calcularPasajeroTotal(vuelos));
        response.sendRedirect("vuelos.jsp");
    }

    private double calcularSaldoTotal(List<Vuelo> vuelos) {
        double saldoTotal = 0;
        for (Vuelo vuelo : vuelos) {
            saldoTotal += vuelo.getValorVuelo();
        }
        return saldoTotal;
    }

    private int calcularPasajeroTotal(List<Vuelo> vuelos) {
        int totalPasajeros = 0;
        for (Vuelo vuelo : vuelos) {
            totalPasajeros += vuelo.getCantidadPasajeros();
        }
        return totalPasajeros;
    }

    private void ingresarCrud(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String usuario = request.getParameter("usuario");
        String contraseña = request.getParameter("passsword");
        if (usuario == "admin" || usuario == "Admin" && contraseña == "12345") {

            String jspVuelo = "../../../cargarVuelo.jsp";
            request.getRequestDispatcher(jspVuelo).forward(request, response);
            //response.sendRedirect("vuelos.jsp");
        } else if (true) {
            System.out.println("Usuario Incorrecto porfavor vuelva a intentar");
        }

    }

    private void salirSesion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession sesion = request.getSession();
        sesion.invalidate();
        String jspSalir = "index.jsp";
        request.getRequestDispatcher(jspSalir).forward(request, response);

    }

    private void editarVuelo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idVuelo = Integer.parseInt(request.getParameter("idVuelo"));
        String compañia = request.getParameter("compania");
        String fecha = request.getParameter("fecha");
        int cantidadPasajeros = 0;
        String cantidadPasajeroString = request.getParameter("cantidadPasajeros");
        if (cantidadPasajeroString != null && !"".equals(cantidadPasajeroString)) {
            cantidadPasajeros = Integer.parseInt(cantidadPasajeroString);
        }
        String codigoVuelo = request.getParameter("codigoVuelo");
        String estado = request.getParameter("estado");
        double valorVuelo = 0;
        String origenVuelo = request.getParameter("origenVuelo");
        String destinoVuelo = request.getParameter("destinoVuelo");
        String valorVueloString = request.getParameter("valorVuelo");
        if (valorVueloString != null && !"".equals(valorVueloString)) {
            valorVuelo = Double.parseDouble(valorVueloString);
        }
        HttpSession sesion = request.getSession();

        sesion.setAttribute("idVuelo", idVuelo);
        sesion.setAttribute("compania", compañia);
        sesion.setAttribute("fecha", fecha);
        sesion.setAttribute("cantidadPasajeros", cantidadPasajeros);
        sesion.setAttribute("codigoVuelo", codigoVuelo);
        sesion.setAttribute("estado", estado);
        sesion.setAttribute("valorVuelo", valorVuelo);
        sesion.setAttribute("origenVuelo", origenVuelo);
        sesion.setAttribute("destinoVuelo", destinoVuelo);

        String jspEditar = "/WEB-INF/paginas/vuelos/editarVuelo.jsp";
        request.getRequestDispatcher(jspEditar).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insertar":
                    this.insertarVuelo(request, response);
                    break;
                case "modificar":
                    this.modificarVuelo(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    private void insertarVuelo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String compañia = request.getParameter("compañia");
        String fecha = request.getParameter("fecha");
        int cantidadPasajeros = 0;
        String cantidadPasajeroString = request.getParameter("cantidadPasajeros");
        if (cantidadPasajeroString != null && !"".equals(cantidadPasajeroString)) {
            cantidadPasajeros = Integer.parseInt(cantidadPasajeroString);
        }
        String codigoVuelo = request.getParameter("codigoVuelo");
        String estado = request.getParameter("estado");
        double valorVuelo = 0;
        String origenVuelo = request.getParameter("origenVuelo");
        String destinoVuelo = request.getParameter("destinoVuelo");
        String valorVueloString = request.getParameter("valorVuelo");
        if (valorVueloString != null && !"".equals(valorVueloString)) {
            valorVuelo = Double.parseDouble(valorVueloString);
        }

        Vuelo vuelo = new Vuelo(compañia, fecha, cantidadPasajeros, codigoVuelo, estado, valorVuelo, origenVuelo, destinoVuelo);

        int registroVuelo = new VueloDao().insertarVuelo(vuelo);
        System.out.println("RegistroModificado =" + registroVuelo);

        this.accionDefault(request, response);
    }

    private void modificarVuelo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idVuelo = Integer.parseInt(request.getParameter("idVuelo"));
        String compañia = request.getParameter("compañia");
        String fecha = request.getParameter("fecha");
        int cantidadPasajeros = 0;
        String cantidadPasajeroString = request.getParameter("cantidadPasajeros");
        if (cantidadPasajeroString != null && !"".equals(cantidadPasajeroString)) {
            cantidadPasajeros = Integer.parseInt(cantidadPasajeroString);
        }
        String codigoVuelo = request.getParameter("codigoVuelo");
        String estado = request.getParameter("estado");
        double valorVuelo = 0;
        String origenVuelo = request.getParameter("origenVuelo");
        String destinoVuelo = request.getParameter("destinoVuelo");
        String valorVueloString = request.getParameter("valorVuelo");
        if (valorVueloString != null && !"".equals(valorVueloString)) {
            valorVuelo = Double.parseDouble(valorVueloString);
        }

        Vuelo vuelo = new Vuelo(idVuelo, compañia, fecha, cantidadPasajeros, codigoVuelo, estado, valorVuelo, origenVuelo, destinoVuelo);

        int modificarVuelo = new VueloDao().actualizarVuelo(vuelo);
        System.out.println("modificarVuelo = " + modificarVuelo);

        this.accionDefault(request, response);
    }

    private void eliminarVuelo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idVuelo = Integer.parseInt(request.getParameter("idVuelo"));
        Vuelo vuelo = new Vuelo(idVuelo);

        int eliminarVuelo = new VueloDao().eliminarVuelo(vuelo);
        System.out.println("Registro eliminado = " + eliminarVuelo);
        this.accionDefault(request, response);
    }

}
