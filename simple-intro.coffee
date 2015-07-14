introShow = new ReactiveVar(false)
#Session.set 'introShow', false
introCurrent = new ReactiveVar(null)
#Session.set 'introCurrent', null

Template.intro.helpers
  introShow: -> introShow.get() # Session.get 'introShow'
  template: ->
    step = introSteps[introCurrent.get()]  # Session.get 'introCurrent']
    step.template

introSteps = {}

Template.intro.events
  'click .next-intro': (e, t) ->
    next = introCurrent.get() + 1
    if next < _.keys(introSteps).length
      introCurrent.set(next)
  'click .back-intro': (e, t) ->
    back = introCurrent.get() - 1
    if back >= 0
      introCurrent.set(back)
  'click .close-intro': (e, t) ->
    introShow.set false
    $('.intro').removeClass('current-intro')

startTutorial = ->
  introCurrent.set 0
  introShow.set true

  Tracker.autorun ->
    step = introSteps[introCurrent.get()]
    $('.intro').removeClass('current-intro')
    $(step.target).addClass('current-intro')

diff = {v: 0, h: 0}

Template.body.events
  'dragstart': (e,t) ->
    diff.v = e.originalEvent.clientY - $(e.target).offset().top
    diff.h = e.originalEvent.clientX - $(e.target).offset().left
  'dragover': (e, t) ->
    e.preventDefault()
    false
  'drop .where-to-drop': (e, t) ->
    top = e.originalEvent.clientY
    left = e.originalEvent.clientX
    el = $('#intro-master')
    el.removeClass('center')
    el.offset({ top: top - diff.v, left: left - diff.h })
    e.preventDefault()
    false