Template.stepItem.rendered = ->
  step = $(@find('.step-body'))
  if !Session.get('ran')
    step.addClass('invisible')
    
Template.stepItem.events
  "click h1": (e) ->
    $form = $(e.target).closest('.step').find('.step-body')
    $form.toggleClass('invisible')
    $span = $(e.target).find('span')
    if $span.text() is "+"
      $span.text("-")
    else
      $span.text("+")
