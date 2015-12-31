class Story < ActiveRecord::Base
	attr_writer :current_question

	def current_question
		@current_question || questions.first
	end

	def questions
		%w[question01 question02 question03 question04 question05 question06 question07 question08 question09 question10 question11 question12 question13 question14 question15 question16 question17 ]
	end

	def next_question
		self.current_question = questions[questions.index(current_question)+1]
	end

end
