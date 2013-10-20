Template.stepItem.events
  "click h1": (e) ->
    $form = $(e.target).closest('.step').find('.step-body')
    $form.toggleClass('invisible')
