<?php
require_once "utils/funciones.php";
require_once "utils/db_connection.php";

/* Capturamos la tabla que viene por GET (URL) */
/* Coalescing  : operador de fusión de null  */
$tabla = $_GET['categoria'] ?? false;


/* Tablas validas  */
$tablas = [
    'personajes' => 'personajes',
    'naves' => 'naves',
    'sables' => 'sables',
    'peliculas' => 'peliculas'
];

/* Comprobar si el array existe */

if(!array_key_exists($tabla, $tablas)){
    header('Location: error404.php');
}




// Llamar a la funcion

$categorias = listar_todo($conn, $tabla);

/* echo "<pre>";
var_dump($categorias);
echo "</pre>"; 
 */


?>

<?php require "partials/header.php" ?>

<main class="container">
    <div class="row">
        <h1 class="text-center">Categoria de <?= $tabla ?> </h1>

        <?php foreach ($categorias as $contenido) { ?>
            <div class="col-4 mt-4 mb-4">
                <div class="card" style="width: 18rem;">
                    <img height="400px" src="img/<?= $contenido['imagen']; ?>" class="card-img-top" alt="">
                    <div class="card-body">
                        <h5 class="card-title"><?= $contenido['nombre']; ?></h5>
                        <a href="<?= $tabla ?>.php?categorias=<?= $tabla ?>&id=<?= $contenido['id'] ?>"><button type="button" class="btn btn-outline-dark">Saber más</button></a>
                        
                    </div>
                </div>
            </div>

        <?php } ?>

    </div>

</main>


<?php require "partials/footer.php" ?>