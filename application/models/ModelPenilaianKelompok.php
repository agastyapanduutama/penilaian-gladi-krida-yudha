<?php

class ModelPenilaianKelompok extends CI_Model
{
    public $table = "penilaian_kelompok as penk";
    public $table1 = "kelompok as k";
    public $table2 = "anggota as a";
    public $table3  = "ceklis as c ";
    public $table4  = "soal_kelompok AS soalk ";
    public $table5  = "detail_penilaian_kelompok AS dpk ";
    public $table6 = "aktivitas as akt";
    public $column_order = array('k.nama_kelompok'); //field yang ada di table 
    public $column_search = array('k.nama_kelompok'); //field yang diizin untuk pencarian 
    public $order = array('id_kelompok' => 'desc'); // default order 

    function __construct()
    {
        parent::__construct();
    }

    public function TotalNilai($id)
    {
        $this->db->select("(SUM(dpper.nilai) FROM detail_penilaian_perorangan as dpper WHERE dpper.id_anggota = a.id_anggota) AS total_nilai");
        $this->db->from($this->table2);
        $this->db->join($this->table1, 'a.id_kelompok = k.id_kelompok', 'inner');
        $this->db->where('sha1(k.id_kelompok)', $id);
        $Req = $this->db->get()->result();
        $data = 0;
        foreach ($Req as $key) {
            $data += $key->total_nilai;
        }
        return $data;
    }
    public function NilaiTelegram($id)
    {
        $this->db->select("(akt.h + akt.h1 + akt.h2 + akt.h3) AS total_telegram");
        $this->db->from('aktivitas as akt');
        $this->db->where([
            'sha1(akt.id_kelompok)' => $id,
            'tipe' => '2'
        ]);
        $Req = $this->db->get()->result();
        $data = 0;
        foreach ($Req as $key) {
            $data += $key->total_telegram;
        }
        // $this->library->printr($Req);
        return $data;
    }

    public function NilaiTelepon($id)
    {
        $this->db->select("(akt.h + akt.h1 + akt.h2 + akt.h3) AS total_telepon");
        $this->db->from('aktivitas as akt');
        $this->db->where([
            'sha1(akt.id_kelompok)' => $id,
            'tipe' => '3'
        ]);
        $Req = $this->db->get()->result();
        $data = 0;
        foreach ($Req as $key) {
            $data += $key->total_telepon;
        }
        // $this->library->printr($Req);
        return $data;
    }



    public function ReadCeklis($where = null)
    {
        $this->db->select('c.id_ceklis, c.nama_ceklis');
        $this->db->from($this->table3);
        $AddWhere['tipe'] = 2;
        if ($where != null)
            $AddWhere['c.id_ce klis'] = $where;

        $this->db->where($AddWhere);
        $this->db->order_by('c.id_ceklis', 'ASC');
        $GetData = $this->db->get();
        $data['collections'] = [];
        $data['count'] = 0;
        if ($GetData->num_rows() > 0) {
            $data['collections'] = $GetData;
            $data['count'] = $GetData->num_rows();
        }

        return $data;
    }

