introSteps[0] = {target: '.intro-1', template: 'intro-1'}
introSteps[1] = {target: '.intro-2', template: 'intro-2'}

#Meteor.startup ->
#  startTutorial()

Template.body.events
  'click .start-tutorial': (e, t) ->
    startTutorial()