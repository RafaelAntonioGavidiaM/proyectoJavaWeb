package datos;

import dominio.Vuelo;
import java.sql.*;
import java.util.*;

public class VueloDao {

    private static final String SQL_SELECT = "SELECT *" + " FROM vuelo";

    private static final String SQL_SELECT_BY_ID = "SELECT *" + "FROM vuelo WHERE idVuelo = ?";

    private static final String SQL_INSERT = "INSERT INTO vuelo(compañia,fecha,cantidadPasajeros,codigoVuelo,estado,valorVuelo,origenVuelo,destinoVuelo)"
            + "VALUES (?,?,?,?,?,?,?,?)";

    private static final String SQL_UPDATE = "UPDATE vuelo"
            + " SET compañia=?, fecha=?, cantidadPasajeros=?, codigoVuelo=?, estado=?, valorVuelo=?, origenVuelo=?, destinoVuelo=? WHERE idVuelo=?";

    private static final String SQL_DELETE = "DELETE FROM vuelo WHERE idVuelo=?";

    public List<Vuelo> ListarVuelos() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Vuelo vuelo = null;
        List<Vuelo> vuelos = new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT);
            rs = stmt.executeQuery();
            while (rs.next()) {

                int idVuelo = rs.getInt("idVuelo");
                String compañia = rs.getString("compañia");
                String fecha = rs.getString("fecha");
                int cantidadPasajeros = rs.getInt("cantidadPasajeros");
                String codigoVuelo = rs.getString("codigoVuelo");
                String estado = rs.getString("estado");
                double valorVuelo = rs.getDouble("valorVuelo");
                String origenVuelo = rs.getString("origenVuelo");
                String destinoVuelo = rs.getString("destinoVuelo");

                vuelo = new Vuelo(idVuelo, compañia, fecha, cantidadPasajeros, codigoVuelo, estado, valorVuelo, origenVuelo, destinoVuelo);
                vuelos.add(vuelo);
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return vuelos;
    }

    public Vuelo encontrarVuelo(Vuelo vuelo) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT_BY_ID);
            stmt.setInt(1, vuelo.getIdVuelo());
            rs = stmt.executeQuery();
            rs.absolute(1);

            String compañia = rs.getString("compañia");
            String fecha = rs.getString("fecha");
            int cantidadPasajeros = rs.getInt("cantidadPasajeros");
            String codigoVuelo = rs.getString("codigoVuelo");
            String estado = rs.getString("estado");
            double valorVuelo = rs.getDouble("valorVuelo");
            String origenVuelo = rs.getString("origenVuelo");
            String destinoVuelo = rs.getString("destinoVuelo");

            vuelo.setCompañia(compañia);
            vuelo.setFecha(fecha);
            vuelo.setCantidadPasajeros(cantidadPasajeros);
            vuelo.setCodigoVuelo(codigoVuelo);
            vuelo.setEstado(estado);
            vuelo.setValorVuelo(valorVuelo);
            vuelo.setOrigenVuelo(origenVuelo);
            vuelo.setDestinoVuelo(destinoVuelo);

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return vuelo;
    }

    public int insertarVuelo(Vuelo vuelo) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setString(1, vuelo.getCompañia());
            stmt.setString(2, vuelo.getFecha());
            stmt.setInt(3, vuelo.getCantidadPasajeros());
            stmt.setString(4, vuelo.getCodigoVuelo());
            stmt.setString(5, vuelo.getEstado());
            stmt.setDouble(6, vuelo.getValorVuelo());
            stmt.setString(7, vuelo.getOrigenVuelo());
            stmt.setString(8, vuelo.getDestinoVuelo());

            rows = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }

    public int actualizarVuelo(Vuelo vuelo) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_UPDATE);
            stmt.setString(1, vuelo.getCompañia());
            stmt.setString(2, vuelo.getFecha());
            stmt.setInt(3, vuelo.getCantidadPasajeros());
            stmt.setString(4, vuelo.getCodigoVuelo());
            stmt.setString(5, vuelo.getEstado());
            stmt.setDouble(6, vuelo.getValorVuelo());
            stmt.setString(7, vuelo.getOrigenVuelo());
            stmt.setString(8, vuelo.getDestinoVuelo());
            stmt.setInt(9, vuelo.getIdVuelo());

            rows = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }

    public int eliminarVuelo(Vuelo vuelo) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, vuelo.getIdVuelo());
            rows = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
}
