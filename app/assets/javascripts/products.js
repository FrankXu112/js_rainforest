$(document).on('ready page:load', function(){
	$('.navbar-form').submit(function(e){
		e.preventDefault();
		var searchValue = $('.form-control').val();

		$.getScript('/products?search=' + searchValue);
	});

	 $(window).scroll(function() {
      var url = $('.pagination span.next').children().attr('href');
      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
        $('.pagination').text("Fetching more products...");
        return $.getScript(url);
      }
   });
});