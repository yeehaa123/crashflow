Template.stepsForm.saveAnswerGroups = (e) ->
    e.preventDefault()
    $step = $(e.target).parents('.step')
    stepNumber = $step.data('stepnumber')
    
    answerGroups = []
    $step.find(".control-group").each (index, answerGroup) ->
      checkboxes = []
      answer = []

      $checkboxes = $(answerGroup).find('[type=checkbox]')

      if $checkboxes.length is 0
        answer = $(answerGroup).find('.answer').val()
      else
        $checkboxes = $checkboxes.each (i, checkbox)->
          if $(checkbox).is(':checked')
            answer.push(checkbox.value)
          checkboxes.push(checkbox.value)

      newAnswerGroup =
        id: index
        question: $(answerGroup).find('label')[0].innerText
        answer: answer
        checkboxes: checkboxes
        type: $(answerGroup).find('.controls').data('type')

      answerGroups.push(newAnswerGroup)

    stepId = Steps.findOne(stepNumber: stepNumber)._id

    Steps.update stepId, {$set: {answerGroups: answerGroups}}, (error) ->
      if error 
        alert(error.reason)

Template.stepsForm.events
  "blur input": Template.stepsForm.saveAnswerGroups
  "blur textarea": Template.stepsForm.saveAnswerGroups
