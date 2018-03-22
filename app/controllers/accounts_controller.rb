class AccountsController < ApplicationController


      def index
        @accounts = Account.all
      end

      def show
        @account = Account.find(params[:id])
      end

      def new
        @account = Account.new
      end

      def create
        # byebug
        @account = Account.create(account_params)
        redirect_to @account
      end

      def edit
        @account = Account.find(params[:id])
      end

      def update
        @account = Account.find(params[:id])
        redirect_to @account
      end

      def destroy
        @account = Account.find(params[:id])
        @account.destroy
        redirect_to accounts_path
      end

      private
        def account_params
          params.require(:account).permit(:balance, :customer_id, :bank_id,customer_attributes:[:name])
      end

end
