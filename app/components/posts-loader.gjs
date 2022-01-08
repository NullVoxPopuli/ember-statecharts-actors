import { FindAll } from 'ember-data-resources';

export const PostsLoader = <template>
  {{#let (FindAll 'post') as |posts|}}
    {{#if posts.isLoading}}
      Loading posts
    {{else if posts.isError}}
      Error loading posts!
      {{posts.error}}
    {{else if posts.records}}
      {{yield posts.records}}
    {{/if}}
  {{/let}}
</template>

