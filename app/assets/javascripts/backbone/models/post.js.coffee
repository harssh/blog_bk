class BlogBackbone.Models.Post extends Backbone.Model
  paramRoot: 'post'

 

class BlogBackbone.Collections.PostsCollection extends Backbone.Collection
  model: BlogBackbone.Models.Post
  url: '/posts'
