<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kelompok extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->Import();
        if (!$this->session->userdata('logged_in')) {
            redirect(base_url('Login'));
        }
    }

    private function Import()
    {
        $this->load->model('ModelKelompok', 'Kelompok');
        $this->load->library('Library');
    }
    public function index()
    {
        $this->load->view('Kelompok/Data');
    }

    public function Get()
    {
        error_reporting(0);
        $list = $this->Kelompok->get_datatables();
        $no = $_POST['start'];

        $data = [];
        foreach ($list as $field) {

            $id = sha1($field->id_kelompok);
            $row = array();
            // $row[] = "<label class='pure-material-checkbox'>
            //             <input type='checkbox' class='subSelect' name='selectKelompok[]' value='" . $id . "'>
            //             <span></span>
            //             </label>";
            $button = "
                <button class='btn btn-danger btn-sm' id='delete' data-id='$id'><i class='fas fa-trash-alt'></i></button>
                <button class='btn btn-warning btn-sm' id='edit' data-id='$id'><i class='fas fa-pencil-alt'></i></button>
            ";
            $row[] = $field->nama_kelompok;
            $row[] = $button;
            $data[] = $row;
            $no++;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->Kelompok->count_all(),
            "recordsFiltered" => $this->Kelompok->count_filtered(),
            "data" => $data,
        );
        echo json_encode($output);
    }

    function getData($id)
    {
        $data = $this->Kelompok->get($id);
        foreach ($data as $key => $value) {
            if (strtolower($key) == 'id_kelompok') {
                $data->$key = sha1($value);
            }
        }
        echo json_encode($data);
    }

    public function store()
    {
        $data = $this->req->all();
        if ($this->Kelompok->insert($data) == true) {
            $msg = array(
                'status' => 'ok',
                'msg' => 'Berhasil menambah data !'
            );
            echo json_encode($msg);
        } else {
            $msg = array(
                'status' => 'fail',
                'msg' => 'Gagal menambah data !'
            );
            echo json_encode($msg);
        }
    }

    public function update()
    {
        $id = $this->input->post('id_kelompok');
        $data = $this->req->all(['id_kelompok' => false]);
        if ($this->Kelompok->update($data, array('sha1(id_Kelompok)' => $id)) == true) {
            $msg = array(
                'status' => 'ok',
                'msg' => 'Berhasil mengubah data !'
            );
        } else {
            $msg = array(
                'status' => 'fail',
                'msg' => 'Gagal mengubah data !'
            );
        }
        echo json_encode($msg);
    }

    public function delete($id)
    {
        if ($this->Kelompok->delete(array('sha1(id_kelompok)' => $id)) == true) {
            $msg = array(
                'status' => 'ok',
                'msg' => 'Berhasil menghapus data !'
            );
            echo json_encode($msg);
        } else {
            $msg = array(
                'status' => 'fail',
                'msg' => 'Gagal menghapus data !'
            );
            echo json_encode($msg);
        }
    }
}
