# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'ready page:load', ->
  $(".code pre code").each (i, e) ->
    hljs.highlightBlock e
    numberLines e

numberLines = (e) ->
  $('.line-numbers').html([1..lineCount(e)].join("<br/>"))

lineCount = (e) ->
  $(e).html().split("\n").length - 1
