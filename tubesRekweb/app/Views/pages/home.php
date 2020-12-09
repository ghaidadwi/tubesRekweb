<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" height="90" width="100%">
            <div class="carousel-item active">
                <img src="../img/c1.jpg" width="1500" height="700">
                <div class=" container">
                    <div class="carousel-caption text-left">
                        <h1>Buku adalah.</h1>
                        <p>Bagian terpenting bagi mereka yang belajar membaca untuk membangun pengetahuan</p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../img/c2.jpg" width="1500" height="700">
                <div class="container">
                    <div class="carousel-caption text-center">
                        <h1>Buku bagaikan cermin</h1>
                        <p>"Jika orang bodoh melihat ke dalam, tidak dapat mengharap seorang jenius melihat keluar kamu hanya melihat di dalamnya apa yang sudah kamu miliki di dalam dirimu"</p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../img/c3.jpg" width="1500" height="700">
                <div class=" container">
                    <div class="carousel-caption text-right">
                        <h1>Buku lama adalah.</h1>
                        <p>Buku baru bagi mereka yang belum membacanya</p>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<br>
<div class="container">
    <div class="row mt-3 justify-content-center">
        <div class="col">
            <h1 class="text-center">Selamat Datang di, RBook!</h1>
        </div>
    </div>
</div>
<br>

<div class="container ">
    <div class="row mt-3 justify-content-center">
        <div class="col-md-4">
            <img src="../img/search.png" class="rounded mx-auto d-block" width="100" height="100">
            <br>
            <h2 class="text-center">Apa itu RBook?</h2>
            <p class="text-center">RBook adalah web aplikasi untuk membaca buku, dan mencari buku bagi sobat yang ingin membaca buku, jadi ayo cari dan baca buku, karena buku adalah ilmu</p>
        </div>
        <div class="col-md-4">
            <img src="../img/onlinelibrary.png" class="rounded mx-auto d-block" width="100" height="100">
            <br>
            <h2 class="text-center">Ada Apa Saja Di RBook?</h2>
            <p class="text-center">Di RBook Sobat bisa membaca, mencari buku sesuai dengan buku yang sobat ingin baca</p>
        </div>
        <div class="col-md-4">
            <img src="../img/information.png" class="rounded mx-auto d-block" width="100" height="100">
            <br>
            <h2 class="text-center">RBook</h2>
            <p class="text-center">Keep reading books, but remember that a book is only a book, and you should learn to think for yourself -Maxim Gorky</p>
        </div>
    </div>
</div>





<?= $this->endSection(); ?>