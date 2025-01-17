/* eslint-disable ember/routes-segments-snake-case */
import EmberRouter from '@ember/routing/router';
import config from 'statechart-actors/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('post', { path: '/post/:postId' });
});
