class AnswersController < ApplicationController
  # 回答の投稿
  def create
    @question = Question.find(params[:question_id])
    @question.answers.create(answer_params)
    redirect_to question_path(@question)
  end
  # 回答の削除
  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    # :see_otherはHTTPステータスコードの303を意味する
    redirect_to @question, status: :see_other
  end

  private
  def answer_params
    params.require(:answer).permit(:name, :ans_body)
  end
end
