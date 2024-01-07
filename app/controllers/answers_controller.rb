class AnswersController < ApplicationController
  # 回答の投稿
  def create
    # p params
    @question = Question.find(params[:question_id])
    @question.answers.create(answer_params)
    redirect_to question_path(@question)
  end
  # 回答の削除
  def destroy

  end

  private
  def answer_params
    params.require(:answer).permit(:name, :ans_body)
  end
end
