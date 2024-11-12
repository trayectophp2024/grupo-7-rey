<?php
require('partials/header.php');
?>
  
  <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="img/banners_gigante/banner1.jpeg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="img//banners_gigante/banner2.jpeg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/banners_gigante/banner3.jpeg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<br>

<h5>Personajes</h5>
<br>
<div class="container text-center">
  <div class="row align-items-center">
    <div class="col">
      <a href="personajes.php?categorias=personajes&id=1"><img height="280px" width="250px" src="img/luke-skywalker.webp" alt="luke"></a>
    </div>
    <div class="col">
      <a href="personajes.php?categorias=personajes&id=2"><img height="280px" width="240px" src="img/darth-vader.webp" alt="darth vader"></a>
    </div>
    <div class="col">
      <a href="personajes.php?categorias=personajes&id=5"><img height="280px" width="250px" src="img/yoda.webp" alt="yoda"></a>
    </div>
    <div class="col">
      <a href="personajes.php?categorias=personajes&id=3"><img height="280px" width="250px" src="img/leia.webp" alt="leia"></a>
    </div>
  </div>
</div>

<hr>

<h5 class="text-start">Naves</h5>
<br>
<div class="container text-center">
  <div class="row align-items-center">
    <div class="col">
      <a href="naves.php?categorias=naves&id=6"><img height="280px" width="250px" src="img/a-wing.jfif" alt="a-wing"></a>
    </div>
    <div class="col">
      <a href="naves.php?categorias=naves&id=7"><img height="280px" width="240px" src="img/b-wing.webp" alt="b-wing"></a>
    </div>
    <div class="col">
      <a href="naves.php?categorias=naves&id=1"><img height="280px" width="250px" src="img/falcon.webp" alt="falcon"></a>
    </div>
    <div class="col">
      <a href="naves.php?categorias=naves&id=5"><img height="280px" width="250px" src="img/imperial.jpg" alt="imperial"></a>
    </div>
  </div>
</div>

<hr>
<img height="450" width="100%" src="img/banners_gigante/banner2_abajo.jfif" alt="">

<hr>
<h5>Sables</h5>
<br>
<div class="container text-center">
  <div class="row align-items-center">
    <div class="col">
      <a href="sables.php?categorias=sables&id=1"><img height="280px" width="250px" src="img/DarthVaderSaber.webp" alt="darthsable"></a>
    </div>
    <div class="col">
      <a href="sables.php?categorias=sables&id=6"><img height="280px" width="240px" src="img/kylorensaber.webp" alt="kyosable"></a>
    </div>
    <div class="col">
      <a href="sables.php?categorias=sables&id=2"><img height="280px" width="250px" src="img/luke-skywalker-lightsaber.jpg" alt="lukesable"></a>
    </div>
    <div class="col">
      <a href="sables.php?categorias=sables&id=3"><img height="280px" width="250px" src="img/macewindusaber.webp" alt="macesable"></a>
    </div>
  </div>
</div>
<hr>
<h5>Peliculas</h5>
<br>
<div class="container text-center">
  <div class="row align-items-center">
    <div class="col">
      <img height="350px" width="250px" src="img/Episode1.jpg" alt="ep1">
    </div>
    <div class="col">
      <img height="350px" width="240px" src="img/episodio2.webp" alt="ep2">
    </div>
    <div class="col">
      <img height="350px" width="250px" src="img/episodio3.webp" alt="ep3">
    </div>
    <div class="col">
      <img height="350" width="250px" src="img/episodio4.webp" alt="ep4">
    </div>
  </div>
</div>
<br>

<?php
require('partials/footer.php');
?>