class TransactionsController < ApplicationController

  def index
    @q = Transaction.ransack(params[:q])
    @transactions = @q.result(distinct: true)
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  private

    def transaction_params
      params.require(:transaction).permit(:last_4, :amount)
    end
end
