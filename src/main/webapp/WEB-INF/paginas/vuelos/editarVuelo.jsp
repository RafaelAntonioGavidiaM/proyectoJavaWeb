
<!DOCTYPE html>
<html>
    
    
       <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/f90d3bf50d.js" crossorigin="anonymous"></script>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <title>Modificar</title>
    </head>
    
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
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <div>
            <br>
        </div>
        <form action="${pageContext.request.contextPath}/ServletControlador?accion=modificar&idVuelo=${idVuelo}"
              method="POST" class="was-validated">
            <jsp:include page="/WEB-INF/paginas/comunes/btnModificarRegistros.jsp"/>
            <section id="details">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Editar Vuelo</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="compañia">Compañia</label>
                                        <input type="text" class="form-control" name="compañia" id="compañiaMod" value="${compania}" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="fecha">Fecha</label>
                                        <input type="date" class="form-control" name="fecha" value="${fecha}" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="cantidadPasajeros">Cantidad de Pasajeros</label>
                                        <input type="number" class="form-control" name="cantidadPasajeros" value="${cantidadPasajeros}" placeholder="No Pasajeros" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="codigoVuelo">Codigo del vuelo</label>
                                        <input type="text" class="form-control" name="codigoVuelo" value="${codigoVuelo}" placeholder="Codigo..." required>
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
                                        <input type="number" class="form-control" name="valorVuelo" value="${valorVuelo}" placeholder="$$$" required step="any">
                                    </div>
                                    <div class="form-group">
                                        <label for="origenVuelo">Origen del vuelo</label>
                                        <input type="text" class="form-control" name="origenVuelo" value="${origenVuelo}" placeholder="Origen..." required>
                                    </div>
                                    <div class="form-group">
                                        <label for="destinoVuelo">destino Vuelo</label>
                                        <input type="text" class="form-control" name="destinoVuelo"  value="${destinoVuelo}" placeholder="Destino..." required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
            <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>
    </body>
</html>
