import { LinkTo } from '@ember/routing';

const numLoading = (ctx) => Object.values(ctx.posts || {}).filter(post => post.state.matches('loading')).length ?? 0

export const Header = <template>
  <nav class='h-12 shadow-sm'>
    <div class='px-2 h-full flex items-center justify-between'>
      <LinkTo @route='index'>Home</LinkTo>

      <div>
        <span>Loading posts: {{numLoading @state.context}}</span>
      </div>
    </div>
  </nav>
</template>

