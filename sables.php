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
                        <p class="card-text">Color: <?= $contenido['color'] ?></p>
                        <p class="card-text">Propietario: <?= $contenido['propietario'] ?></p>
                        <p class="card-text">Afiliacion: <?= $contenido['afiliación'] ?></p>
                        <p class="card-text">Cristal: <?= $contenido['cristal'] ?></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <img width="400px" src="img/<?= $contenido['imagen'] ?>" class="float-start" alt="...">
                </div>
            </div>
           
    <?php } ?>

</main>
<?php require "partials/footer.php" ?>