stepsData = [
  title: "Question"
  description: "Answering these question helps you to define the goal and focus of your project."
  stepNumber: 0
  answerGroups: [
    id: 0
    question: "What is the title of your project?"
    type: "short"
  ,
    id: 1
    question: "What is the theme of your project?"
    type: "short"
  ,
    id: 2
    question: "What is the hypothesis of your project?"
    type: "short"
  ,
    id: 3
    question: "What are the core concepts/keywords of your project?"
    type: "short"
  ]
,
  title: "Acquire"
  description: "Answering these questions helps you to determine where to get the relevant data from, whether from a file on a disk or a source over a network."
  stepNumber: 1
  answerGroups: [
    id: 0
    question: "which online resources have data that is relevant to your research question?"
    type: "short"
  ,
    id: 1
    question: "how do these resources allow you to acquire relevant data?"
    type: "checkbox"
    checkboxes: ["Search & Browse", "Download whole collection", "Extract data through API"]
  ,
    id: 2
    question: "What is the data that you need from these resources?"
    type: "short"
  ,
    id: 3
    question: "What query or queries would give you the data you need (think of the keywords you entered for step 0)?"
    type: "short"
  ]
,
  title: "Parse"
  description: "Answering these questions helps you thinking about how to provide structure for the data's meaning, and how order it into categories."
  stepNumber: 2
  answerGroups: [
    id: 0
    question: "what data types occur in the metadata fields?"
    type: "checkbox"
    checkboxes: ["textual data", "numeric data", "references"]
  ,
    id: 1
    question: "is the data structured consistently, and why is this (not) the case?"
    type: "short"
  ,
    id: 2
    question: "in what ways can the data/metadata be naturally grouped or partitioned in order to be to test your hypothesis?"
    type: "short"
  ]
,
  title: "Filter"
  description: "Answering these questions helps you to determine what parts of the data you need and what parts have to be removed."
  stepNumber: 3
  answerGroups: [
    id: 0
    question: "from the data that the API returned, which parts do you need for your research?"
    type: "short"
  ,
    id: 1
    question: "which parts of the data can be removed?"
    type: "short"
  ]
,
  title: "Mine"
  description: "Answering these questions helps you to think about how to discern patterns in data and how to place them in a mathematical context."
  stepNumber: 4
  answerGroups: [
    id: 0
    question: "what kind of quantitative information do you want to get from each relevant part?"
    type: "checkbox"
    checkboxes: ["frequency of occurrence", "frequency of co-occurrence", "order of occurrence (timeline)"]
  ,
    id: 1
    question: "Does this quantitative information require a specific format, and if so, how do you prepare the data in the right format?"
    type: "long"
  ]
,
  title: "Represent"
  description: "Answering these questions helps you to determine what kind of visual model, such as a bar graph, list or tree, will provide the most insightful presentation of your data."
  stepNumber: 5
  answerGroups: [
    id: 0
    question: "What kind of visual model would best allow you to analyse your data to answer your research question?"
    type: "long"
  ]
,
  title: "Refine"
  description: "Answering these questions helps you to determine the areas of particular interest in your visualization and what refinement method would increase clarity."
  stepNumber: 6
  answerGroups: [
    id: 0
    question: "what are areas of interest in the representation that may need more detail?"
    type: "short"
  ,
    id: 1
    question: "what aspects of the representation would you like to highlight or represent differently?"
    type: "short"
  ,
    id: 2
    question: "what refinement methods would give focus to the areas of interest?"
    type: "checkbox"
    checkboxes: ["use colours to differentiate data points", "zoom in on areas of interest", "rotate presentation"]
  ]
,
  title: "Interact"
  description: "Answering these questions helps you to determine what methods of manipulation would provide interaction to increase understanding of the data."
  stepNumber: 7
  answerGroups: [
    id: 0
    question: "how do you want to manipulate the data in the visualisation to be able to view it from different perspectives?"
    type: "short"
  ,
    id: 1
    question: "for which features do you want to control visibility?"
    type: "short"
  ,
    id: 2
    question: "when you interact with the visualization tool and the data, does it help you to answer your research question?"
    type: "short"
  ]
]

Accounts.onCreateUser (options, user) ->
  _.each stepsData, (step) ->
    step.user = user._id
    Steps.insert step
  user
