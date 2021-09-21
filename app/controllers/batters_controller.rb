class BattersController < ApplicationController

  def index

  end

  def show
    @batter = Batter.find params[:id]
    @hit = @batter["hit"].to_f
    @at_bat = @batter["at_bat"]
    @batters_box = @batter["batters_box"]
    @batting_average = (@hit / @at_bat).round(3)

    @meet_cursor = 0
    case @batting_average
    when 0.39..1
      @meet_cursor = 100
    when 0.37..0.389
      @meet_cursor = 95
    when 0.36..0.369
      @meet_cursor = 90
    when 0.35..0.359
      @meet_cursor = 85
    when 0.34..0.349
      @meet_cursor = 80
    when 0.33..0.339
      @meet_cursor = 75
    when 0.32..0.329
      @meet_cursor = 70
    when 0.31..0.319
      @meet_cursor = 65
    when 0.3..0.319
      @meet_cursor = 60
    when 0.285..0.299
      @meet_cursor = 55
    when 0.27..0.284
      @meet_cursor = 50
    when 0.255..0.279
      @meet_cursor = 45
    when 0.24..0.254
      @meet_cursor = 40
    when 0.22..0.239
      @meet_cursor = 35
    when 0.2..0.219
      @meet_cursor = 30
    when 0.175..0.199
      @meet_cursor = 25
    when 0.15..0.174
      @meet_cursor = 20
    when 0.125..0.149
      @meet_cursor = 15
    when 0.1..0.124
      @meet_cursor = 10
    when 0.05..0.09
      @meet_cursor = 5
    when 0..0.49
      @meet_cursor = 0
    end

    # case @batters_box
    # when 440..1000
    #   @meet_cursor
    # when 300..439 && @meet_cursor >= 70
    #   @meet_cursor = @meet_cursor = 65
    # when 300..439 && @meet_cursor <= 15
    #   @meet_cursor = @meet_cursor = 20
    # when 300..439
    #   @meet_cursor = @meet_cursor - 5
    # when 200..299 && @meet_cursor >= 60
    #   @meet_cursor = @meet_cursor = 55
    # when 200..299 && @meet_cursor <= 15
    #   @meet_cursor = @meet_cursor = 20
    # when 200..299
    #   @meet_cursor = @meet_cursor - 5
    # when 100..199 && @meet_cursor >= 50
    #   @meet_cursor = @meet_cursor = 45
    # when 100..199 && @meet_cursor <= 15
    #   @meet_cursor = @meet_cursor = 15
    # when 100..199
    #   @meet_cursor = @meet_cursor - 10
    # when 50..99 && @meet_cursor >= 40
    #   @meet_cursor = @meet_cursor = 35
    # when 50..99 && @meet_cursor <= 10
    #   @meet_cursor = @meet_cursor = 10
    # when 50..99
    #   @meet_cursor = @meet_cursor - 10
    # when 0..49 && @meet_cursor >= 30
    #   @meet_cursor = @meet_cursor = 25
    # when 0..49 && @meet_cursor <= 10
    #   @meet_cursor = @meet_cursor = 10
    # when 0..49
    #   @meet_cursor = @meet_cursor - 10
    # end

  end

  def new
  end

  def create
    @batter = Batter.new(batter_params)
    @batter.save
    redirect_to batter_path(@batter)
  end

  def batter_params
    params.require(:batter).permit(:hit, :at_bat, :batters_box)
  end

end
