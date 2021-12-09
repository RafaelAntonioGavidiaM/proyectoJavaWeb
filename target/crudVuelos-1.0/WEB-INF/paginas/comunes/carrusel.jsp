<style>
    .mod_carrusel{
        background-color: rgb(82,182,154);
        opacity: 0.9;
    }

    .carousel-inner img {
        top: 10%;
        width: 100%;
        height: 500px;
        background-size: cover;
    }

    .img_carousel{

        width: 100%;
        height: 50%;
        background-size: cover;
    }
  .button_salir {
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

    .button_salir:hover {
        background-color: #3e8e41;
    }

    .button_salir:active {
        background-color: #3e8e41;
        box-shadow: 0 5px #666;
        transform: translateY(4px);
    }
</style>
<section>
    <!-- Carrusel -->
    <div class="container-fluid mod_carrusel">
        <div>
            <div class="row">
                <div class="col-md-2">
                    <a href="${pageContext.request.contextPath}/ServletControlador?accion=salir&idSesion=2" class="btn btn-block bg-success button_salir">
                        <i class="fas fa-sign-out-alt"></i> Inicio <i class="far fa-times-circle"></i>
                    </a>
                </div>
                <div class="col-md-10">
                    <h1 class="text-center text-white" style="font-family: sans-serif;"><i class="fas fa-cogs"></i> Control de vuelos <i class="fas fa-plane-departure"></i></h1>
                </div>
            </div>
        </div>
        <div>
            <br>
        </div>
        <div>
            <div id="demo" class="carousel slide  carousel-inner img" data-ride="carousel">


                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>

                <!-- The slideshow -->
                <div class="carousel-inner img_carousel">
                    <div class="carousel-item active">
                        <img src="https://images.pexels.com/photos/2356045/pexels-photo-2356045.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="Los Angeles">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.pexels.com/photos/1230665/pexels-photo-1230665.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="Chicago">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.pexels.com/photos/5769690/pexels-photo-5769690.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="New York">
                    </div>
                </div>
                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>

                <p>
            </div>

        </div>

    </div>
</section>
