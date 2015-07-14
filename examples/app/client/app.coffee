introSteps[0] = {target: null, template: 'intro-0'}
introSteps[1] = {target: '.intro-1', template: 'intro-1'}
introSteps[2] = {target: '.intro-2', template: 'intro-2'}

Template.body.events
  'click .start-tutorial': (e, t) ->
    startTutorial()
  'click #primero': (e, t )->
    console.log 'primero'
  'click #segundo': (e, t )->
    console.log 'segundo'
