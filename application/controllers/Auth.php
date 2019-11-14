<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
	}
	public function index()
	{
		$data['title']='WPU User Login';
		$this->load->view('templates/auth_header',$data);
		$this->load->view('auth/login');
		$this->load->view('templates/auth_footer');
	}

	public function registration()
	{
		$this->form_validation->set_rules('email','Email','trim|required|valid_email|is_unique[user.email]',[
			'is_unique'=> 'This Email Has already registered!'
		]);

		$this->form_validation->set_rules('name','Name','trim|required');
		$this->form_validation->set_rules('password1','Password','trim|required|min_length[3]|matches[password2]',[
			'matches' => 'Password dont match!',
			'min_length' => 'Password Too Short'
			]);
			$this->form_validation->set_rules('password2','Password','trim|required|matches[password1]');


		if($this->form_validation->run()==false){
			$data['title']='WPU User Registration';
			$this->load->view('templates/auth_header',$data);
			$this->load->view('auth/registration');
			$this->load->view('templates/auth_footer');
		}else{
			$data=[

				'name' =>htmlspecialchars($this->input->post('name',true)),
				'email' =>htmlspecialchars($this->input->post('email',true)),
				'image' =>'default.jpg',
				'password' =>password_hash(htmlspecialchars($this->input->post('password1')),PASSWORD_DEFAULT),
				'role_id'=>2,
				'is_active'=>1,
				'date_created'=>time(),
			];
			$this->db->insert('user',$data);
			$this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Congratulation! your account has been created, please Login</div>');
            redirect('auth');
		}
	}


}
