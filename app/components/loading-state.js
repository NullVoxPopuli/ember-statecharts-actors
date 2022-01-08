import { createMachine, assign, spawn, send } from 'xstate';

const postMachine = createMachine({
  initial: 'loading',
  states: {
    loading: {
      entry: [send('LOADED', { delay: 1000 })],
      on: {
        LOADED: 'loaded',
      },
    },
    loaded: {},
  },
});

export const DetailLoadingState = createMachine(
  {
    initial: 'active',

    context: {
      posts: {},
    },
    states: {
      active: {
        on: {
          LOAD_DETAILS: [
            {
              cond: 'detailsNeedLoading',
              actions: [
                assign({
                  posts: (context, { postId }) => {
                    let posts = context.posts || {};
                    if (!postId) return posts;

                    posts[postId] = spawn(postMachine, { sync: true });

                    return posts;
                  },
                }),
              ],
            },
          ],
        },
      },
    },
  },
  {
    guards: {
      detailsNeedLoading({ posts = {} }, { postId }) {
        return !posts[postId]?.machine.state.matches('loaded');
      },
    },
  }
);
