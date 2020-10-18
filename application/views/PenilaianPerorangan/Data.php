<?php
$DataDiri = $profil['nama_kelompok'];
if (strlen($DataDiri) > 30)
    $DataDiri = substr($DataDiri, 0, 30) . '..';
$this->load->view('Template/Link-css'); ?>
<link rel="stylesheet" href="<?= base_url('assets/css/dataTables.bootstrap4.min.css') ?>">
<link rel="stylesheet" href="<?= base_url('assets/css/table-data.css') ?>">

<?php
$this->load->view('Template/Header');
$this->load->view('Template/SubHeader');
$this->load->view('Template/TemplateTabs');


if ($count > 0) { ?>

<!-- Table -->
<section class="container mt-3 px-4">
    <div class="row">
        <div class="col-lg-3">
            <!-- BACK -->
            <a href="<?= base_url('penilaiankelompok/tambah/' . $this->uri->segment(2)) ?>">
                <i style="position:absolute; margin-left:-50px; margin-top:10px"
                    class="text-primary fas fa-arrow-circle-left text-size-11"></i>

            </a>
            <!-- BACK -->
            <div class="card">
                <div class="card-header bg-primary">
                    <div class='w-100 text-center text-light montserrat-600 letter-spacing'>Data kelompok
                    </div>
                </div>
                <div class="card-body">
                    <div class="text-center mt-3">
                        <i class="fas fa-users text-muted" style="font-size:150px"></i>
                        <br />
                        <div class="d-flex letter-spacing justify-content-between mt-4">
                            <div class="montserrat-600" style='font-size:11px;'>Kelompok</div>
                            <div class="text-muted" style="font-size:12px"> <?= $DataDiri ?></div>
                        </div>

                        <div class="d-flex letter-spacing justify-content-between mt-2">
                            <div class="montserrat-600" style='font-size:11px;'>Jumlah </div>
                            <div class="text-muted" style="font-size:12px"> <b><?= $profil['jumlah_anggota'] ?>
                                    Anggota</b>
                            </div>
                        </div>


                        <div class="d-flex letter-spacing justify-content-between mt-2">
                            <div class="montserrat-600" style='font-size:10px;'>Nilai Keseluruhan anggota</div>
                            <div class="text-muted" style="font-size:12px">
                                <b><?= number_format($TotalNilai, 2) ?></b>
                            </div>
                        </div>

                    </div>
                </div>


            </div>
        </div>
        <div class="col-lg-9">
            <div class="card">
                <div class="card-header bg-primary d-flex justify-content-between text-center">
                    <div class="w-100">
                        <h3 class="card-title text-light">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                stroke-linecap="roundr" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" />
                                <polyline points="9 11 12 14 20 6" />
                                <path d="M20 12v6a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h9" /></svg>
                            Penilaian Perorangan (<?= $count ?>)</h3>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table card-table table-striped table-vcenter text-nowrap datatable mb-0 table-sm"
                        id="DTPenilaianPerorangan">
                        <thead>
                            <tr>
                                <th class="letter-spacing" style="font-size:15px">Nama</th>
                                <th class="letter-spacing" style="font-size:15px">Pangkat</th>
                                <th class="letter-spacing" style="font-size:15px">NRP</th>
                                <th class="letter-spacing" style="font-size:15px">Jabatan</th>
                                <th class="letter-spacing" style="font-size:15px">Nilai</th>
                                <th class="letter-spacing" style="font-size:15px">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan=4 class='text-light bg-primary py-2 montserrat-600 text-center'>
                                    TOTAL NILAI
                                </td>
                                <td class="bg-primary text-light montserrat-600 letter-spacing">
                                    <?= number_format($TotalNilai, 0, 2, '.') ?>
                                </td>
                                <td class="bg-primary ">
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /Table -->
<?php } else { ?>
<section class="mt-5">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h1 class='montserrat-600 letter-spacing'>Anggota Kosong</h1>
            <div style="font-size:100px">
                <i class="far fa-user text-muted"></i>
            </div>
            <p class='text-size-5 text-muted montserrat-500 letter-spacing'>Anggota pada kelompok
                <b><?= $nama_kelompok ?></b>
                kosong</p>
            <!-- <p class='text-size-5 text-muted montserrat-500 letter-spacing'>silahakan isi <a href="<?= base_url('penilaian/anggota') ?>">disini</a> -->
            </p>
        </div>
    </div>
</section>
<?php } ?>
<?php $this->load->view('Template/Link-js'); ?>
<script src="<?= base_url('assets/js/jquery.dataTables.min.js') ?>"></script>
<script src="<?= base_url('assets/js/jquery.dataTables.bootstrap4.min.js') ?>"></script>
<!-- <script src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.print.min.js"></script> -->
<script>
table = $('#DTPenilaianPerorangan').DataTable({
    "processing": true,
    "serverSide": true,
    "pageLength": 50,
    "ajax": {
        "url": url + router + "get/<?= $this->uri->segment(2) ?>",
        "type": 'POST',
    },
    "columnDefs": [{
            targets: 1,
            className: 'montserrat-600'
        },
        {
            targets: 4,
            className: 'text-center'
        }, {
            targets: 0,
            orderable: false
        }
    ],
    "language": {
        "lengthMenu": "Menampilkan _MENU_ data per halaman",
        "zeroRecords": "Data tidak ditemukan",
        "info": "Showing page _PAGE_ of _PAGES_",
        "infoEmpty": "Data belum tersedia",
        "infoFiltered": "(tersaring dari _MAX_ total data)"
    },
    columns: [

        {
            "data": 0
        },
        {
            "data": 1,
            "visible": false
        },
        {
            "data": 2
        },
        {
            "data": 3
        },
        {
            "data": 4
        },

        {
            "data": 5,
            "render": function(data, type, row) {
                let GetData = "<a href='" + url + router + 'tambah/' + uri2 + '/' + data +
                    "' class='btn btn-primary px-2 montserrat-600 letter-spacing py-1'> <svg xmlns='http://www.w3.org/2000/svg' class='icon' width='24' height='24' viewBox='0 0 24 24' stroke-width='2' stroke='currentColor' fill='none' stroke-linecap='round' stroke-linejoin='round'> <path stroke='none' d='M0 0h24v24H0z' /> <polyline points='9 11 12 14 20 6' /> <path d='M20 12v6a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h9' /></svg>Beri nilai</a>";
                return GetData
            },
            "visible": true
        },
    ]
});
console.log($('#DTPenilaianPerorangan').DataTable().row.add(['-', '-', '-', 'Total', '1000', '-']).draw());
$('.dataTables_wrapper .row:nth-child(3)').addClass("bg-grey px-4 card-footer pb-1").css({
    'padding-top': '10px',
    'margin-top': '-8px'
})
$('.dataTables_wrapper .row:nth-child(3) .dataTables_info').addClass("p-0");
$('.dataTables_wrapper .row:nth-child(3) .dataTables_paginate').addClass("m-0");
$('table thead tr th:nth-child(1) label span').css('padding', '0px');
</script>