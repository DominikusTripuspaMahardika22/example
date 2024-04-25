<div class="container my-4 p-5 bg-hero rounded">
    <div class="py-5">
        <p class="display-5 fw-bold text-white">Galeri Foto</p>
        <p class="fs-4 col-md-8 text-white">Aplikasi ini merupakan aplikasi berbasis web yang dapat dikelola oleh banyak pengguna. Pengguna dapat menyimpan gambarnya di aplikasi web ini. Dia juga dapat mengatur gambar yang diunggahnya berdasarkan album. Aplikasi ini memiliki banyak fitur untuk mengelola gambar.</p>
    </div>
</div>
<div class="container">
    <div class="row">
        <?php
        $tampil = mysqli_query($conn, "SELECT * FROM foto INNER JOIN user ON foto.UserID=user.UserID");
        foreach ($tampil as $tampils) :
        ?>
            <div class="col-6 col-md-4 col-lg-3 mb-4">
                <div class="card">
                    <img src="uploads/<?= $tampils['LokasiFile'] ?>" class="object-fit-cover" style="aspect-ratio: 16/9;">
                    <div class="card-body">
                        <h5 class="card-title"><?= $tampils['JudulFoto'] ?></h5>
                        <p class="card-text text-muted">by: <?= $tampils['Username'] ?></p>
                        <a href="?url=detail&&id=<?= $tampils['FotoID'] ?>" class="btn btn-primary">Detail</a>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>