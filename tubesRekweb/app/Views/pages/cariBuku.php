<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>


<div class="container">
    <div class="row mt-3 justify-content-center">
        <div class="col-md-8">
            <h1 class="text-center">Cari buku</h1>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Judul Buku.." id="search-input">
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button" id="search-button">Search</button>
                </div>
            </div>
        </div>
    </div>
</div>



<?= $this->endSection(); ?>