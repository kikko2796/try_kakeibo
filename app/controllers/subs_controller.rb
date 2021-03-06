class SubsController < ApplicationController
  def index
    @subs = Sub.all
  end

  def show
    @sub = Sub.find(params[:id])
   #@days = @sub.days.(subs_id: params[subs_id])
  end

  def new
    @sub = Sub.new
    @sub.days.build
  end

  def edit
    @sub = Sub.find(params[:id])
  end

  def create
    @sub = Sub.new(sub_params)
    #respond_to do |format|
     if @sub.save
      redirect_to @sub
     else
      render :new
     end
    #end
  end

  def update
    #@sub = Sub.find(params[:id])
     #respond_to do |format|
       if @sub.update(sub_params)
        redirect_to @sub
       else
        render :edit
       end
     #end  
  end

  def destroy
    #@sub = Sub.find(params[:id])
    @sub.destroy
    #respond_to do |format|
    redirect_to subs_url 
  end


private
 def sub_params
  params.require(:sub)
  .permit(
    :name,
    :kind,
    account_attributes: [
      :id,
      :subs_id,
      :date,
      :value,
      :discription
    ]
    )
 end

 def set_sub
  @sub = Sub.find(params[:id])
 end

end