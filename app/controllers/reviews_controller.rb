class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to @review if @review.persisted?
    else
      render :new, status: :unprocessable_entity, notice: "Erro ao criar produto!"
    end
  end

  def edit
  end

  def update
    if @product.update(review_params)
      redirect_to @product, notice: "Produto criado com sucesso!"
    else
      render :edit, status: :unprocessable_entity, notice: "Erro ao atualizar produto!"
    end
  end

  def destroy
    if @product.destroy
      redirect_to reviews_path
    else
      render :edit, status: :unprocessable_entity, notice: "Erro ao apagar produto!"
    end
  end

  private

  def set_product
    @product = Review.find(params[:id])
  end

  # strong params to protect against sql injection
  def review_params
    params.expect(product: %i[ subject description rating ])
  end
end
