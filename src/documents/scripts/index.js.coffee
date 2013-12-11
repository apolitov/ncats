$(document).ready ->
    $.fn.fullpage
        verticalCentered: false
        easing: 'swing'
        css3: false
        afterRender: ->
            bindControls()
        afterLoad: changeCurrentSlide


changeCurrentSlide = (anchor, index) ->
    slideNum = if index > 9 then index.toString() else '0' + index
    $("#pageIndex").text slideNum


enableAutoScrolling = ->
    console.log("Initializing slideshow")
    if $.fn.fullpage.setAutoScrolling?
        $.fn.fullpage.setAutoScrolling true
    else
        setTimeout ->
            enableAutoScrolling()
        , 500


bindControls = ->
    $(".page-prev").bind 'click', (e) ->
        $.fn.fullpage.moveSlideUp()
        e.preventDefault()
    $(".page-next").bind 'click', (e) ->
        $.fn.fullpage.moveSlideDown()
        e.preventDefault()
