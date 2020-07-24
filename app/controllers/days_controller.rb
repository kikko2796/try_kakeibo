class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def show
    @day = Day.find(params[:id])
  end

  def new
    @subs = Sub.all
    @day = Day.new
  end

  def create
    # logger.debug(day_params)
    # app_1  | D, [2020-07-24T06:54:55.862815 #1] DEBUG -- : Unpermitted parameter: :subs_id
    @day = Day.new(day_params) 
    # logger.debug(@day) 標準出力に変数の値が出ます。
    # #<Day id: nil, date: "2020-07-24", name: nil, value: 4, discription: "適当", created_at: nil, updated_at: nil, subs_id: nil>
    # logger.debug(@day.save)
    # app_1  | D, [2020-07-24T06:51:49.881082 #1] DEBUG -- :    (0.1ms)  begin transaction
    # app_1  | D, [2020-07-24T06:51:49.881203 #1] DEBUG -- :   ↳ app/controllers/days_controller.rb:20
    # app_1  | D, [2020-07-24T06:51:49.897868 #1] DEBUG -- :    (0.1ms)  rollback transaction
    # app_1  | D, [2020-07-24T06:51:49.898419 #1] DEBUG -- :   ↳ app/controllers/days_controller.rb:20
    # app_1  | D, [2020-07-24T06:51:49.899161 #1] DEBUG -- : false
    # app_1  | D, [2020-07-24T06:51:49.900131 #1] DEBUG -- :    (0.3ms)  begin transaction
    # app_1  | D, [2020-07-24T06:51:49.900804 #1] DEBUG -- :   ↳ app/controllers/days_controller.rb:21
    # app_1  | D, [2020-07-24T06:51:49.902972 #1] DEBUG -- :    (0.1ms)  rollback transaction
    # app_1  | D, [2020-07-24T06:51:49.903437 #1] DEBUG -- :   ↳ app/controllers/days_controller.rb:21
    if @day.save
      redirect_to @days
    else
      render :new
    end
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
       if @day.update(day_params)
        redirect_to @day
       else
        render :edit
       end
     #end  
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to days_url 
  end

end

private
 def day_params
  params.require(:day).permit(:date, :name, :value, :discription )
 end

 def set_day
  @day = Day.find(params[:id])
 end

 def set_days
  @days = Day.all
 end