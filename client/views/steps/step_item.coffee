Template.stepItem.rendered = ->
  step = this.find('.step-body')
  $(step).addClass('invisible')

Template.stepItem.events
  "click span": (e) ->
    $form = $(e.target).closest('.step').find('.step-body')
    $form.toggleClass('invisible')
    if $(e.target).text() is "+"
      $(e.target).text("-")
    else
      $(e.target).text("+")
