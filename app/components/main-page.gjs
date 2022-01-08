import Helper from '@ember/component/helper';
import { get, hash } from '@ember/helper';
import { service } from '@ember/service';

import { List } from './list';
import { Header } from './header';
import { PostsLoader } from './posts-loader';
import { DetailLoadingState } from './loading-state';

const getPost = (posts, id) => posts.find(post => post.id === id);
const loadDetails = (send, id) => {
  send('LOAD_DETAILS', { postId: id });
};
class currentPostId extends Helper {
  @service router;

  compute() {
    return this.router.currentRoute.params.postId
  }
}

const Details =
  <template>
    <h2 class='text-xl font-semibold'>
      {{@post.title}}
    </h2>

    {{#if (@machine.state.matches 'loaded')}}
      <div>Details are loaded</div>
    {{else}}
      Loading...
    {{/if}}
  </template>;

<template>
  <PostsLoader as |posts|>
    <DetailLoadingState as |state send|>
      <Header @state={{state}} />

      <div class='py-2 flex gap-2'>
        <List @posts={{posts}} />

        <section>
          {{#let (currentPostId) as |id|}}
            {{#if id}}
              {{ (loadDetails send id) }}
              {{!--
                  calling a function here is slightly unintuitive, as without xstate, we'd
                  want this to be a resource so that derived data kinda just lets the correct
                  state flow to the template.

                  maybe using FindRecord from ember-data-resources.
                  Put the point of this example is to demonstrate how to spawn machines,
                  not so much how to manage remote data.
                --}}

              <Details @post={{getPost posts id}} @machine={{get state.context.posts id}} />
            {{/if}}
          {{/let}}
        </section>
      </div>
    </DetailLoadingState>
  </PostsLoader>
</template>
