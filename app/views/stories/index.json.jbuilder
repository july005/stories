json.array!(@stories) do |story|
  json.extract! story, :id, :char_name, :char_age, :char_glasses, :char_haircolor, :char_friend_name, :char_friend_why, :char_activity, :char_activity_whylove, :char_activity_everdifficult, :char_activity_whydifficult, :char_feelings, :char_action_from_feeling, :char_result_from_action, :char_learn_from_action, :char_action_from_learn, :story_title
  json.url story_url(story, format: :json)
end
