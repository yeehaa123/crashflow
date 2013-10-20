Template.stepItem.events
  "click h1": (e) ->
    $form = $(e.target).closest('.step').find('form')
    $form.toggleClass('invisible')
