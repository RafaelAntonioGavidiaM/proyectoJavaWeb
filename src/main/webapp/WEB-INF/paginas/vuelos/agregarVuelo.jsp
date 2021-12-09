<style>

    .cabecera_pie_modal{
        background-color: #76c893;
    }

    .body_modal{
        background-color: #fff;
    }
    .centrar_texto{
        text-align: center;
    }

    input[type=text] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        border-bottom: 2px solid red;
    }
    input[type=tel] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        border-bottom: 2px solid red;
    }
    input[type=email] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        border-bottom: 2px solid red;
    }

    input[type=number] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        border-bottom: 2px solid red;
    }

    input[type=date] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        border-bottom: 2px solid red;
    }

    select{
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        border-bottom: 2px solid green;
    }





</style>
<div class="modal" id="agregarVueloModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header cabecera_pie_modal text-white">
                <h2 class="modal-title" >
                    <i class="fas fa-users"></i> Agregar Vuelo <i class="fas fa-users"></i>
                </h2> 
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>

            <form action="${pageContext.request.contextPath}/ServletControlador?accion=insertar"
                  method="POST" class="was-validated">

                <div class="modal-body body_modal">
                    <div class="form-group">
                        <label for="compañia">Compañia</label>
                        <input type="text" class="form-control"  name="compañia" placeholder="Compañia..." required>
                    </div>
                    <div class="form-group">
                        <label for="fecha">Fecha</label>
                        <input type="date" class="form-control" name="fecha" required>
                    </div>
                    <div class="form-group">
                        <label for="cantidadPasajeros">Cantidad de Pasajeros</label>
                        <input type="number" class="form-control" name="cantidadPasajeros" placeholder="No Pasajeros" required>
                    </div>
                    <div class="form-group">
                        <label for="codigoVuelo">Codigo del vuelo</label>
                        <input type="text" class="form-control" name="codigoVuelo" placeholder="Codigo..." required>
                    </div>
                    <div class="form-group">
                        <label for="estado">Estado Vuelo</label>
                        <br>
                        <select name="estado" id="estado">
                            <option value="Viajando">Viajando</option>
                            <option value="Abordando">Abordando</option>
                            <option value="Retrasado">Retrasado</option>
                            <option value="Mantenimiento">Mantenimiento</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="valorVuelo">Valor del Vuelo</label>
                        <input type="number" class="form-control" name="valorVuelo" placeholder="$$$" required step="any">
                    </div>
                    <div class="form-group">
                        <label for="origenVuelo">Origen del vuelo</label>
                        <input type="text" class="form-control" name="origenVuelo" placeholder="Origen..." required>
                    </div>
                    <div class="form-group">
                        <label for="destinoVuelo">Codigo del vuelo</label>
                        <input type="text" class="form-control" name="destinoVuelo" placeholder="Destino..." required>
                    </div>
                </div>
                <div class="modal-footer cabecera_pie_modal">
                    <button class="btn btn-block button" type="submit">Guardar</button>
                </div>    
            </form>
        </div>
    </div>
</div>
