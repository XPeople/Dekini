class ErrorsController < ApplicationController

	def missing_route
		render json: {error: {message: 'resource does not exist', code: 404}}, status: 404
	end

	def bad_media_in
		render nothing: true , status: 415
	end
end
