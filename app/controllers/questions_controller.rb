class QuestionsController < ApplicationController
  # 質問一覧
  def index

  end
  # 質問詳細
  def show
    # p params[:id]
    @question = Question.find(params[:id])
    # p @question
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
      @question.save
    # 詳細ページへ移動
      redirect_to @question
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
