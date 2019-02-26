class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    # add create method here
    def create
        @post = Post.new
        @post.title = params[:title]
        @post.description = params[:description]
        @post.save

        redirect_to post_path(@post)

        # the above is the same as...

        # post = Post.new
        # post.title = "It Was Written"
        # post.description = "14 Songs"
        # post.save
    end
end
