Template.stepsFormField.helpers
  textinput: ->
    @type is "short" || @type is "tags"

  textarea: ->
    @type is "long"


  checkbox: ->
    @type is "checkbox"
  
  checked: (parent)->
    if _.include(parent, String(@))
      "checked"
    else 
      false