    public function ReadKelompokInfo($id)
    {
        $this->db->select("k.id_kelompok, 
                           k.nama_kelompok,
                           (SELECT COUNT(agt.id_anggota) FROM anggota agt WHERE k.id_kelompok = agt.id_kelompok) AS jumlah_anggota");
        $this->db->from($this->table1);
        $this->db->where('sha1(k.id_kelompok)', $id);
        $data =  $this->db->get();

        $SetData['collections'] = [];
        $SetData['count'] = 0;
        if ($data->num_rows() > 0) {
            // $this->library->printr($s);
            $SetData['collections'] = $data;
            $SetData['count'] = $data->num_rows();
        }
        return $SetData;
    }

    public function ReadSoal($ceklis)
    {
        $this->db->select('soalk.id_soal_kelompok, soalk.aspek, soalk.tipe_nilai, soalk.maks,
        (SELECT ck.nama_ceklis FROM ceklis ck WHERE soalk.id_ceklis = ck.id_ceklis) AS nama_ceklis');
        $this->db->from($this->table4);
        $this->db->where('soalk.id_ceklis', $ceklis);
        $GetData = $this->db->get();
        $data['collections'] = [];
        $data['count'] = 0;
        if ($GetData->num_rows() > 0) {
            $data['nama_ceklis'] = $GetData->row()->nama_ceklis;
            $data['collections'] = $GetData;
            $data['count'] = $GetData->num_rows();
        }

        return $data;
    }
    public function ReadKelompok()
    {
        $this->db->select('k.nama_kelompok, k.id_kelompok');
        $this->db->from($this->table1);
        $GetData = $this->db->get();
        $data['collections'] = [];
        $data['count'] = 0;
        if ($GetData->num_rows() > 0) {
            $data['collections'] = $GetData;
            $data['count'] = $GetData->num_rows();
        }

        return $data;
    }
    private function _get_datatables_query($id = null)
    {

        $this->db->select("k.id_kelompok, 
                           k.nama_kelompok,
                           (SELECT COUNT(agt.id_anggota) FROM anggota agt WHERE k.id_kelompok = agt.id_kelompok) AS jumlah_anggota,
                           (SELECT SUM(dpk.nilai) FROM detail_penilaian_kelompok as dpk WHERE dpk.id_kelompok = k.id_kelompok) AS nilai_produk");

        $this->db->from($this->table1);
        $kelompokna = json_decode($_SESSION['akses_kelompok']);
        $hehe = 0;
        foreach ($kelompokna as $key) {
            if ($hehe === 0) {
                $this->db->where(['k.nama_kelompok' => $key->value]);
            } else {
                $this->db->or_where(['k.nama_kelompok' => $key->value]);
            }
            $hehe++;
        }
        if ($id != null)
            $this->db->where('sha1(k.id_kelompok)', $id);

        $i = 0;

        foreach ($this->column_search as $item) {
            if (!empty($_POST['search']['value'])) {

                if ($i === 0) {
                    $this->db->group_start();
                    $this->db->like($item, $_POST['search']['value']);
                } else {
                    $this->db->or_like($item, $_POST['search']['value']);
                }

                if (count($this->column_search) - 1 == $i)
                    $this->db->group_end();
            }
            $i++;
        }

        if (isset($_POST['order'])) {
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } else if (isset($this->order)) {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
    }

    private function _get_datatables_query2($ceklis = null)
    {
        $this->db->select("a.nrp, 
                           a.nama,
                           (SELECT p.nama_pangkat FROM pangkat p WHERE p.id_pangkat = a.id_pangkat) AS nama_pangkat,
                           k.nama_kelompok,
                           c.id_ceklis,
                           c.nama_ceklis,
                           (SELECT SUM(dpp.nilai) FROM {$this->table5} WHERE dpp.id_penilaian_perorangan = pen.id_penilaian_perorangan) AS total_nilai");

        $this->db->from($this->table);
        $this->db->join($this->table2, 'a.id_anggota = pen.id_anggota', 'inner');
        $this->db->join($this->table3, 'c.id_ceklis = pen.id_ceklis', 'inner');
        $this->db->join($this->table4, 'k.id_kelompok = pen.id_kelompok', 'inner');
        $i = 0;

        foreach ($this->column_search as $item) {
            if ($_POST['search']['value']) {

                if ($i === 0) {
                    $this->db->group_start();
                    $this->db->like($item, $_POST['search']['value']);
                } else {
                    $this->db->or_like($item, $_POST['search']['value']);
                }

                if (count($this->column_search) - 1 == $i)
                    $this->db->group_end();
            }
            $i++;
        }

        if (isset($_POST['order'])) {
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } else if (isset($this->order)) {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
    }

    function get_datatables($id = null)
    {
        $this->_get_datatables_query($id);
        if ($_POST['length'] != -1)
            $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        $data['count'] = 0;
        $data['collections'] = [];
        if ($query->num_rows() > 0) {
            $data['count'] =  $query->num_rows();
            $data['collections'] = $query->result_array();
        }
        return $data;
    }

    function count_filtered()
    {
        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function count_all()
    {
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }


    function cekPerubahan()
    {
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

    function insert($data)
    {
        $this->db->insert($this->table, $data);
        return $this->cekPerubahan();
    }

    function update($data, $where)
    {
        $this->db->where($where);
        $this->db->update($this->table, $data);
        return $this->cekPerubahan();
    }

    function delete($where)
    {
        $this->db->where($where);
        $this->db->delete($this->table);
        return $this->cekPerubahan();
    }

    public function Store($data = null)
    {
        if (!is_array($data)) return false;

        // insert data ke penilaian kelompok
        $DataPenilaian = [
            'id_kelompok'  => $data['id_kelompok'],
            'id_ceklis'    => $data['id_ceklis'],
            'ket'          => $data['ket']
        ];
        $this->db->insert('penilaian_kelompok', $DataPenilaian);
        $id = $this->db->insert_id();

        $message = [
            'status' => 400,
            'message' => 'kolom ada yang kosong'
        ];

        if (count($data['id_soal_kelompok']) == count($data['nilai'])) {

            $x = 0;
            foreach ($data['id_soal_kelompok'] as $list) {
                // insert data detail penilaian perorangan
                $DataDetailPenilaian = [
                    'id_penilaian_kelompok'    => $id,
                    'id_soal_kelompok'         => $this->library->Decode($list, 3),
                    'id_kelompok'              => $data['id_kelompok'],
                    'id_ceklis'              => $DataPenilaian['id_ceklis'],
                    'nilai'                    => $data['nilai'][$x++],
                ];
                $this->db->insert('detail_penilaian_kelompok', $DataDetailPenilaian);
            }
            $message = [
                'status' => 200,
                'message' => 'ok'
            ];
        }

        return $message;
    }

    public function StoreTel($data = null)
    {
        if (!is_array($data)) return false;

        // insert data ke penilaian kelompok
        $DataPenilaian = [
            'id_kelompok'  => $data['id_kelompok'],
            'id_ceklis'    => $data['id_ceklis'],
            'ket'          => $data['ket']
        ];
        $this->db->insert('penilaian_kelompok', $DataPenilaian);
        $id = $this->db->insert_id();

        $message = [
            'status' => 400,
            'message' => 'kolom ada yang kosong'
        ];


        // insert data aktivitas
        $DataDetailPenilaian = [
            'id_kelompok'              => $data['id_kelompok'],
            'id_ceklis'              => $DataPenilaian['id_ceklis'],
            'h'                    => $data['H'],
            'h1'                    => $data['H_1'],
            'h2'                    => $data['H_2'],
            'h3'                    => $data['H_3'],
            'h3'                    => $data['H_3'],
            'tipe'                  => $data['tipe_nilai']
        ];
        $this->db->insert('aktivitas', $DataDetailPenilaian);
        $message = [
            'status' => 200,
            'message' => 'ok'
        ];

        return $message;
    }

    public function StoreUpdateTel($data = null)
    {
        if (!is_array($data)) return false;
        $counter = 0;
        // $this->library->printr($data);
        $SetData = [
            'h' => $data['h'],
            'h1' => $data['h1'],
            'h2' => $data['h2'],
            'h3' => $data['h3'],
        ];
        $this->db->where(['id_aktivitas' => $data['id_aktivitas']]);
        $this->db->update('aktivitas', $SetData);
    }


    public function StoreUpdate($data = null)
    {
        if (!is_array($data)) return false;
        if (count($data['id_soal_kelompok']) == count($data['nilai'])) {
            $counter = 0;
            // $this->library->printr($data);
            foreach ($data['nilai'] as $list) :
                $SetData = [
                    'nilai' => $list,
                ];
                $this->db->where(['id_detail_penilaian_kelompok' => $this->library->Decode($data['id_detail_penilaian_kelompok'][$counter], 3)]);
                $this->db->update($this->table5, $SetData);

                $counter++;
            endforeach;
            $this->db->where([
                'id_kelompok' => $data['id_kelompok'],
                'id_ceklis'   => $data['id_ceklis']
            ]);
            $this->db->update($this->table, ['ket' => $data['ket']]);

            return true;
        }

        return false;
    }

    public function ReadAnggotaPenilaian($param)
    {
        $this->db->select(' a.nama, a.id_anggota');
        $this->db->from($this->table2);
        $this->db->join($this->table, 'a.id_anggota = pen.id_anggota', 'inner');
        $this->db->group_by('id_anggota');
        $GetData = $this->db->get();
        $data['collections'] = [];
        $data['count'] = 0;
        if ($GetData->num_rows() > 0) {
            $data['collections'] = $GetData;
            $data['count'] = $GetData->num_rows();
        }
        return $data;
    }

    public function CekUpdateAdd($data)
    {
        try {
            // read data penilaian perorangan
            $param = [
                'id_anggota' => $data['id_anggota'],
                'id_ceklis'  => $data['id_ceklis']
            ];

            $query = $this->db->get_where($this->table, $param);

            // cek ketersediaan data
            if ($query->num_rows() > 0) {
                // mode edit                
                $source = $query->row();
                $IdPenilaianPerorangan = $source->id_penilaian_perorangan;
                $IdSoalPerorangan = $data['id_soal_perorangan'];
                $ReadDetailPenilaian = $this->db->get_where($this->table5, [
                    'dpp.id_soal_perorangan' => $IdSoalPerorangan,
                    'dpp.id_penilaian_perorangan' => $IdPenilaianPerorangan
                ]);
                if ($ReadDetailPenilaian->num_rows() <= 0)
                    throw new Exception('Data penilaian Kosong');


                foreach ($ReadDetailPenilaian as $list) :
                    $DataUpdate = [
                        'nilai'
                    ];

                endforeach;

                $this->db->update($this->table5, []);
            }


            $message = [
                'status' => 200,
                'message' => 'ok',
                'data'   => ''
            ];
        } catch (Exception $Error) {
            $message = [
                'status' => 400,
                'message' => $Error->getMessage()
            ];
        } catch (Throwable $Error) {
            $message = [
                'status' => 400,
                'message' => 'Throwable ' . $Error->getMessage()
            ];
        } finally {
            return $message;
        }
    }

    public function NilaiProduk($IdKelompok)
    {
        // table => penilaian_kelompok
        // table1 => kelompok
        // table5 => detail_penilaian_kelompok
        $this->db->select("SUM(dpk.nilai) AS nilai_produk");
        $this->db->from($this->table5);
        $this->db->join($this->table3, 'dpk.id_ceklis = c.id_ceklis');
        $where = [
            'sha1(dpk.id_kelompok)' => $IdKelompok,
            'c.tipe' => 1,
        ];
        $this->db->where($where);
        $Req = $this->db->get()->result();
        $data = 0;
        foreach ($Req as $key) {
            $data += $key->nilai_produk;
        }
        return $data;
    }

    public function NilaiPosko($IdKelompok)
    {
        // table => penilaian_kelompok
        // table1 => kelompok
        // table5 => detail_penilaian_kelompok
        $this->db->select("SUM(dpk.nilai) AS nilai_posko");
        $this->db->from($this->table5);
        $this->db->join($this->table3, 'dpk.id_ceklis = c.id_ceklis');
        $where = [
            'sha1(dpk.id_kelompok)' => $IdKelompok,
            'c.tipe' => 4,
        ];
        $this->db->where($where);
        $Req = $this->db->get()->result();
        $data = 0;
        foreach ($Req as $key) {
            $data += $key->nilai_posko;
        }
        return $data;
    }

    public function EditPenilaian($data)
    {
        // panggil tabel penilaian aktivitas
        $data["DATE_FORMAT(penk.tgl,'%Y-%m-%d')"] = date('Y-m-d');
        $Req = $this->db->get_where($this->table, $data);

        // cek kalau data nya ada , maka jalankan mode edit
        $mode['edit'] = false;
        // $this->library->printr($Req->result_array());
        if ($Req->num_rows() == 1) {

            $source = $Req->row();
            $SetData = [
                'id_penilaian_kelompok'  => $source->id_penilaian_kelompok
            ];

            $DataEdit = $this->db->get_where($this->table5, $SetData);

            // panggil tabel detail penilaian anggota
            $mode['edit'] = true;
            $mode['EditData'] = $DataEdit->result_array();
            $mode['ket'] = $source->ket;
        } else {
            $mode['edit'] = false;
            $mode['EditData'] = [];
        }
        return $mode;
    }


    public function EditPenilaianAktivitas($data)
    {
        // panggil tabel penilaian aktivitas
        $data["DATE_FORMAT(aktivitas.tgl,'%Y-%m-%d')"] = date('Y-m-d');

        $Req = $this->db->get_where('aktivitas', $data);


        // cek kalau data nya ada , maka jalankan mode edit
        $mode['mode'] = false;
        $mode['EditData'] = [];
        $mode['count'] = 0;
        $mode['tipe'] = null;
        if ($Req->num_rows() == 1) {

            $source = $Req->row();
            $mode['tipe'] = $source->tipe == 1 ? 'TELEGRAM' : 'TELEPON';
            $mode['mode'] = true;
            $mode['EditData'] = $source;
            $mode['count'] = $Req->num_rows();
        }
        return $mode;
    }
}