<?php
require_once "utils/funciones.php";
require_once "utils/db_connection.php";

//Capturar lo que pone el usuario, o el termino busqueda
$termino_busqueda = $_GET['q'] ?? '';

$contenidos = [];

if ($termino_busqueda) {
    // si hay un termino busqueda, llamamos a la funciona buscar_producto
    $contenidos = buscar_productos($conn, $termino_busqueda);
}

?>

<?php require "partials/header.php" ?>

<main class="container">
    <h1 class="text-center">Resultados de la búsqueda</h1>

    <?php if ($termino_busqueda && !empty($contenidos)) { ?>
        <div class="row">
            <?php foreach ($contenidos as $contenido) { ?>
                <div class="col-4 mt-4 mb-4">
                    <div class="card" style="width: 18rem;">
                        <img src="img/<?= $contenido['imagen'] ?>" class="card-img-top" alt="">
                        <div class="card-body">
                            <h5 class="card-title"><?= $contenido['nombre'] ?></h5>
                            
                            <a href="<?=$contenido['tabla'] ?>.php?categorias=<?=$contenido['tabla'] ?>&id=<?= $contenido ['id'] ?>" class="btn btn-primary">Ver</a>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>

    <?php } elseif ($termino_busqueda) { ?>
        <p class="text-center fs-3">No se encontraron resultados para: <?= $termino_busqueda ?></p>
   <?php }else { ?>
     <p class="text-center text-danger fs-3">El campo de busqueda no puede estar vacio </p> 
<?php } ?>

</main>


<?php require "partials/footer.php" ?>