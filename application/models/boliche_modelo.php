<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Boliche_modelo extends CI_Model {

	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	
	public function buscaLogin($datosRecibidos)
	{
		$datos=array(
		'user'=>$datosRecibidos['user'],
		'pass'=>$datosRecibidos['pass'],
		);
		return $this->db->get_where('login',$datos);
		
	}
	public function traerfotos ()
	{
		//funcion que buscara la foto de la base de datos y las devolvera al controlador
		$consulta=$this->db->query("select * from foto");
		return $consulta;
		}
	
}
