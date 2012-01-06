class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    @subjects = Subject.all
    4.times { @question.choices.build }
  end

  def create
    @question = Question.new(params[:question])
    @question.save
    redirect_to questions_path
  end

  def edit
    @question = Question.find(params[:id])
    @subjects = Subject.all
  end

  def update
    params[:question][:subject_ids] ||= []
    @question = Question.find(params[:id])
    if @question.update_attributes(params[:question])
      redirect_to questions_path
    else
      render :action => :edit
    end
  end

end