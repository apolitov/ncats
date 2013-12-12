$(document).ready ->
	# define distance the horizontal scroll will move at a time
	sectionWidth = $("main section").first().width()
	$('main').mCustomScrollbar
		horizontalScroll: true
		set_height: '100%'
		mouseWheelPixels: sectionWidth
	# the default property value 'auto' collapses section to it's content height
	$('.mCSB_horizontal>.mCSB_container').css 'height', '100%'