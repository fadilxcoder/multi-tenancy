<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function __construct()
    {
        parent::__construct();
    }
    
	public function index()
	{
		$data = $this->db->select('*')->from('client')->get();
		$result = $data->result_object();
		
		foreach($result as $r):
			echo '<a href="' . base_url('welcome/profil/' . $r->url) . '" target="_blank">' . $r->url . '</a><br>';
		endforeach;
	}
	
	public function profil($url)
	{
		$data = $this->db->select('*')->from('client')->where(['url' => $url])->get()->row();
		$dsn = $data->db_connection;
		
		$this->db = $this->load->database($dsn, true);
		
		$dbData = $this->db->select('*')->from('tbl_1')->get()->result_object();
		var_dump($dbData);
		
		$dbData = $this->db->select('*')->from('tbl_2')->get()->result_object();
		var_dump($dbData);
		
		$dbData = $this->db->select('*')->from('tbl_3')->get()->result_object();
		var_dump($dbData);
	}

}
