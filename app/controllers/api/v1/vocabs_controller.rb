
class Api::V1::VocabsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_vocab, only: [:show, :update, :destroy]

  def index
    vocabs = current_user.vocabs
    render json: { status: 'SUCCESS', message: 'Loaded vocabs', data: vocabs }
  end

  def show
    render json: { status: 'SUCCESS', message: 'Loaded the vocab', data: @vocab }
  end

  def create
    vocab = current_user.vocabs.build(vocab_params)
    if vocab.save
      render json: { status: 'SUCCESS', data: vocab }
    else
      render json: { status: 'ERROR', data: vocab.errors }
    end
  end

  def destroy
    @vocab.destroy
    render json: { status: 'SUCCESS', message: 'Deleted the vocab', data: @vocab }
  end

  def update
    if @vocab.update(vocab_params)
      render json: { status: 'SUCCESS', message: 'Updated the vocab', data: @vocab }
    else
      render json: { status: 'SUCCESS', message: 'Not updated', data: @vocab.errors }
    end
  end

  private

  def set_vocab
    @vocab = current_user.vocabs.find(params[:id])
  end

  def vocab_params
    params.require(:vocab).permit(:en, :ja, :memo)
  end
end


