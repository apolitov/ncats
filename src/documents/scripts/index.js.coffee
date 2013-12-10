$(document).ready ->
    $.fn.fullpage
        easing: 'swing'
        css3: false
        autoScrolling: false
        afterRender: ->
            enableAutoScrolling()
            bindControls()
        afterLoad: changeCurrentSlide


changeCurrentSlide = (anchor, index) ->
    $("#pageIndex").text index


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
