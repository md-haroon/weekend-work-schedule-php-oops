$(document).ready(function(){
	$('.js-data-example-ajax').select2({
		theme: "bootstrap",
		containerCssClass : 'form-control border-input',
		placeholder: 'Search Position',
		width : "100%",
		delay: 250,
		ajax: {
			url: 'api/?tag=get-position',
			dataType: 'json',
			delay: 250,
			data: function (params) {
				return {
					q: params.term 
				};
			},
			processResults: function (data) {
				return {
					results: data
				};
			},
			cache: true
		},
		minimumInputLength: 2
	}).on('select2:select', function (event) {
		let selected_data = event.params.data;
		$.ajax({
			url:'api/?tag=get-position-detail',
			method : 'GET',
			dataType: 'json',
			data : {'postion_id':selected_data.id},
		}).done(function(data){
			SetPositionDetails(data);
		})
	});

	function SetPositionDetails($position_details){
		$('[name="Skills"]').val($position_details.skills);
		$('[name="Location"]').val($position_details.location);
		$('[name="City"]').val($position_details.city);
		$('[name="Address"]').val($position_details.address);
		$("#candidate-form-submit").removeAttr("disabled");
	}

	$("#candidate-form-submit").click(function(event){
		$('#candidateForm').submit();
	});

	$( "#candidateForm" ).submit(function( event ) {
		event.preventDefault();
		let formData = $(this).serializeArray();
		console.log(formData);
		let data = {};
		$(formData).each(function(i,field){
			data[field.name] = field.value;
		})
		$.ajax({
			url:'api/?tag=add-interview-summary',
			method:'POST',
			data:{'formData':data},
			dataType: 'json',
		}).done(function(data){
			$( "#candidateForm" )[0].reset();
			$('#myModal').modal('hide');
			$.notify({
            	icon: 'ti-gift',
            	message: data.msg

            },{
                type: data.status,
                timer: 4000
            });
            getTableDatas('interview_summary');
		})
	});
});