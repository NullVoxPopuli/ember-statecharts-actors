import { LinkTo } from '@ember/routing';

export const List = <template>
  <nav class='px-4 flex flex-col'>
    {{#each @posts as |post|}}
      <LinkTo @route='post' @model={{post.id}} class='py-2 underline'>
        {{post.title}}
      </LinkTo>
    {{/each}}
  </nav>
</template>;
