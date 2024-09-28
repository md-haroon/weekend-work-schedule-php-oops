<?php
/**
  * 
  */
 class DBConfig 
 {
 	
 	public $database;

 	function __construct()
 	{
 		$this->database = [
            'host' => '127.0.0.1',
            'port' =>  '3306',
            'database' => 'scheduler',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
        ];
 	}

 	public function getDbConfig(){
 		return $this->database;
 	}
 } 
	
?>