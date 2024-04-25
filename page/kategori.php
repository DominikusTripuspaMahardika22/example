<div class="container">
   <div class="row">
      <div class="col-12 py-3">
         <a href="?url=album" class="btn btn-dark">Kembali ke album</a>
      </div>
      <?php
      $kategori = mysqli_query($conn, "SELECT * FROM foto INNER JOIN album ON foto.AlbumID=album.AlbumID WHERE foto.AlbumID='{$_GET['albumid']}'");
      foreach ($kategori as $kat) :
      ?>
         <div class="col-6 col-md-4 col-lg-3 mb-4">
            <div class="card">
               <div class="card-body">
                  <h5 class="card-title"><?= $kat['JudulFoto'] ?></h5>
                  <p class="card-text text-muted">Album: <?= $kat['NamaAlbum'] ?></p>
                  <a href="?url=detail&&id=<?= $kat['FotoID'] ?>" class="btn btn-primary">Detail</a>
               </div>
            </div>
         </div>
      <?php endforeach; ?>
   </div>
</div>