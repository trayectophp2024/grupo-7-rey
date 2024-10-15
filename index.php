<?php
require('partials/header.php');
?>



<div id="carouselExampleFade" class="carousel slide carousel-fade">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/banners_gigante/banner1.jpeg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img//banners_gigante/banner2.jpeg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/banners_gigante/banner3.jpeg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
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
      <a href="personajes.php"><img height="280px" width="250px" src="img/luke-skywalker.webp" alt="luke"></a>
    </div>
    <div class="col">
      <img height="280px" width="240px" src="img/darth-vader.webp" alt="darth vader">
    </div>
    <div class="col">
      <img height="280px" width="250px" src="img/yoda.webp" alt="yoda">
    </div>
    <div class="col">
      <img height="280px" width="250px" src="img/leia.webp" alt="leia">
    </div>
  </div>
</div>

<hr>

<h5 class="text-start">Naves</h5>
<br>
<div class="container text-center">
  <div class="row align-items-center">
    <div class="col">
      <img height="280px" width="250px" src="img/a-wing.jfif" alt="a-wing">
    </div>
    <div class="col">
      <img height="280px" width="240px" src="img/b-wing.webp" alt="b-wing">
    </div>
    <div class="col">
      <img height="280px" width="250px" src="img/falcon.webp" alt="falcon">
    </div>
    <div class="col">
      <img height="280px" width="250px" src="img/imperial.jpg" alt="imperial">
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
      <img height="280px" width="250px" src="img/DarthVaderSaber.webp" alt="darthsable">
    </div>
    <div class="col">
      <img height="280px" width="240px" src="img/kylorensaber.webp" alt="kyosable">
    </div>
    <div class="col">
      <img height="280px" width="250px" src="img/luke-skywalker-lightsaber.jpg" alt="lukesable">
    </div>
    <div class="col">
      <img height="280px" width="250px" src="img/macewindusaber.webp" alt="macesable">
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