simple-intro
============
A simple intro (tutorial) for Meteor apps.

Explanation
-----------
Here is an example:

```coffee
introSteps[0] = {target: null, template: 'intro-0'}
introSteps[1] = {target: '.intro-1', template: 'intro-1'}
introSteps[2] = {target: '.intro-2', template: 'intro-2'}

Template.body.events
  'click .start-tutorial': (e, t) ->
    startTutorial()
```

```html
<body>
    <button class="start-tutorial">start tutorial</button>
    <span id="primero" class="blue intro intro-1">click</span>
    <span id="segundo" class="blue intro intro-2">click 2</span>
    {{> intro }}
</body>

<template name="intro-0">
    <b>Hola :)</b>, this is the tutorial of the app.
</template>

<template name="intro-1">
    This does a <em>console.log</em>.
</template>

<template name="intro-2">
    game over!
</template>
```

The popup window that guides you through the tutorial is draggable.