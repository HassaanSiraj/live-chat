class ChatsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @chats = Chat.all
    @users = User.all_except(current_user)
  end

  def show
    @chat = Chat.find(params[:id])
    @chats = Chat.all
    @users = User.all_except(current_user)
    @message = Message.new
    @messages = @chat.messages.order(created_at: :asc)
    render 'index'
  end

  def create
    @chat = Chat.create(name: params['chat']['name'])
  end
end
