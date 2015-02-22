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
	
			//estoy por insertar
			$datos=array(
			'asunto'=>'',
			'alerta'=>'',
			);
		if($_POST)
		{
			//estoy por insertar
			$datos=array(
			'asunto'=>$this->input->post('asunto'),
			'mensaje'=>$this->input->post('mensaje'),
			'fecha'=>date('d-m-Y'),
			
			);
			//valido la informacion antes de insertar
			$this->form_validation->set_rules('asunto','Asunto','required');
			$this->form_validation->set_rules('mensaje','Mensaje','required');
			if ($this->form_validation->run()===FALSE)
			{
			//se produce un error y vuelve a cargar contacto para avisarle al usuario que complete los campos
			$datos['alerta']="ERROR DEBE COMPLETAR LOS CAMPOS";
			}
			else
			{
				//como ya tomamos los datos que manda el usuario lo insertamos
			$this->boliche_modelo->insertarcontacto($datos);
			$datos['alerta']="SU MENSAJE SE ENVIO SATISFACTORIAMENTE";
			}
			
		}
		$this->load->view('contacto',$datos);
	}
	public function login() 
	{
		$this->load->view('login');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */