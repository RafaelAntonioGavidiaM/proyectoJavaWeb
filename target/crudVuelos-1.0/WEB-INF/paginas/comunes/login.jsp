<style>

    .titulo_card{

        font-family:  fantasy;
    }

    .texto_airslot{
        padding-left: 30px
    }

    .login{
        padding-bottom: 40px;
        padding-right: 30px;
    }
</style>
<section class="fondo-section1">
    <br>
    <form action="${pageContext.request.contextPath}/ServletControlador?accion=login&idLogin=1">
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-7">
                    <h1 class="text-center" style="font-family: 'Yellowtail', cursive;">AriSlot S.A.S</h1>
                    <p class="texto_airslot">En AirSlot S.A.S puedes comprar todo para tus vacaciones muy fácilmente. Primero, ingresa la información de tu viaje en el buscador. Compara entre cientos de opciones y elige la que más te guste desde el botón Comprar. Carga los datos de los pasajeros, selecciona tu medio de pago y completa la información requerida. ¡Aprovecha las promociones bancarias de Despegar! Por último, toca nuevamente en Comprar y ¡listo! Recibirás tus vouchers por mail para que empieces a disfrutar tu viaje.</p>
                    <div class="text-center">
                        <img src="https://images.pexels.com/photos/5769690/pexels-photo-5769690.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"> 
                        <img src="https://images.pexels.com/photos/5769757/pexels-photo-5769757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"> 
                    </div>
                </div>
                <div class="col-md-1">               
                </div>
                <div class="col-md-4 login">
                    <div class="card mb-3">
                        <div class="card-header bg-success" >
                            <h1 class="text-center text-white titulo_card"><i class="fas fa-users "></i> Inicia Sesion</h1>                            
                        </div>
                        <div class="card-body">

                            <h4 class="display-5">
                                <div class="form-group">
                                    <label for="usuario">Usuario:</label>
                                    <input type="text" class="form-control" name="usuario" id="compañiaMod" required>
                                </div> 
                                <div class="form-group">
                                    <label for="password">Contraseña:</label>
                                    <input type="password" class="form-control" name="password" id="compañiaMod" required>
                                </div> 
                            </h4>
                        </div>
                        <div class="card-footer bg-susccess">
                            <button class="btn btn-block btn-warning" type="submit"> <i class="fas fa-user-check"></i> Ingresar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>  
</section>
