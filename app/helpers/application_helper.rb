module ApplicationHelper
	def errors_for(object)
		render partial: 'layouts/errors', locals: {object: object}
	end
end
