class CommentsController < ApplicationController
    before_action :find_article
    http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

    def index
        redirect_to article_path(@article)
    end

    def create
        @comment = @article.comments.new(comment_params)
        if @comment.save
            redirect_to article_path(@article)
        else
            render 'articles/show'
        end
    end

    def destroy
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
    end

    private
        def find_article
            @article = Article.find(params[:article_id])
        end

        def comment_params
            params.require(:comment).permit(:commenter, :commenter_confirmation, :body)
        end

end
