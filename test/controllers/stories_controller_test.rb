require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  setup do
    @story = stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create story" do
    assert_difference('Story.count') do
      post :create, story: { char_action_from_feeling: @story.char_action_from_feeling, char_action_from_learn: @story.char_action_from_learn, char_activity: @story.char_activity, char_activity_everdifficult: @story.char_activity_everdifficult, char_activity_whydifficult: @story.char_activity_whydifficult, char_activity_whylove: @story.char_activity_whylove, char_age: @story.char_age, char_feelings: @story.char_feelings, char_friend_name: @story.char_friend_name, char_friend_why: @story.char_friend_why, char_glasses: @story.char_glasses, char_haircolor: @story.char_haircolor, char_learn_from_action: @story.char_learn_from_action, char_name: @story.char_name, char_result_from_action: @story.char_result_from_action, story_title: @story.story_title }
    end

    assert_redirected_to story_path(assigns(:story))
  end

  test "should show story" do
    get :show, id: @story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @story
    assert_response :success
  end

  test "should update story" do
    patch :update, id: @story, story: { char_action_from_feeling: @story.char_action_from_feeling, char_action_from_learn: @story.char_action_from_learn, char_activity: @story.char_activity, char_activity_everdifficult: @story.char_activity_everdifficult, char_activity_whydifficult: @story.char_activity_whydifficult, char_activity_whylove: @story.char_activity_whylove, char_age: @story.char_age, char_feelings: @story.char_feelings, char_friend_name: @story.char_friend_name, char_friend_why: @story.char_friend_why, char_glasses: @story.char_glasses, char_haircolor: @story.char_haircolor, char_learn_from_action: @story.char_learn_from_action, char_name: @story.char_name, char_result_from_action: @story.char_result_from_action, story_title: @story.story_title }
    assert_redirected_to story_path(assigns(:story))
  end

  test "should destroy story" do
    assert_difference('Story.count', -1) do
      delete :destroy, id: @story
    end

    assert_redirected_to stories_path
  end
end
