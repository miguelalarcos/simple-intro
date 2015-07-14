Package.describe({
  name: 'miguelalarcos:simple-intro',
  version: '0.1.2',
  // Brief, one-line summary of the package.
  summary: 'A simple intro (tutorial) for Meteor apps.',
  // URL to the Git repository containing the source code for this package.
  git: 'https://github.com/miguelalarcos/simple-intro.git',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.1.0.2');

  api.use('coffeescript');
  api.use('stylus');
  api.use('tracker');
  api.use('jquery');
  api.use('templating');
  api.use('underscore');
  api.use('reactive-var');

  api.addFiles('template.html', 'client');
  api.addFiles('style.styl', 'client');
  api.addFiles('simple-intro.coffee', 'client');
  api.export('startTutorial');
  api.export('introSteps');
});

/*
Package.onTest(function(api) {
  api.use('tinytest');
  api.use('miguelalarcos:simple-intro');
  api.addFiles('simple-intro-tests.js');
});
*/
