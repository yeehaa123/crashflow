Meteor.publish 'steps', ->
  Steps.find({user: this.userId}, {sort: {stepNumber: 1}})
