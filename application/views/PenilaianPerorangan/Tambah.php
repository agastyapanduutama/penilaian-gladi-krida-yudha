<?php
$DataDiri = $profil['nama'];
if (strlen($DataDiri) > 30)
    $DataDiri = substr($DataDiri, 0, 30) . '..';
$GetDay = $this->library->GetDay(date('D'));
$GetMonth = $this->library->GetMonth(date('M'));
$CombineTanggal = '<b>' . $GetDay . '</b>, ' . date('d') . ' ' . $GetMonth . ' ' . date('Y');

$this->load->view('Template/Link-css'); ?>
<?php
$this->load->view('Template/Header');
$this->load->view('Template/SubHeader');
$this->load->view('Template/TemplateTabsAnggota');
?>

<body class="">
    <div class="page">

        <div class="container">
            <!-- Content -->
            <?= form_open(base_url('penilaianperorangan/store'), ['id' => 'penilaian', 'autocomplete' => 'off']); ?>
            <div id="input-edit"></div>
            <input type="hidden" value="<?= $profil['id_anggota'] ?>" name='id_anggota'>
            <input type="hidden" value="<?= sha1($profil['id_kelompok']) ?>" name='id_kelompok'>
            <div class="row mt-3" id="page-1">
                <a href="<?= base_url('penilaianperorangan/' . $this->uri->segment(3)) ?>">
                    <i style="position:absolute; margin-left:-50px; margin-top:10px" class="text-primary fas fa-arrow-circle-left text-size-11"></i>
                </a>
                <div class="col-lg-3">

                    <div class="card">
                        <div class="card-header bg-primary">
                            <div class='w-100 text-center text-light montserrat-600 letter-spacing'>Data diri
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="text-center mt-3">
                                <i class="far fa-user text-muted" style="font-size:150px"></i>

                                <br />
                                <div class="d-flex letter-spacing justify-content-between mt-4">
                                    <div class="montserrat-600" style='font-size:12px;'>Nama</div>
                                    <div class="text-muted" style="font-size:12px"> <?= $DataDiri ?></div>
                                </div>

                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-600" style='font-size:12px;'>Pangkat</div>
                                    <div class="text-muted" style="font-size:12px">
                                        <b><?= !empty($profil['nama_pangkat']) ? $profil['nama_pangkat'] : '-';  ?></b>
                                    </div>
                                </div>

                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-600" style='font-size:12px;'>Jabatan</div>
                                    <div class="text-muted" style="font-size:12px">
                                        <b><?= !empty($profil['nama_pangkat']) ? $profil['nama_jabatan'] : '-';  ?></b>
                                    </div>
                                </div>

                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-600" style='font-size:12px;'>Kelompok</div>
                                    <div class="text-muted" style="font-size:12px"> <?= $profil['nama_kelompok'] ?>
                                    </div>
                                </div>
                                <div class="d-flex letter-spacing justify-content-between mt-2">
                                    <div class="montserrat-600" style='font-size:12px;'>Nilai Perorangan </div>
                                    <div class="text-muted" style="font-size:12px">
                                        <?= empty($NilaiAnggota) ? 0.00 : number_format($NilaiAnggota, 2) ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="card">

                        <div class="card-header bg-primary text-center d-flex justify-content-between ">
                            <div>&nbsp;</div>
                            <div class='ml-5 text-light montserrat-600 letter-spacing'>
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" />
                                    <polyline points="9 11 12 14 20 6" />
                                    <path d="M20 12v6a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h9" /></svg>
                                Penilaian perorangan
                            </div>
                            <i class='text-light montserrat-500'><?= $CombineTanggal ?></i>
                        </div>
                        <div class="card-body">

                            <div class="row">

                                <!-- Tipe Ceklis -->
                                <div class="col-lg-3"></div>
                                <div class="col-lg-6">
                                    <div class="input-icon">
                                        <div class="form-label">Tipe ceklis</div>
                                        <select class="form-select" id="ceklis" name="ceklis" required>
                                            <option value="">- Pilih tipe ceklis -</option>
                                            <?php foreach ($CollectionsCeklis as $list) : ?>
                                                <option value="<?= $list['id_ceklis'] ?>">
                                                    <?= $list['id_ceklis'] . ' - ' . $list['nama_ceklis'] ?>
                                                </option>
                                            <?php endforeach; ?>
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
                pesan_warning('Pesan', 'nilai melebihi <b>Maks</b>');
                that.value = 0;
            }

        }

        function show(data, count) {
            console.log(data)
            const source = data.collections;
            let html = "";
            html +=
                "<div class='col-lg-12 text-center montserrat-600 letter-spacing text-size-7 mb-4 mt-3 '>" +
                data.nama_ceklis + "</div>";
            html += "<table border=1 cellpadding=3 class='table table-bordered table-striped'>";
            html += "<tr>";
            html += "<th width=2% class='text-center'>NO</th>";
            html += "<th width=40%>TINDAKAN YANG DIHARAPKAN</th>";
            html += "<th width=2%>INDEK</th>";
            html += "<th width=10% class='text-center'>NILAI</th>";
            html += "<th width=5% class='text-center'>Maks</th>";
            html += "</tr>";
            let JmlIndeks = 0,
                totalMax = 0;
            let Edit = '',
                EditYN, Total = 0;
            let id_penilaian = null,
                id_detail_penilaian_perorangan = null;
            let html_input = '';
            for (let i = 0; i < count; i++) {
                if (data['mode'] == true) {
                    html_input += "<input type='hidden' name='id_detail_penilaian_perorangan[]' value='" + Encode(data[
                            'edit']
                        [
                            i
                        ][
                            'id_detail_penilaian_perorangan'
                        ], 3) + "'/>";
                }

                JmlIndeks += parseFloat(source[i]['indeks']);
                totalMax += parseFloat(source[i]['nilmax']);
                html += "<tr>";
                html += "<td class='text-center'>" + (i + 1) + "</td>";
                html += "<td>" + (source[i]['tindakan_macam']) + "</td>";
                html += "<td>" + (source[i]['indeks']) + "</td>";
                html += "<td><input type='number' step='0.1' max='" + source[i]['nilmax'] +
                    "' name='nilai[" + source[i]['id_soal_perorangan'] + "]' id='nilai-" + source[i]['id_soal_perorangan'] +
                    "' class='form-control nilai' value='" +
                    Edit +
                    "' placeholder='Nilai' required onchange='sumnilai(this.value," +
                    source[i]['nilmax'] + ",this)'></td>";
                html += "<td>" + source[i]['nilmax'] + "</td>";
                html += "</tr>";
            }

            html += "<tfoot>";
            html += "<tr>";
            html += "<th colspan=2 class='text-center montserrat-600'>TOTAL NILAI</th>";
            html += "<th class='text-center montserrat-600'>" + (JmlIndeks) + "</th>";
            html += "<th class='text-center montserrat-600' id='total_nilai'>" + (Total != 0 ? Total : 0) + "</th>";
            html += "<th class='text-center montserrat-600' id='total_max'>" + (totalMax != 0 ? totalMax : 0) + "</th>";
            html += "</tr>";
            html += "</tfoot>";
            html += "</table>";

            // button 
            if (data['mode'] == false) {

                html +=
                    "<button type='submit' class='btn btn-primary btn-block montserrat-600 letter-spacing' name='save'>" +
                    IconSave() +
                    "Simpan</button>";
                $('#penilaian').attr('action', url + router + 'store');
                $('#penilaian').attr('onsubmit',
                    "return confirm('Apakah data yang Anda masukan sudah benar ?, Enter / OK untuk melanjutkan')");
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
            for (let j = 0; j < data['edit'].length; j++) {
                Total += parseFloat(data['edit'][j]['nilai']);
                $('#nilai-' + data['edit'][j]['id_soal_perorangan']).val(data['edit'][j]['nilai']);
            }

            $('#total_nilai').text(Total);
        }
        $('#ceklis').change(function(evt) {
            const ceklis = $(this).val();
            if (ceklis != '') {
                const ValAnggota = $('input[name=id_anggota]').val();
                let data = {
                    'ceklis': ceklis,
                };
                $('#show').html(
                    "<br/> <div class='text-muted text-center'><span class='spinner-border spinner-border-md' role='status' aria-hidden='true'></span> Mencari dokumen</div>"
                );
                $.ajax({
                    url: url + router + 'dokumen/' + ValAnggota,
                    data: data,
                    type: 'GET',
                    dataType: 'json',
                    success: function(response) {
                        console.log(response)
                        if (response.count > 0) {
                            show(response, response.count)
                        } else {
                            pesan_warning('Pesan', 'sedang terjadi masalah');
                        }
                    }
                })
            } else {
                $('#show').html("");
                pesan_warning("Pesan", "Ceklis kosong !");
            }
        });
    </script>
</body>

</html>