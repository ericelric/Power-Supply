class PowersController < ApplicationController
  before_filter :require_login
  before_action :find_power, only: [:show, :edit, :update, :destroy, :switch_on, :switch_off]

  def index
    @powers = Power.all.order('created_at DESC')
     if @powers.empty?
       flash[:notice] = "Hey, add a switch above to begin!"
     end
  end

  def show
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
    if @power.save
      redirect_to @power, notice: 'Successfully created switch'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @power.update(power_params)
      redirect_to @power, notice: 'Switch was successfully updated'
    else
      render 'edit'
    end
  end

  def destroy
    @power.destroy
    redirect_to root_path
  end

  def switch_on
    @power.state = true
    @power.save

    system('echo', 'path to send script ' + @power.code_on)
    render text: 'on'
  end

  def switch_off
    @power.state = false
    @power.save

    system('echo', 'path to send script ' + @power.code_off)
    render text: 'off'
  end

  private

  def power_params
    params.require(:power).permit(:title, :code_on, :code_off)
  end

  def find_power
    @power = Power.find(params[:id])
  end
end
