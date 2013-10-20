Template.stepsForm.saveAnswerGroups = (e) ->
    e.preventDefault()
    $step = $(e.target).parents('.step')
    stepNumber = $step.data('stepnumber')
    
    answerGroups = []
    $step.find(".control-group").each (index, answer) ->
      answerGroup =
        id: index
        question: $(answer).find('label')[0].innerText
        answer: $(answer).find('.answer').val()
        type: $(answer).find('.controls').data('type')
      console.log(answerGroup.answer)
      answerGroups.push(answerGroup)

    stepId = Steps.findOne(stepNumber: stepNumber)._id
    console.log(answerGroups)

    Steps.update stepId, {$set: {answerGroups: answerGroups}}, (error) ->
      if error 
        alert(error.reason)

Template.stepsForm.events
  "blur input": Template.stepsForm.saveAnswerGroups
  "blur textarea": Template.stepsForm.saveAnswerGroups
