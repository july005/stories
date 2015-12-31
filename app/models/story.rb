class Story < ActiveRecord::Base
	attr_writer :current_question

	# Another way to write these is : 	
	# validates_presence_of :char_name, if => :question01?

	validates_presence_of :char_name, if => lambda { |o| o.current_question == question01}
	validates_presence_of :char_age, if => lambda { |o| o.current_question == question02}
	validates_presence_of :char_glasses, if => lambda { |o| o.current_question == question03}
	validates_presence_of :char_haircolor, if => lambda { |o| o.current_question == question04}
	validates_presence_of :char_friend_name, if => lambda { |o| o.current_question == question05}
	validates_presence_of :char_friend_why, if => lambda { |o| o.current_question == question06}
	validates_presence_of :char_activity, if => lambda { |o| o.current_question == question07}
	validates_presence_of :char_activity_whylove, if => lambda { |o| o.current_question == question08}
	validates_presence_of :char_activity_everdifficult, if => lambda { |o| o.current_question == question10}
	validates_presence_of :char_feelings, if => lambda { |o| o.current_question == question11}
	validates_presence_of :char_action_from_feeling, if => lambda { |o| o.current_question == question12}
	validates_presence_of :char_result_from_action, if => lambda { |o| o.current_question == question13}
	validates_presence_of :char_learn_from_action, if => lambda { |o| o.current_question == question14}
	validates_presence_of :char_action_from_learn, if => lambda { |o| o.current_question == question15}
	validates_presence_of :story_title, if => lambda { |o| o.current_question == question16}

	def current_question
		@current_question || questions.first
	end

	def questions
		%w[question01 question02 question03 question04 question05 question06 question07 question08 question09 question10 question11 question12 question13 question14 question15 question16 question17 ]
	end

	def next_question
		self.current_question = questions[questions.index(current_question)+1]
	end

	def previous_question
		self.current_question = questions[questions.index(current_question)-1]
	end

	def first_question?
		current_question == questions.first
	end

	def last_question?
		current_question == questions.last
	end

	def all_valid?
		questions.all? do |step|
			self.current_question = question
			valid?
		end
	end

end
