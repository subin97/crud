class PostsController < ApplicationController
    # Create
    def new 
        # 사용자가 데이터를 입력할 화면
    end
    def create  
        # 입력받은 데이터를 실제db에 저장할 액션 
        @post=Post.new
        @post.title=params[:input_title]
        @post.content=params[:input_content]
        @post.name=params[:input_name]
        @post.save
        
        redirect_to "/posts/show/#{@post.id}"    # 큰 따옴표 사용/ #{}로 사용하고 싶은 변수 사용 가능
    end
    
    # Read
    def index
        @posts=Post.all
    end
    def show
        # 한개의 post를 보여주는 view
        @post=Post.find(params[:post_id])
    end
    
    # Update
    def edit
        # 사용자가 데이터를 입력할 화면
        @post=Post.find(params[:post_id])
    end
    def update
        # 입력받은 데이터를 실제 db에 저장할 액션
        @post=Post.find(params[:post_id])
        @post.title=params[:input_title]
        @post.content=params[:input_content]
        @post.name=params[:input_name]
        @post.save
        redirect_to "/posts/show/#{@post.id}"
    end
   
    
    # Delete
    def destroy
        @post=Post.find(params[:post_id])
        @post.destroy
        redirect_to '/posts/index'
    end
end
