<?php
$DataDiri = $profil['nama_kelompok'];
if (strlen($DataDiri) > 30)
    $DataDiri = substr($DataDiri, 0, 30) . '..';
$NilaiKelompok = (($NilaiPosko * 20) + ($NilaiProduk * 60) + ($NilaiTelegram * 10) + ($NilaiTelepon * 10)) / 100;
$NilaiAkhir = number_format(($NilaiKelompok + $TotalNilai) / 2, 2);
$GetDay = $this->library->GetDay(date('D'));
$GetMonth = $this->library->GetMonth(date('M'));
$CombineTanggal = '<b>' . $GetDay . '</b>, ' . date('d') . ' ' . $GetMonth . ' ' . date('Y');

$this->load->view('Template/Link-css'); ?>
<style>
    .text-size-profile {
        font-size: 1.7vh;
    }
</style>
<?php
$this->load->view('Template/Header');
$this->load->view('Template/SubHeader');
$level = $_SESSION['level'];
?>

<body class="">
    <div class="page">

        <div class="container">
            <?php $this->load->view('Template/TemplateTabs'); ?>
            <!-- Content -->
            <?= form_open(base_url('penilaiankelompok/store'), ['id' => 'penilaian', 'autocomplete' => 'off']); ?>
            <div id="input-edit"></div>
            <input type="hidden" value="<?= $profil['id_kelompok'] ?>" name='id_kelompok' id="id_kelompok">
            <div class="row mt-3" id="page-1">
                <!-- BACK -->
                <a href="<?= base_url('penilaiankelompok/') ?>">
                    <i style="position:absolute; margin-left:-50px; margin-top:10px" class="text-primary fas fa-arrow-circle-left text-size-11"></i>

                </a>
                <!-- BACK -->

                <div class="col-lg-3">

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
                                    <div class="montserrat-600" style='font-size:12px;'>Kelompok</div>
                                    <div class="text-muted text-size-profile"> <?= $DataDiri ?></div>
                                </div>

                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-600" style='font-size:12px;'>Jumlah </div>
                                    <div class="text-muted text-size-profile"> <b><?= $profil['jumlah_anggota'] ?>
                                            Anggota</b>
                                    </div>
                                </div>

                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-600" style='font-size:12px;'>Nilai Produk</div>
                                    <div class="text-muted text-size-profile">
                                        <b><?= number_format($NilaiProduk, 2) ?></b>
                                    </div>
                                </div>

                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-600" style='font-size:12px;'>Nilai Posko </div>
                                    <div class="text-muted text-size-profile">
                                        <b></b><?= number_format($NilaiPosko, 2) ?></b>
                                    </div>
                                </div>


                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-600" style='font-size:12px;'>Nilai Telepon</div>
                                    <div class="text-muted text-size-profile">
                                        <b><?= number_format($NilaiTelepon, 2) ?></b>
                                    </div>
                                </div>

                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-600" style='font-size:12px;'>Nilai Telegram</div>
                                    <div class="text-muted text-size-profile">
                                        <b><?= number_format($NilaiTelegram, 2) ?></b>
                                    </div>
                                </div>

                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-600" style='font-size:12px;'>Nilai Kelompok</div>
                                    <div class="text-muted text-size-profile">
                                        <b><?= number_format($NilaiKelompok, 2) ?></b>
                                    </div>
                                </div>
                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-600" style='font-size:13px;'>Nilai keseluruhan anggota</div>
                                    <div class="text-muted text-size-profile">
                                        <b><?= number_format($TotalNilai, 2) ?></b>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <?php if ($level == 1) { ?>
                            <div class="card-footer">
                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-700" style='font-size:12px;'>Nilai Akhir</div>
                                    <div class="text-muted text-size-profile"> <b><?= $NilaiAkhir ?></b>
                                    </div>
                                </div>

                            </div>
                        <?php } ?>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="card">

                        <div class="card-header bg-primary d-flex justify-content-between ">
                            <div>&nbsp;</div>
                            <div class='ml-5 text-light montserrat-600 letter-spacing'>
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" />
                                    <polyline points="9 11 12 14 20 6" />
                                    <path d="M20 12v6a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h9" /></svg>
                                Penilaian kelompok
                            </div>
                            <i class='text-light montserrat-500'><?= $CombineTanggal ?></i>

                        </div>
                        <div class="card-body">

                            <div class="row">
                                <?php
                                $level = $_SESSION['level'];
                                $akses = $_SESSION['akses'];
                                $aksesna = "";
                                // $this->req->print($_SESSION);
                                if ($level != 1) {
                                    if ($akses != '') {
                                        $aksesna_ = json_decode($akses);
                                        foreach ($aksesna_ as $key) {
                                            $aksesna .= $key->value;
                                        }
                                    }
                                }
                                if ($level == 1) {
                                    $aksesUser = '1,2,3,4';
                                } else {
                                    $aksesUser = $aksesna;
                                }
                                $akses = array(
                                    '1' => 'Penilaian Produk',
                                    '2' => 'Penilaian Telegram',
                                    '3' => 'Penilaian Telepon',
                                    '4' => 'Penilaian Posko'
                                );
                                ?>
                                <!-- Tipe nilai -->
                                <div class="col-lg-3"></div>
                                <div class="col-lg-6">
                                    <div class="input-icon">
                                        <div class="form-label">Tipe nilai</div>
                                        <select class="form-select" id="tipe_nilai" name="tipe_nilai" required>
                                            <option value="">- Pilih tipe nilai -</option>
                                            <?php foreach ($akses as $key => $value) : ?>
                                                <?php if (strpos($aksesUser, strval($key)) > -1) : ?>
                                                    <option value="<?= $key ?>"><?= $value ?></option>
                                                <?php endif ?>
                                            <?php endforeach ?>

                                        </select>
                                    </div>
                                </div>
                                <!-- /Tipe nilai -->
                            </div>


                            <div class="row mt-3">
                                <!-- Tipe Ceklis -->
                                <div class="col-lg-3"></div>
                                <div class="col-lg-6">
                                    <div class="input-icon">
                                        <div class="form-label">Ceklis</div>
                                        <select class="form-select" id="ceklis" name="ceklis" required>
                                            <option value="">- Pilih Ceklis -</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- /Tipe Ceklis -->

                            </div>

                            <div id="show"></div>

                            <!-- /Content -->
                        </div>
                    </div>
                </div>
            </div>

            <?= form_close() ?>

        </div>
    </div>
    <?php
    $this->load->view('Template/Link-js'); ?>
    <script>
        function IconSave() {
            return "<svg xmlns='http://www.w3.org/2000/svg' class='icon icon-md' width='24' height='24' viewBox='0 0 24 24' stroke-width='2' stroke='currentColor' fill='none' stroke-linecap='round' stroke-linejoin='round'> <path stroke='none' d='M0 0h24v24H0z'></path> <path d='M6 4h10l4 4v10a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2'></path> <circle cx='12' cy='14' r='2'></circle> <polyline points='14 4 14 8 8 8 8 4'></polyline> </svg>";
        }

        function sumnilai(val, indeks, that) {
            const data = $('.nilai');
            let TampungNilai = 0;
            for (let i = 0; i < data.length; i++) {
                if (!isNaN(parseFloat(data.eq(i).val())))
                    TampungNilai += parseFloat(data.eq(i).val());
            }

            $('#total_nilai').html(TampungNilai)
            if (val > indeks || val < 0) {
                pesan_warning('Pesan', 'nilai melebihi <b>MAKS</b>');
                that.value = 0;
            }

        }
        $('#tipe_nilai').change(function(evt) {
            const val = $(this).val();
            const tipe_nilai = $('#tipe_nilai').val();
            $('#ceklis').html("<option value=''>- Pilih tipe ceklis -</option>");
            $('#show').html('');
            if (val == '')
                $('#ceklis').html("<option value=''>- Pilih tipe ceklis -</option>");
            else {

                $.ajax({
                    url: url + router + 'ajaxtipe',
                    data: {
                        'data': val
                    },
                    type: 'GET',
                    success: function(response) {
                        const parse = JSON.parse(response);
                        // console.log(parse);
                        if (parse.count > 0) {
                            let html = '';
                            let data = parse.collections;
                            html +=
                                "<option value=''>- Pilih tipe ceklis -</option>"
                            for (let i = 0; i < parse.count; i++) {
                                html += "<option value='" + data[i]['id_ceklis'] +
                                    "'>" + data[i][
                                        'id_ceklis'
                                    ] + ' - ' + data[i]['nama_ceklis'] +
                                    "</option>>"
                            }
                            $('#ceklis').html(html);
                        } else {
                            pesan_warning('Pesan', 'Ceklis belum tersedia')
                        }
                    }
                })


            }
        });

        function show(data, count) {
            // console.log(data['edit']);
            const source = data.CollectionsSoal;
            let html = "";
            html +=
                "<div class='col-lg-12 text-center montserrat-600 letter-spacing text-size-7 mb-4 mt-3 '>" +
                data.nama_ceklis + "</div>";
            html += "<table border=1 cellpadding=3 class='table table-bordered table-striped'>";
            html += "<tr>";
            html += "<th width=2% class='text-center'>NO</th>";
            html += "<th width=40%>ASPEK YANG DINILAI</th>";
            html += "<th width=2%>MAKS</th>";
            html += "<th width=10% class='text-center'>NILAI</th>";
            html += "</tr>";
            let JmlIndeks = 0;
            let Edit, Total = 0;
            let id_penilaian = null,
                id_detail_penilaian_kelompok = null;
            let html_input = '';
            for (let i = 0; i < count; i++) {
                Edit = '';
                EditYN = '';
                if (data['edit'].length > 0) {
                    id_detail_penilaian_kelompok = data['edit'][i]['id_detail_penilaian_kelompok'];
                    Edit = data['edit'][i]['nilai'];
                    Total += parseFloat(Edit);
                    html_input +=
                        "<input type='hidden' name='id_detail_penilaian_kelompok[]' value='" +
                        Encode(id_detail_penilaian_kelompok, 3) + "' />";
                }
                JmlIndeks += parseFloat(source[i]['maks']);
                html += "<tr>";
                html += "<td class='text-center'>" + (i + 1) + "</td>";
                html += "<td>" + (source[i]['aspek']) + "</td>";
                html += "<td>" + (source[i]['maks']) + "</td>";
                html += "<td><input type='number' step='0.1' max='" + source[i]['maks'] +
                    "' name='nilai[]' class='form-control nilai' value='" + Edit +
                    "' placeholder='Nilai' required onchange='sumnilai(this.value," +
                    source[i]['maks'] + ",this)'></td>";
                html += "<input type='hidden' name='id_soal_kelompok[]' value='" + Encode(source[i][
                            'id_soal_kelompok'
                        ],
                        3) +
                    "' />";

            }
            html += "<tfoot>";
            html += "<tr>";
            html += "<th colspan=2 class='text-center montserrat-600'>TOTAL NILAI</th>";
            html += "<th class='text-center montserrat-600'>" + (JmlIndeks) + "</th>";
            html += "<th class='text-center montserrat-600' id='total_nilai'>" + (Total != 0 ?
                Total : 0) + "</th>";
            html += "</tr>";
            html += "</tfoot>";
            html += "</table>";

            // keterangan
            html +=
                "<div class='container'><div class='row mt-3 mb-3'><label class='form-label'>Keterangan</label><textarea id='keterangan' placeholder='Masukan keterangan (Opsional)' name='ket' class='form-control' ></textarea></div></div>";
            // button 
            if (data['edit'] == false) {
                $('#penilaian').attr('action', url + router + 'store');
                $('#penilaian').attr('onsubmit',
                    "return confirm('Apakah data yang Anda masukan sudah benar ?, Enter / OK untuk melanjutkan')");
                let pesan = "Apakah anda yakin, memberi nilai pada penilaian produk ini ?";
                html +=
                    "<button onclick='return confirm(" + pesan +
                    ") ' type=' submit ' class='btn btn-primary btn-block montserrat-600 letter-spacing' name='save '>" +
                    IconSave() +
                    "Simpan</button>";
            } else {
                $('#penilaian').attr('action', url + router + 'update');
                $('#penilaian').attr('onsubmit',
                    "return confirm('Apakah data yang Anda masukan sudah benar ?, Enter / OK untuk melanjutkan')");
                $('#input-edit').html(html_input)
                html +=
                    "<button type='submit' class='btn btn-warning btn-block montserrat-700 letter-spacing' name='save'>" +
                    IconSave() +
                    "Ubah</button>";
            }
            $('#show').html(html);
        }

        function ShowActivity(data, count) {
            // console.log(data);
            const source = data.EditData;
            let html = "";

            html += "<table class='table table-striped' style='width:100%'>";

            let h = '',
                h1 = '',
                h2 = '',
                h3 = '',
                Total = 0;
            let id_aktivitas = '';
            let html_input = '';
            if (data.mode == true) {
                // mode edit
                id_aktivitas = source.id_aktivitas
                h = source.h;
                h1 = source.h1;
                h2 = source.h2;
                h3 = source.h3;
            }
            html += "<input type='hidden' name='id_aktivitas' value='" + Encode(id_aktivitas, 3) + "'";
            html += "<tr>";
            html += "<td>H</td>";
            html += "<td><input type='number' name='H' step='0.1' value='" + h + "'/></td>";
            html += "</tr>";

            html += "<tr>";
            html += "<td>H+1</td>";
            html += "<td><input type='number' name='H_1' step='0.1' value='" + h1 + "'/></td>";
            html += "</tr>";

            html += "<tr>";
            html += "<td>H+2</td>";
            html += "<td><input type='number' name='H_2' step='0.1' value='" + h2 + "'/></td>";
            html += "</tr>";

            html += "<tr>";
            html += "<td>H+3</td>";
            html += "<td><input type='number' name='H_3' step='0.1' value='" + h3 + "'/></td>";
            html += "</tr>";

            html += "</table>";


            // button 
            if (data.mode == false) {
                $('#penilaian').attr('action', url + router + 'storetel');
                html +=
                    "<button type='submit' class='btn btn-primary btn-block montserrat-600 letter-spacing' name='save'>" +
                    IconSave() +
                    "Simpan</button>";
            } else {
                $('#penilaian').attr('action', url + router + 'updatetel');
                $('#input-edit').html(html_input)
                html +=
                    "<button type='submit' onclick='return confirm('Press a button!')' class='btn btn-warning btn-block montserrat-700 letter-spacing' name='save'>" +
                    IconSave() +
                    "Ubah</button>";
            }
            $('#show').html(html);
        }


        $('#ceklis').change(function(evt) {
            const ceklis = $(this).val();
            const tipe_nilai = $('#tipe_nilai').val();
            let data = {
                'ceklis': ceklis,
            };
            $('#show').html(
                "<br/> <div class='text-muted text-center'><span class='spinner-border spinner-border-md' role='status' aria-hidden='true'></span> Mencari dokumen</div>"
            );
            const ValKelompok = $('#id_kelompok').val();
            if (tipe_nilai == 2 || tipe_nilai == 3) {
                data = {
                    'ceklis': ceklis,
                    'TipeNilai': tipe_nilai
                };
                $.ajax({
                    url: url + router + 'ajaxtel/' + ValKelompok,
                    data: data,
                    type: 'GET',
                    success: function(response) {
                        const parse = JSON.parse(response);
                        ShowActivity(parse, parse.count)

                    }
                })
            } else if (tipe_nilai == 1 || tipe_nilai == 4) {

                $.ajax({
                    url: url + router + 'dokumen/' + ValKelompok,
                    data: data,
                    type: 'GET',
                    success: function(response) {
                        const parse = JSON.parse(response);
                        console.log(response);
                        if (parse.CountSoal > 0) {
                            show(parse, parse.CountSoal)
                            $('textarea#keterangan').val(parse.ket)

                        } else {
                            pesan_warning('Pesan', 'sedang terjadi masalah');
                        }
                    }
                })
            }


        });
    </script>
</body>

</html>
</script>
</body>

</html>