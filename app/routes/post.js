import Route from '@ember/routing/route';

// Bug in ember gives
// Error: Assertion Failed: You used the dynamic segment `post_id` in your route `post` for which Ember requires you provide a data-loading implementation. Commonly, that is done by adding a model hook implementation on the route (`model({post_id}) {`) or by injecting an implemention of a data store: `@service store;`. Rarely, applications may attempt to use a legacy behavior where the model class (in this case `post`) is resolved and the `find` method on that class is invoked to load data. In this application, a model of `post` was found but it did not provide a `find` method. You should not add a `find` method to your model. Instead, please implement an appropriate `model` hook on the `post` route.
//
// Unless model is overrode
//
// this is due to implicit store and implicit behavior
// otherwise I'd just not have this file
export default class PostRoute extends Route {
  model() {}
}
