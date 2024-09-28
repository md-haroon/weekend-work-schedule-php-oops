<?php
require_once "config/database.php";
class DB extends DBConfig
{
	public $dbConfig;
	function __construct()
	{
		$DBConfig = new DBConfig();
		$this->dbConfig = $DBConfig->database;
	}
	public function Connect(){
		$conn = new mysqli(
			$this->dbConfig['host'],
			$this->dbConfig['username'],
			$this->dbConfig['password'],
			$this->dbConfig['database']
		);
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		} 
		return $conn;
	}
}



