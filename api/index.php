<?php
require_once "postionController.php";

if($_REQUEST['tag'] == 'get-position'){
	$q = $_REQUEST['q'];
	postion_search($q);
}
elseif($_REQUEST['tag'] == 'get-position-detail'){
	$id = $_REQUEST['postion_id'];
	$detail = Controller::getPostionDetailById($id);
	echo json_encode($detail);
}
elseif ($_REQUEST['tag'] == 'add-interview-summary') {
	$formData = $_REQUEST['formData'];
	$summary = Controller::SaveInterviewSummary($formData);
	echo json_encode($summary);
}
elseif ($_REQUEST['tag'] == 'get-table-datas') {
	$request = $_REQUEST;
	unset($request['tag']);
	$result = Controller::getTableDatas($request);
	echo json_encode($result);
}
function postion_search($query){
	$postions = Controller::searchPosition($query);
	echo json_encode($postions);
}

?>