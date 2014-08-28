readyPage = ->

  # -------------------------------------------------------------------------------------
  # Styled file input
  # from: http://www.abeautifulsite.net/whipping-file-inputs-into-shape-with-bootstrap-3/
  # -------------------------------------------------------------------------------------
  $(document).on "change", ".btn-file :file", ->
    input = $(this)
    numFiles = (if input.get(0).files then input.get(0).files.length else 1)
    label = input.val().replace(/\\/g, "/").replace(/.*\//, "")
    input.trigger "fileselect", [
      numFiles
      label
    ]
    return

  $(document).ready ->
    $(".btn-file :file").on "fileselect", (event, numFiles, label) ->
      input = $(this).parents(".input-group").find(":text")
      log = (if numFiles > 1 then numFiles + " files selected" else label)
      if input.length
        input.val log
      else
        alert log  if log
      return

    return

$(document).ready readyPage
$(document).on "page:load", readyPage
