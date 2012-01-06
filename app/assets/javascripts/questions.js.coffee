# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('.choice').live "click", ->
    $('p>input:checkbox').removeAttr('checked')
    $(this).attr('checked', 'checked')
    $(this).val(1)

  remove_fields = (link) ->
    $(link).closest(".fields").hide()

  $('.remove').live "click", ->
    remove_fields this
    if !$('#add_field').is ":visible"
     $('#add_field').show()
    false

  $('#add_field').click ->
    $('.fields').each ->
     if !$(this).is ":visible"
      $(this).show()
      false
    if $('.fields:visible').length == 4
     $('#add_field').hide()