<?php
require_once "utils/funciones.php";
require_once "utils/db_connection.php";

$tabla = $_GET['categorias'] ?? FALSE;
$id = $_GET['id'] ?? FALSE;

$contenidos = categoria_particular($conn, $tabla, $id);

/* echo "<pre>";
    var_dump($contenidos);
    echo "</pre>"; */

/* Obtener nombre del produto */

$contenido = $contenidos[0] ?? NULL;

$intersante = resultados_interesantes($conn , $tabla);

/*  echo "<pre>";
        var_dump($contenido);
    echo "</pre>";  */

?>

<?php require "partials/header.php" ?>

<main class="container">

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="contenido.php?categoria=<?= $tabla ?>"><?= $tabla ?></a></li>
            <li class="breadcrumb-item active" aria-current="page"><?= $contenido['nombre']  ?></li>
        </ol>
    </nav>

    <?php foreach ($contenidos as $contenido) {  ?>

            <div class="row gap-1 mt-5">
                
                <div class="col-md-6">
                    <div class="card-body">
                        <h5 class="card-title"><?= $contenido['nombre'] ?></h5>
                        <p class="card-text"><?= $contenido['descripcion'] ?></p>
                        <p class="card-text">Tipo: <?= $contenido['tipo'] ?></p>
                        <p class="card-text">Fabricane: <?= $contenido['fabricante'] ?></p>
                        <p class="card-text">Longitud: <?= $contenido['longitud'] ?></p>
                        <p class="card-text">Velocidad Maxima: <?= $contenido['velocidad_maxima'] ?></p>
                        <p class="card-text">Armamento: <?= $contenido['armamento'] ?></p>
                        <p class="card-text">Capacidad: <?= $contenido['capacidad'] ?></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <img width="400px" src="img/<?= $contenido['imagen'] ?>" class="float-start" alt="...">
                </div>
            </div>
           
    <?php } ?>

</main>

<section class="container mt-5">
     <h2>Podrian  Interesarte</h2>

     <div class="row">
     <?php foreach ($intersante as $contenido) { ?>
            <div class="col-3 mt-4 mb-4 gap-4">
                <div class="card" style="width: 16rem;">
                    <img height="400px" src="img/<?= $contenido['imagen']; ?>" class="card-img-top" alt="">
                    <div class="card-body" style="height: 150px;">
                        <h5 class="card-title"><?= $contenido['nombre']; ?></h5>
                        <a href="<?= $tabla ?>.php?categorias=<?= $tabla ?>&id=<?= $contenido['id'] ?>"><button type="button" class="btn btn-outline-dark">Saber más</button></a>
                    </div>
                </div>
            </div>

        <?php } ?>

        </div>

        
</section>


<?php require "partials/footer.php" ?>