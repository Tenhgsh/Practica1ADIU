<?php
    include "conexion.php";
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--<script src="graficas.js"></script>-->
    <?php
            //devuelve las canciones con mayor popularidad de cada tipo de llaves, perfecto para meter en un grafico de barras
      $query = "SELECT c.nombre, c.popularity, c.llave
                FROM cancion c
                JOIN (
                    SELECT llave, MAX(popularity) AS max_popularity
                    FROM cancion
                    GROUP BY llave
                ) AS max_cancion ON c.llave = max_cancion.llave AND c.popularity = max_cancion.max_popularity
                ORDER by llave;";
      $res = mysqli_query($con, $query);
    ?>
    <script>
      document.addEventListener('DOMContentLoaded', function () {
    const chart = Highcharts.chart('container2', {
      chart: {
        type: 'bar'
      },
      title: {
        text: 'Canción más popular de cada tipo llave'
      },
      yAxis: {
        title: {
          text: 'Popularidad [0-10]'
        }
      },
      xAxis: {
        categories: ['llave 0', 'llave 1', 'llave 2', 'llave 3', 'llave 4', 'llave 5', 'llave 6', 'llave 7', 'llave 7', 'llave 8', 'llave 9', 'llave 10', 'llave 11']
      },
      series: [
        <?php
      $idx = 0;
      while ($r = mysqli_fetch_array($res)){
        // Inicializamos el array de datos para cada serie
        $data = array_fill(0, 12, 0);
        // Asignamos la popularidad a la posición correspondiente
        $data[$idx++] = $r['popularity']/10;
        
        echo "{";
        echo "name: '" . $r['nombre'] . "',";
        echo "data: " . json_encode($data);
        echo "},";
      }
      ?>]
    });
  });
    </script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <title>Bootstrap demo</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous">
    <link rel="stylesheet" href="estilos.css">
  </head>
  <body>
    <header id="header" style="height : 80px">
      <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">
            <img src="logo.png" alt="Logo enterprise"width="200" height="100">
            
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="https://ad.uib.es">UIB
                <img src="logo_uib.png" alt="Logo UIB"width="100" height="100">
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="https://www.kaggle.com/datasets/thebumpkin/spotify-top-100-country-9124-w-audio-features">DataLink
                <img src="logo_kaggle.png" alt="Logo enterprise"width="200" height="100">
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button"
                  data-bs-toggle="dropdown" aria-expanded="false">
                  More
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="https://open.spotify.com/intl-es">Our official page</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Something else
                      here</a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link disabled" aria-disabled="true">Disabled</a>
              </li>
            </ul>
            <form class="d-flex" role="search">
              <input class="form-control me-2" type="search"
                placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success"
                type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>
    </header>
    <br/>


    <div id="container" class="container text-center" style = "margin-top: 105px;">
      <div  class="row .row-cols-auto">
            <div class="row">
              <div id="container2" class="col-12"></div>
              <!--<div id="container3" class="col-6"><img src="Cats_Test0.png" alt="Gato" width="auto" height="auto"></div>
              <div id="column" class="col-3"><img src="Cats_Test0.png" alt="Gato" width="auto" height="auto"></div>
              <div id="column" class="col-3"><img src="Cats_Test0.png" alt="Gato" width="auto" height="auto"></div>-->
            </div>
            <div class="row">
              <div id="column" class="col-4"><img src="Cats_Test0.png" alt="Gato" width="auto" height="auto"></div>
              <div id="column" class="col-8"><img src="Cats_Test0.png" alt="Gato" width="auto" height="auto"></div>
            </div>
            <div class="row">
              <div id="column" class="col-6"><img src="Cats_Test0.png" alt="Gato" width="auto" height="auto"></div>
              <div id="column" class="col-6"><img src="Cats_Test0.png" alt="Gato" width="auto" height="auto"></div>
            </div>
      </div>
    </div>
    <?php
      $query = "select * from album where id = 425";
      $res = mysqli_query($con, $query);
      while ($r = mysqli_fetch_array($res)){
        echo "id de album = ".$r['id'].", nombre = ".$r['nombre'].", fecha de lanzamiento = ".$r['fecha_lanzamiento']." y id de artista = ".$r['id_artista'];
      }
    ?>
    <h1><?php $h;?></h1>
  </body>
</html>