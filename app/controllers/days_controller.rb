class DaysController < ApplicationController
  def index
    @day = Day.all
  end

  def show
    @day = Day.find(params[:id])
    
    #@day = @sub.days.create
    
  end

  def new
    #@subs = Sub.all
    @day = Day.new
  end

  def edit
    @day = Day.find(params[:id])
  end

  def create
    #@sub = Sub.find(paramas[subs_id])
    #@day.name = @sub.name.create(name_params)
    #redirect_to sub_path(@sub)
    #@day = Day.new(day_params) 
    #@day = sub.days.create
    
    @day = Day.new(day_params)
    #@day = @sub.day.create
    #@sub = Sub.find(params[:id])
    #@days = @sub.days
    if @day.save
      redirect_to @day
    else
      render :new
    end
  end

  

  def update
    @day = Day.find(params[:id])
       if @day.update(day_params)
        redirect_to @day
       else
        render :edit
       end 
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to days_url 
  end



end

private
 def day_params
  params
  .require(:day)
  .permit(
    :subs_id,
    :date,
    :value,
    :discription,
    account_attributes:[
      :id,
      :name,
      :kind
  ]
  )
 end

 def set_day
  @day = Day.find(params[:id])
 end

def set_subs
  @subs = Sub.all
 end

 #def set_days
  #@days = Day.all
 #end