<?php
require_once "db.php";
class Query extends DB 
{
	public function Execute($query){
		$db = new DB();
		$Connection = $db->Connect();
		$result = $Connection->query($query);
		return $result;
	}
}
?>