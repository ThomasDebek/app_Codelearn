class TodosController < ApplicationController
  def index
    @todo_items = Todo.all
    render :index
  end

  def delete
  end

  def add
    Todo.create(:todo_item => params[:todo_text])
    redirect_to :action => 'index'
  end


end
