class Batter < ApplicationRecord

  # 打撃基本能力
  # ミートカーソルメソッド
  def self.meet_cursor(batting_average, batters_box, meet_cursor)
    case batting_average
    when 0.39..1
      meet_cursor = 100
    when 0.37..0.389
      meet_cursor = 95
    when 0.36..0.369
      meet_cursor = 90
    when 0.35..0.359
      meet_cursor = 85
    when 0.34..0.349
      meet_cursor = 80
    when 0.33..0.339
      meet_cursor = 75
    when 0.32..0.329
      meet_cursor = 70
    when 0.31..0.319
      meet_cursor = 65
    when 0.3..0.319
      meet_cursor = 60
    when 0.285..0.299
      meet_cursor = 55
    when 0.27..0.284
      meet_cursor = 50
    when 0.255..0.279
      meet_cursor = 45
    when 0.24..0.254
      meet_cursor = 40
    when 0.22..0.239
      meet_cursor = 35
    when 0.2..0.219
      meet_cursor = 30
    when 0.175..0.199
      meet_cursor = 25
    when 0.15..0.174
      meet_cursor = 20
    when 0.125..0.149
      meet_cursor = 15
    when 0.1..0.124
      meet_cursor = 10
    when 0.05..0.09
      meet_cursor = 5
    when 0..0.49
      meet_cursor = 0
    end

    if batters_box >= 440 then
      meet_cursor
    elsif batters_box >= 300 && meet_cursor >= 70
      meet_cursor = meet_cursor = 65
    elsif batters_box >= 300 && meet_cursor <= 15
      meet_cursor = meet_cursor = 20
    elsif batters_box >= 300
      meet_cursor = meet_cursor - 5
    elsif batters_box >= 200 && meet_cursor >= 60
      meet_cursor = meet_cursor = 55
    elsif batters_box >= 200 && meet_cursor <= 15
      meet_cursor = meet_cursor = 20
    elsif batters_box >= 200
      meet_cursor = meet_cursor - 5
    elsif batters_box >= 100 && meet_cursor >= 50
      meet_cursor = meet_cursor = 45
    elsif batters_box >= 100 && meet_cursor <= 15
      meet_cursor = meet_cursor = 15
    elsif batters_box >= 100
      meet_cursor = meet_cursor - 10
    elsif batters_box >= 50 && meet_cursor >= 40
      meet_cursor = meet_cursor = 35
    elsif batters_box >= 50 && meet_cursor <= 10
      meet_cursor = meet_cursor = 10
    elsif batters_box >= 50
      meet_cursor = meet_cursor - 10
    elsif batters_box <= 49 && meet_cursor >= 30
      meet_cursor = meet_cursor = 25
    elsif batters_box <= 49 && meet_cursor <= 10
      meet_cursor = meet_cursor = 10
    elsif batters_box <= 49
      meet_cursor = meet_cursor - 10
    end
  end

  # 弾道メソッド
  def self.ballistic(home_run, ballistic)
    case home_run
    when 21..100
      ballistic = 4
    when 11..20
      ballistic = 3
    when 1..10
      ballistic = 2
    else
      ballistic = 1
    end
  end

  # パワーメソッド
  def self.power(home_run, batters_box, slugging_percentage, power)
    if home_run >= 20 then
      a = home_run - 20
      b = a * 2.5 + 115
      c = home_run - 20
      d = c * 2.5 + 45
      e = batters_box / 420
      f = 1 - e
      g = d * f / 2
      h = g + b

      power = h
    else
      a = home_run - 5
      b = a * 3 + 80
      c = home_run - 5
      d = c * 3
      e = batters_box / 420
      f = 1 - e
      g = f / 2
      h = d * g + b

      power = h
    end
  end

  # 打撃特殊能力
  # アベレージヒッター
  def self.average_hitter(at_bat, hit, home_run, average_hitter)
    @average_hitter = at_bat / (hit - home_run)

    if @average_hitter <= 3.5 && hit >= 200
      @average_hitter = "安打製造機"
    elsif @average_hitter <= 3.5
      @average_hitter = "アベレージヒッター"
    else
      @average_hitter = ""
    end
  end


end
