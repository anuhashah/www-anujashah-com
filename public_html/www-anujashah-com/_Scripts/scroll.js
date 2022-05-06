jQuery(function($) {
		var path = window.location.href; // because the 'href' property of the DOM element is the absolute path
		$('div a').each(function() {
			if (this.href === path) {

				$(this).addClass('active');
			}
		});
});

$(window).on("scroll", function(e) {
	if ($(window).scrollTop() >= $(".top").height())
	{
		$(".top").fadeOut(500);
		$("a.active").css({ opacity: 0.4 });
	} 
	else 
	{
		$(".top").fadeIn(500);
		$("a.active").css({opacity: 1});
	}
});