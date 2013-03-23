class BanksController < ApplicationController

	def index
		@banks = Bank.order(:name)
	end

	def new
		@bank = Bank.new
		respond_to do |format|
			format.js
		end
	end

	def create
		@bank = Bank.create(params[:bank])
		@banks = Bank.order(:name)
		respond_to do |format|
			format.js
		end
	end

	def show
		bank = Bank.find(params[:id])
		@deposits = bank.transactions.where('amount >= 0').order(:created_at)
		@withdrawals = bank.transactions.where('amount < 0').order(:created_at)
	end

end