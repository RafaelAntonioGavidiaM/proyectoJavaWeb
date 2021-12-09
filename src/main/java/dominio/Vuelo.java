
package dominio;


public class Vuelo {
    
    private int idVuelo;
    private String compañia;
    private String fecha;
    private int cantidadPasajeros;
    private String codigoVuelo;
    private String estado;
    private double valorVuelo;
    private String origenVuelo;
    private String destinoVuelo;

    public Vuelo() {
    }

    public Vuelo(int idVuelo) {
        this.idVuelo = idVuelo;
    }

    public Vuelo(String compañia, String fecha, int cantidadPasajeros, String codigoVuelo, String estado, double valorVuelo, String origenVuelo, String destinoVuelo) {
        this.compañia = compañia;
        this.fecha = fecha;
        this.cantidadPasajeros = cantidadPasajeros;
        this.codigoVuelo = codigoVuelo;
        this.estado = estado;
        this.valorVuelo = valorVuelo;
        this.origenVuelo = origenVuelo;
        this.destinoVuelo = destinoVuelo;
    }

    public Vuelo(int idVuelo, String compañia, String fecha, int cantidadPasajeros, String codigoVuelo, String estado, double valorVuelo, String origenVuelo, String destinoVuelo) {
        this.idVuelo = idVuelo;
        this.compañia = compañia;
        this.fecha = fecha;
        this.cantidadPasajeros = cantidadPasajeros;
        this.codigoVuelo = codigoVuelo;
        this.estado = estado;
        this.valorVuelo = valorVuelo;
        this.origenVuelo = origenVuelo;
        this.destinoVuelo = destinoVuelo;
    }

    public int getIdVuelo() {
        return idVuelo;
    }

    public void setIdVuelo(int idVuelo) {
        this.idVuelo = idVuelo;
    }

    public String getCompañia() {
        return compañia;
    }

    public void setCompañia(String compañia) {
        this.compañia = compañia;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }


    public int getCantidadPasajeros() {
        return cantidadPasajeros;
    }

    public void setCantidadPasajeros(int cantidadPasajeros) {
        this.cantidadPasajeros = cantidadPasajeros;
    }

    public String getCodigoVuelo() {
        return codigoVuelo;
    }

    public void setCodigoVuelo(String codigoVuelo) {
        this.codigoVuelo = codigoVuelo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public double getValorVuelo() {
        return valorVuelo;
    }

    public void setValorVuelo(double valorVuelo) {
        this.valorVuelo = valorVuelo;
    }

    public String getOrigenVuelo() {
        return origenVuelo;
    }

    public void setOrigenVuelo(String origenVuelo) {
        this.origenVuelo = origenVuelo;
    }

    public String getDestinoVuelo() {
        return destinoVuelo;
    }

    public void setDestinoVuelo(String destinoVuelo) {
        this.destinoVuelo = destinoVuelo;
    }
    
    @Override 
    public String toString(){
        
        return "Vuelo(" +"idVuelo=" + idVuelo + ",compañia=" + compañia + ", fecha=" + fecha + ", cantidadPasajeros=" + cantidadPasajeros + ", codigoVuelo=" + codigoVuelo + ", estado=" + estado + ",valorVuelo=" + valorVuelo + ", origenVuelo=" + origenVuelo + ", destinoVuelo=" + destinoVuelo + '}';
    }
    
    
}
