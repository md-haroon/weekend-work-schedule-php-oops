<?php
require_once "Query.php";

class Controller extends Query
{
	public function searchPosition($request){
		$sql = 'SELECT id,position FROM position WHERE position LIKE "%'.$request.'%"';
		$query_obj = Query::Execute($sql);
		$arr = array();
		while ($row = $query_obj->fetch_assoc()) {
			$arr[] = array('id'=>$row['id'],'text'=>$row['position']);
		}
		return $arr;
	}

	public function getPostionDetailById($id){
		$sql = 'SELECT * FROM postion_details WHERE position_id='.$id;
		$query_obj = Query::Execute($sql);
		$arr = array();
		while ($row = $query_obj->fetch_assoc()) {
			$arr = $row;
		}
		return $arr;
	}

	public function SaveInterviewSummary($data){
		$result = array();
		$columns = "first_name,last_name,email,mobile_no,interview_date,interview_skills,	interview_location,	interview_city,interview_address";
		$values = array(
			"'".$data['FirstName']."'",
			"'".$data['LastName']."'",
			"'".$data['MobileNo']."'",
			"'".$data['Email']."'",
			"'".$data['InterviewDate']."'",
			"'".$data['Skills']."'",
			"'".$data['Location']."'",
			"'".$data['City']."'",
			"'".$data['Address']."'",
		);
		$values = implode($values,',');
		
		$sql = "INSERT INTO interview_summary (".$columns.") VALUES (".$values.")";
		
		$qury = Query::Execute($sql);
		if($qury){
			  $result['code'] = '201';
			  $result['status'] = 'success';
			  $result['msg'] = 'new recored created';
			}else{
				$result['code'] = '417';
				$result['status'] = 'Error';
				$result['msg'] = 'Expectation Failed';
			}
		return $result;
	}

	public function getTableDatas($request){
		$table = $request['tabel_name'];
		$columns = self::getTableColumns($table);
		$rows = self::getRowDatas($table);
		$result = $request;
		$result['data'] = $rows;
		$result['columns'] = $columns;
		return $result;
	}
	public function getTableColumns($table){
		$sql = "SHOW COLUMNS FROM ".$table;
		$query_obj = Query::Execute($sql);
		$arr = array();
		while ($row = $query_obj->fetch_assoc()) {
			$arr[] = array(
				'data'=>$row['Field'],
				'title'=>$row['Field'],
				'name'=>$row['Field']
			);
		}
		return $arr;
	}

	public function getRowDatas($table){
		$sql = 'SELECT * FROM '.$table;
		$query_obj = Query::Execute($sql);
		$arr = array();
		while ($row = $query_obj->fetch_assoc()) {
			$arr[] = $row;
		}
		return $arr;
	}
}

?>