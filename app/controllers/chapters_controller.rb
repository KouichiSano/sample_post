class ChaptersController < ApplicationController
	before_action :authenticate_user!
	
	def edit
		@chapter = Chapter.find(params[:id])
		@story = @chapter.story
		if @story.user.id != current_user.id
			redirect_to root_path
		end
		@comment = Comment.new
	end

	def update
		@chapter = Chapter.find(params[:id])
		@story = @chapter.story
		if @story.user.id != current_user.id
			redirect_to root_path
		end
		@chapter.update(chapter_params)
		redirect_to story_path(@chapter.story)
	end

	private

	def chapter_params
	params.require(:chapter).permit(:subtitle, :parttext,:story_id)
	end
end
