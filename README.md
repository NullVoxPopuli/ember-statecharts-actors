# statechart-actors

This app demonstrate how we can use [ember-statechart-component](https://github.com/NullVoxPopuli/ember-statechart-component) and XState's [actor](https://xstate.js.org/docs/guides/actors.html#actors) feature together.

To begin exploring code, start at [main-page.gjs](https://github.com/NullVoxPopuli/ember-statecharts-actors/blob/main/app/components/main-page.gjs). This is the only thing rendered from the `application.hbs` template.

The demo-use case:

- Show a blog posts overview page
- When a blog post's detail view is accessed details will be "requested" in the
  background - while this is happening the app is still responsive
- When a blog post's details have already been loaded this behavior won't
  retrigger


This demo is a fork of https://github.com/LevelbossMike/ember-statecharts-actors
which uses a different way of interacting with statecharts.

## Prerequisites

You will need the following things properly installed on your computer.

- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/)
- [Yarn](https://yarnpkg.com/)
- [Ember CLI](https://ember-cli.com/)
- [Google Chrome](https://google.com/chrome/)

## Installation

- `git clone <repository-url>` this repository
- `cd statechart-actors`
- `yarn install`

## Running / Development

- `ember serve`
- Visit your app at [http://localhost:4200](http://localhost:4200).
- Visit your tests at [http://localhost:4200/tests](http://localhost:4200/tests).

### Code Generators

Make use of the many generators for code, try `ember help generate` for more details

### Running Tests

- `ember test`
- `ember test --server`

### Linting

- `yarn lint`
- `yarn lint:fix`

### Building

- `ember build` (development)
- `ember build --environment production` (production)

### Deploying

Specify what it takes to deploy your app.

## Further Reading / Useful Links

- [ember.js](https://emberjs.com/)
- [ember-cli](https://ember-cli.com/)
- Development Browser Extensions
  - [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
  - [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)
