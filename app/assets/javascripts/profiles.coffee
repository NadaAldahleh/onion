# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  upload = (files) ->
    alert 'Upload ' + files.length + ' File(s).'
    return

  counter = 0

  $('body').on 'dragover', (e) ->
    e.preventDefault()
    e.stopPropagation()
    return

  $('body').on 'drop', (e) ->
    e.preventDefault()
    e.stopPropagation()
    return

  $('.profile_image_droppable').on 'dragover', (e) ->
    e.preventDefault()
    e.stopPropagation()
    return

  $('.profile_image_droppable').on 'dragleave', (e) ->
    e.preventDefault()
    e.stopPropagation()
    counter--
    if counter == 0
      $('.profile_image_droppable').removeClass("ondragover")
    return

  $('.profile_image_droppable').on 'dragenter', (e) ->
    e.preventDefault()
    e.stopPropagation()
    counter++
    $('.profile_image_droppable').addClass("ondragover")
    return

  $('.profile_image_droppable').on 'drop', (e) ->
    if e.originalEvent.dataTransfer
      if e.originalEvent.dataTransfer.files.length
        e.preventDefault()
        e.stopPropagation()

        ###UPLOAD FILES HERE###

        upload e.originalEvent.dataTransfer.files
    $('.profile_image_droppable').removeClass("ondragover")
    counter = 0
    return