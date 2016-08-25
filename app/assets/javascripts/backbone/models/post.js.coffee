class AppDemo.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null

class AppDemo.Collections.PostsCollection extends Backbone.Collection
  model: AppDemo.Models.Post
  url: '/posts'
