stepsData = [
  title: "Question"
  stepNumber: 0
  answerGroups: [
    id: 0
    question: "What is the title of your project?"
    type: "short"
  ,
    id: 1
    question: "What are the relevant keywords"
    type: "long"
  ]
,
  title: "Acquire"
  stepNumber: 1
  answerGroups: [
    id: 0
    question: "What is the title of your project?"
    type: "short"
  ]
,
  title: "Parse"
  stepNumber: 2
  answerGroups: [
    id: 0
    question: "What is the title of your project?"
    type: "short"
  ]
,
  title: "Filter"
  stepNumber: 3
  answerGroups: [
    id: 0
    question: "What is the title of your project?"
    type: "short"
  ]
,
  title: "Mine"
  stepNumber: 4
  answerGroups: [
    id: 0
    question: "What is the title of your project?"
    type: "short"
  ]
,
  title: "Represent"
  stepNumber: 5
  answerGroups: [
    id: 0
    question: "What is the title of your project?"
    type: "short"
  ]
,
  title: "Refine"
  stepNumber: 6
  answerGroups: [
    id: 0
    question: "What is the title of your project?"
    type: "short"
  ]
,
  title: "Interact"
  stepNumber: 7
  answerGroups: [
    id: 0
    question: "What is the title of your project?"
    type: "short"
  ]
]

Accounts.onCreateUser (options, user) ->
  _.each stepsData, (step) ->
    step.user = user._id
    Steps.insert step
  user
