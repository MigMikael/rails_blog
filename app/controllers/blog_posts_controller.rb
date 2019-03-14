class BlogPostsController < ApplicationController
    def index
        @blog_posts = BlogPost.all
    end

    def show
        @blog_post = BlogPost.find(params[:id])
    end

    def new
        @blog_post = BlogPost.new
    end

    def create
        @blog_post = BlogPost.new(blog_params)
        if @blog_post.save
            # successfully create blog
            redirect_to @blog_post
        else
            render 'new'
        end
    end

    def edit
    end

    def update
    end

    def destroy
        BlogPost.find(params[:id]).destroy
        redirect_to blog_posts_path
    end

    private

        def blog_params
            params.require(:blog_post).permit(:title, :description, :summary, :content, :status)
        end
end
