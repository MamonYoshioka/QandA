class QuestionsController < ApplicationController
  # 質問一覧
  def index
    @questions = Question.all

  end
  # 質問詳細
  def show
    @question = Question.find(params[:id])

  end
  # 質問作成
  def new
    @question = Question.new
  end
  # 質問登録
  def create
    # モデルの初期化
      @question = Question.new(question_params)
    # DBへ保存
      if @question.save
    # 詳細ページへ移動
      redirect_to @question
    else
      render "new", status: :unprocessable_entity
    end
  end
  # 質問編集
  def edit

  end
  # 質問更新
  def update

  end
  # 質問削除
  def destroy

  end

  private
  def question_params
    params.require(:question).permit(:title, :name, :body)
  end
end
