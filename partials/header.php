<!doctype html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Only Star Wars</title>
  <!-- Bootstrap css -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  <!-- favicon -->
  <link rel="shortcut icon" href="img/extras/yoda.png" type="image/x-icon">
  <!-- CSS -->
  <link rel="stylesheet" href="css/estilos.css">

  <!-- ICONOS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />


  </head>

  <nav class="navbar navbar-expand-lg" style="background-color: #757575">
    <div class="container-fluid">
      <a class="navbar-brand" style="color:#FFFFFF" href="index.php">ONLY STAR WARS</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav md-4 ms-auto  text-center">
        <li class="nav-item">
            <a class="nav-link active " style="color:#FFFFFF" aria-current="page" href="contenido.php?categoria=personajes">Personajes</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" style="color:#FFFFFF" aria-current="page" href="contenido.php?categoria=naves">Naves</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" style="color:#FFFFFF" aria-current="page" href="contenido.php?categoria=sables">Sables</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" style="color:#FFFFFF" aria-current="page" href="contenido.php?categoria=peliculas">Peliculas</a>
          </li>
          <li class="nav-item opacity-25">
            <a class="nav-link active" style="color:#FFFFFF" aria-current="page" href="creditos.php">Creditos</a>
          </li>
        </ul>
        <form action="busqueda.php"  method="GET" class="d-flex" role="search">
          <input class="form-control me-2" name="q" type="buscar..." placeholder="buscar..." aria-label="buscar...">
        </form>
      </div>
    </div>
  </nav>

