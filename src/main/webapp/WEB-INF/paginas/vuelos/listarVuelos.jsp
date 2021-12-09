<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_CO"/>
<style>
    .cabecera_card1{
        background-color: #00b4d8;
    }
    .cabecera_card2{
        background-color: #ade8f4;
    }

    .borde_card{
        border: 12px;
        border-radius: 15px;
    }
</style>



<section id="vuelos">
    <div>
        <br>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9 animate__animated animate__backInLeft">
                <div class="card borde_card">
                    <div class="card-header cabecera_card1">
                        <h4>Listado Vuelos</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="cabecera_card2">
                            <tr>
                                <th>#</th>
                                <th>Compañia</th>
                                <th>Fecha</th>
                                <th>Cant.Pasajeros</th>
                                <th>Codigo</th>
                                <th>Estado</th>
                                <th>Valor</th>
                                <th>Origen</th>
                                <th>Destino</th>
                                <th>Modificar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Iteramos cada elemento de la lista de clientes -->
                            <c:forEach var="vuelo" items="${vuelos}" varStatus="status" >
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${vuelo.compañia}</td>
                                    <td>${vuelo.fecha}</td>
                                    <td>${vuelo.cantidadPasajeros}</td>
                                    <td>${vuelo.codigoVuelo}</td>
                                    <td>${vuelo.estado}</td>
                                    <td> <fmt:formatNumber value="${vuelo.valorVuelo}" type="currency"/> </td>
                                    <td>${vuelo.origenVuelo}</td>
                                    <td>${vuelo.destinoVuelo}</td>

                                    <td>
                                        <a id="modificarVuelo" href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idVuelo=${vuelo.idVuelo}&compania=${vuelo.compañia}&fecha=${vuelo.fecha}&cantidadPasajeros=${vuelo.cantidadPasajeros}&codigoVuelo=${vuelo.codigoVuelo}&estado=${vuelo.estado}&valorVuelo=${vuelo.valorVuelo}&origenVuelo=${vuelo.origenVuelo}&destinoVuelo=${vuelo.destinoVuelo}"  
                                           class="btn btn-secondary">
                                            <i class="fas fa-angle-double-right"></i> Editar
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- targetas -->
            <div class="col-md-3 animate__animated animate__backInRight">
                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3><i class="fas fa-dollar-sign"></i> Saldo total <i class="fas fa-money-bill-wave"></i></h3>
                        <h4 class="display-5">
                            <fmt:formatNumber value="${saldoTotalVuelos}" type="currency"/>
                        </h4>
                    </div>
                </div>
                        
                <div class="card text-center bg-info text-white mb-3">
                    <div class="card-body">
                        <h3><i class="fas fa-globe-americas"></i> Total Vuelos <i class="far fa-paper-plane"></i></h3>
                        <h4 class="display-5">
                            <fmt:formatNumber value="${totalVuelos}" type="number"/>
                        </h4>
                    </div>
                </div>
                        
                                  
                <div class="card text-center bg-warning text-white mb-3">
                    <div class="card-body">
                        <h3><i class="fas fa-person-booth"></i> Total Pasajeros <i class="fas fa-user-check"></i></h3>
                        <h4 class="display-5">
                            <fmt:formatNumber value="${totalPasajeros}" type="number"/>            
                        </h4>
                    </div>
                </div>
            </div>

            </section>
            <jsp:include page="/WEB-INF/paginas/vuelos/agregarVuelo.jsp"/>
