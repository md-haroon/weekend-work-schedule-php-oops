var table;
$(document).ready(function() {

	getTableDatas('interview_summary');

	$(".btn-table-name").on('click',function(e){
		$(".btn-table-name").removeClass('active');
		$(this).addClass('active');
		let tabelName = $(this).attr('data-table');
		console.log(tabelName);
		getTableDatas(tabelName);
	});
	table = $('#example')
	.DataTable({
		columns: [
		{ "data": "id","title":"id" }
		]
	});


});
function getTableDatas(tabelName){
	$.ajax({
		url:"api/?tag=get-table-datas",
		method : 'get',
		data : {'tabel_name': tabelName},
		dataType:'json'
	}).done(function(msg){
		DataTableReload(msg.columns,msg.data);
	});
}


function DataTableReload(columns,rowDatas){
	console.log(columns);
	table.destroy();
	$('#example').empty();
	table = $('#example').DataTable({
		"searching": false,
		scrollX: true,
		scrollY: '65vh',
		data : rowDatas,
		columns : columns,
	});
	table.draw();
}
