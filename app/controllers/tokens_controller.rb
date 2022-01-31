class TokensController < ApplicationController
  def index
  end

  def create
    if params[:token] == '123456'
      session[:current_user_token] = params[:token]

      redirect_to(invoices_path, notice: "Token válido")
    else
      redirect_to(root_path, notice: "Token inválido")
    end
  end
end
