# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Using ready-> due to turbolinks, wasn't working otherwise
ready = ->    
    $('.main-nav').mouseenter ->
        $('body').addClass 'expanded'
        return

    $('.main-nav').mouseleave ->
        $('body').removeClass 'expanded'
        return

    $('.show-form').click ->
        $('.profile-form').removeClass 'hidden'
        return

$(document).ready(ready)
$(document).on('page:load', ready)