class MessagesController < ApplicationController
  def index
    @groups = Group
  end
end
