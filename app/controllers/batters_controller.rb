class BattersController < ApplicationController

  def index

  end

  def show
    batter = Batter.find params[:id]
    hit = batter["hit"]
    at_bat = batter["at_bat"].to_f
    batters_box = batter["batters_box"]
    home_run = batter["home_run"]
    double = batter["double"]
    triple = batter["triple"]
    team = batter["team"]
    year = batter["year"]


    # 打率
    @batting_average = (hit / at_bat).round(3)
    # 単打
    single_hit = (hit - home_run - double - triple)
    # 塁打
    base_hit = ((double * 2) + (triple * 3) + (home_run * 4) + single_hit)
    # 長打率
    @slugging_percentage = (base_hit / at_bat).round(3)
    # リーグチェック
    @league = Batter.league_change(team, @league)
    # リーグ平均長打率
    @league_average_slugging_percentage =
      Batter.league_average_slugging_percentage(@league, year, @league_average_slugging_percentage)
    # リーグ平均本塁打率
    @league_average_home_run_rate =
      Batter.league_average_home_run_rate(@league, year, @league_average_home_run_rate)
    # ボール補正
    @ball_correction = Batter.ball_correction(year, @ball_correction)
    # 球場補正
    @baseball_stadium_correction = 
      Batter.baseball_stadium_correction(team, year, @baseball_stadium_correction)

    # ミートカーソル計算
    @meet_cursor = Batter.meet_cursor(@batting_average, batters_box, @meet_cursor)
    # 弾道計算
    @ballistic = Batter.ballistic(home_run, @ballistic)
    # パワー計算
    @power = Batter.power(home_run, batters_box, @slugging_percentage,
                          @league_average_slugging_percentage, @power,
                          @ball_correction, @baseball_stadium_correction)


    # 特殊能力
    # アベレージヒッター
    @average_hitter = Batter.average_hitter(at_bat, hit, home_run, @average_hitter)
    # パワーヒッター
    @power_hitter = Batter.power_hitter(home_run, @league_average_home_run_rate, @power_hitter)


  end

  def new
  end

  def create
    @batter = Batter.new(batter_params)
    @batter.save
    redirect_to batter_path(@batter)
  end

  def batter_params
    params.require(:batter).permit(:hit, :at_bat, :batters_box, :home_run, :double,
                                   :triple, :team, :year)
  end

end
