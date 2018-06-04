class CommentsController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@chapter = Chapter.find(params[:chapter_id])
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id
		@comment.chapter_id = @chapter.id
		@comment.save
		redirect_to edit_story_chapter_path(@chapter.story.id,@chapter.id)

  end

  def destroy
  	@chapter = Chapter.find(params[:chapter_id])
		@comment = Comment.find(params[:id])
		if @comment.user_id == current_user.id
			@comment.destroy
		end
		redirect_to edit_story_chapter_path(@chapter.story.id,@chapter.id)
  end

	private

	def comment_params
	params.require(:comment).permit(:commentblock, :user_id, :chapter_id)
	end
end

