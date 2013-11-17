class BlogBackbone.Routers.PostRouter extends Backbone.Router
	initialize: (options) ->
	@posts= new BlogBackbone.Collections.PostsCollection()
	@posts.reset options.posts

	routes:
	"index": "index"
	"new": "newPost"
	":id": "show"
	":id/edit": "edit"
	".*": "index"


	index: ->
	@view = new BlogBackbone.Views.PostsIndexView({collection: @posts})

	newPost: ->
    @view = new BlogBackbone.Views.PostsNewView({collection: @posts})

    show: (id) ->
    post = @posts.get(id)

    @view= new BlogBackbone.Views.PostsShowView({model: post})

    edit: (id) ->
    post: @posts.get(id)
    @view = new BlogBackbone.Views.PostsEditView({model: Post})
