<?php

/* Listar categoria por tabla */

function listar_todo($conn, $tabla)
{

    //1- Realizar consulta o query
    $sqlPersonajes = "SELECT * FROM " . $tabla . ";";

    // 2- Ejecutar la consulta 
    $result = $conn->query($sqlPersonajes);

    //3- Retornar y convertir la consulta en un array asociativo
    return $result->fetch_all(MYSQLI_ASSOC);
}

/*  Listar un producto en particular  */

function categoria_particular($conn, $tabla, $id)
{
    //1- Realizar consulta o query
    $sqlPersonajes = "SELECT * FROM " . $tabla . " WHERE id = " .  $id;

    // 2- Ejecutar la consulta 
    $result = $conn->query($sqlPersonajes);

    //3- Retornar y convertir la consulta en un array asociativo
    return $result->fetch_all(MYSQLI_ASSOC);
}


/* funcion busqueda */

function buscar_productos($conn, $termino_busqueda)
{
    // Escapar el termino de busqueda para evitar inyecciones SQL

    $termino_busqueda = $conn->real_escape_string($termino_busqueda);

    // Consultas para buscar naves
    $sqlNaves = "SELECT 'naves' as tabla , id , nombre , descripción , tipo , fabricante  , longitud , velocidad_maxima , armamento , capacidad , imagen FROM naves
           WHERE LOWER(nombre) LIKE '%$termino_busqueda%' 
        ";

    // Consultas para buscar pelicuas
    $sqlPeliculas = "SELECT 'peliculas' as tabla ,id , nombre , episodio , director , ano_estreno , duracion , imagen FROM peliculas
           WHERE LOWER(nombre) LIKE '%$termino_busqueda%' 
        ";

    // Consultas para buscar personajes
    $sqlPersonajes = "SELECT 'personajes' as tabla, id , nombre , descripcion , especie , afiliación , planeta_natal , habilidades , arma , actor , imagen FROM personajes
           WHERE LOWER(nombre) LIKE '%$termino_busqueda%' 
        ";

    // Consultas para buscar sables
    $sqlSables = "SELECT 'sables' as tabla, id , nombre , descripcion , color , propietario , afiliacion , cristal , imagen FROM sables
           WHERE LOWER(nombre) LIKE '%$termino_busqueda%' 
        ";

    //Ejecutar la consulta y convertir en un array asociativo
    $resultNaves = $conn->query($sqlNaves)->fetch_all(MYSQLI_ASSOC);
    $resultPeliculas = $conn->query($sqlPeliculas)->fetch_all(MYSQLI_ASSOC);
    $resultPersonajes = $conn->query($sqlPersonajes)->fetch_all(MYSQLI_ASSOC);
    $resultSables = $conn->query($sqlSables)->fetch_all(MYSQLI_ASSOC);

    //Combinar los resultados de las tres tablas 

    $resultado = array_merge($resultNaves, $resultPeliculas, $resultPersonajes, $resultSables);

    return $resultado;

    
    //Combinar los resultados de las tres tablas 

    $resultado = array_merge($sqlNaves, $sqlPeliculas, $sqlPersonajes, $sqlSables);

    return $resultado;
}


/*  Interesantes */

function resultados_interesantes($conn, $tabla) {
  //1- Realizar consulta o query
  $sqlPersonajes = "SELECT * FROM " . $tabla . 
                   " ORDER BY rand()  LIMIT 4" ;

  // 2- Ejecutar la consulta 
  $result = $conn->query($sqlPersonajes);

  //3- Retornar y convertir la consulta en un array asociativo
  return $result->fetch_all(MYSQLI_ASSOC);


}

?>
