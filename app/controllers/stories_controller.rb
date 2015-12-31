class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
  end

  # GET /stories/new
  def new
    session[:story_params] ||= {}
    @story = Story.new
    @story = Story.new(session[:story_params])
    @story.current_question = session[:story_question] 
  end

  # GET /stories/1/edit
  def edit
  end

  # POST /stories
  # POST /stories.json
  def create
    session[:story_params].deep_merge!(params[:story]) if params[:story]
    @story = Story.new(session[:story_params])
    @story.current_question = session[:story_question] 
    if @story.valid?
      if params[:back_button]
        @story.previous_question
      elsif @story.last_question?
        @story.save if @story.all_valid?
      else
        @story.next_question
      end
      session[:story_question] = @story.current_question
    end
    if @story.new_record?
      render "new"
    else
      session[:story_question] = session[:story_params] = nil
      flash[:notice] = "Congrats on your new story!"
      redirect_to @story
    end
  end







  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_url, notice: 'Story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:char_name, :char_age, :char_glasses, :char_haircolor, :char_friend_name, :char_friend_why, :char_activity, :char_activity_whylove, :char_activity_everdifficult, :char_activity_whydifficult, :char_feelings, :char_action_from_feeling, :char_result_from_action, :char_learn_from_action, :char_action_from_learn, :story_title)
    end
end
