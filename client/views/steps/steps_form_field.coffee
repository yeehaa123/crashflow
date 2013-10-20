Template.stepsFormField.helpers
  textinput: ->
    @type is "short"

  textarea: ->
    @type is "long"


  checkbox: ->
    @type is "checkbox"
  
  checked: (parent)->
    if parent is String(@)
      "checked"
    else 
      false
