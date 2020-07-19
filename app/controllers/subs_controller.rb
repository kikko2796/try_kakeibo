class SubsController < ApplicationController
  def index
    @subs = Sub.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @sub = Sub.new
    @sub.name = params[:sub][:name]
    @sub.kind = params[:sub][:kind]
    @sub.save
    redirect_to '/subs/index'
  end
end
