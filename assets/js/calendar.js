$(function() {

  // page is now ready, initialize the calendar...

  $('#calendar').fullCalendar({
  	defaultView: 'month',
  	themeSystem:'bootstrap4',
    validRange:{
      start:moment().format('YYYY-MM-DD')
    },
    height: 600,
    aspectRatio: 1,
  	selectable: true,
  	dayClick:function(date, jsEvent, view){dayClickfun(date, jsEvent, view);},
  	header: {
  		left: 'today',
  		center: 'title',
  		right: 'prev,next'
  	}
  });

  function dayClickfun(date, jsEvent, view){
  	$('#myModal').modal('show');
    let SelectedDate = moment(date._d).format('YYYY-MM-DD');
    $("#candidate-form-submit").attr("disabled",true);
    $('[name="InterviewDate"]').val(SelectedDate);
  }
});