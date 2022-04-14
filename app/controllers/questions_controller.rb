class QuestionsController < ApplicationController
  before_action :load_question, only: %i[ show edit update destroy ]
  before_action :authorize_user, except: [:create]

  def edit
  end

  def create
    Questions::Create.(
      params: question_create_params,
      current_user: current_user,
    ) do |m|
      m.failure :validation do |result|
        @question = result[:question]
        render :edit
      end

      m.success do |result|
        redirect_to user_path(result[:question].user), notice: t('.notice')
      end
    end
  end

  def update
    Questions::Update.(
      params: question_params_update,
      current_user: current_user,
    ) do |m|
      m.failure :validation do |result|
        @question = result[:question]
        render :edit
      end

      m.success do |result|
        redirect_to user_path(result[:question].user), notice: t('.notice')
      end
    end
  end

  def destroy
    user = @question.user
    @question.destroy

    redirect_to user_path(user), notice: t('.notice')
  end

  private

  def load_question
    @question = Question.find(params[:id])
  end

  def authorize_user
    reject_user if @question.user != current_user
  end

  def question_create_params
    params.require(:question).permit(:user_id, :text)
  end

  def question_params_update
    params.require(:question).permit(:user_id, :answer, :text)
  end
end
