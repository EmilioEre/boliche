<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Boliche extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('bandeja');
	}
	public function novedad()
	{
		$this->load->view('novedad');
	}
	public function shows()
	{
		$this->load->view('shows');
	}
	public function fotos()
	{
		$datos=array(
		'fotos'=>$this->boliche_modelo->traerfotos(),
		);
		$this->load->view('fotos',$datos);
	}
	public function ubicacion()
	{
		$this->load->view('ubicacion');
	}
	public function contacto()
	{
		$this->load->view('contacto');
	}
	public function login()
	{
		$this->load->view('login');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */