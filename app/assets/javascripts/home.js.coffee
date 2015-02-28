# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Using ready-> due to turbolinks, wasn't working otherwise
ready = ->    
    $('.main-nav').hover ->
        $('body').toggleClass 'expanded'
        return
    
    $('.menu-label').click ->
        $('ul.nav').toggleClass 'collapsed'
        return
        
$ ->
  flashCallback = ->
    $(".message").fadeOut(5000)
  $(".message").bind 'click', (ev) =>
    $(".message").fadeOut(5000)
  setTimeout flashCallback, 2000

$(document).ready(ready)
$(document).on('page:load', ready)