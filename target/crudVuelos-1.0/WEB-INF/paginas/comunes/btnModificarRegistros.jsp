<style>
    .button_mod {
        padding: 15px 25px;
        font-size: 24px;
        text-align: center;
        cursor: pointer;
        outline: none;
        color: #fff;
        background-color: #04AA6D;
        border: none;
        border-radius: 15px;
        box-shadow: 0 9px #999;
    }

    .button_mod:hover {
        background-color: #3e8e41;
    }

    .button_mod:active {
        background-color: #3e8e41;
        box-shadow: 0 5px #666;
        transform: translateY(4px);
    }

    .button_delete {
        padding: 15px 25px;
        font-size: 24px;
        text-align: center;
        cursor: pointer;
        outline: none;
        color: #fff;
        background-color: #AA2A04;
        border: none;
        border-radius: 15px;
        box-shadow: 0 9px #999;
    }

    .button_delete:hover {
        background-color: #8E3E3E;
    }

    .button_delete:active {
        background-color: #8E3E3E;
        box-shadow: 0 5px #666;
        transform: translateY(4px);
    }
</style>
<section id="actions" class="bg-ligth">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <a href="cargarVuelo.jsp" class="btn btn-ligth btn-block">
                    <i class="fas fa-arrow-left"></i>Inicio
                </a>
            </div>
        </div>
        <br>
    </div>
    <div class="container-fluid">
        <div class="row">           
            <div class="col-md-6">
                <button type="submit" class="btn button_mod btn-block">
                    <i class="fas fa-check"></i>Modificar cliente
                </button>
            </div>
            <div class="col-md-6">
                <a href="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&idVuelo=${idVuelo}" class="btn button_delete btn-block">
                    <i class="fas fa-trash"></i>Eliminar Cliente
                </a>
            </div>
        </div>
    </div>
    <div>
        <br>
    </div>

</section>

