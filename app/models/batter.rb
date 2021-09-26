class Batter < ApplicationRecord

  enum team: [ "巨人", "阪神", "中日", "ヤクルト", "広島", "横浜",
               "西武", "ソフトバンク", "日本ハム", "楽天", "オリックス"]

  # リーグ平均データ
  # リーグ変換
  def self.league_change(team, league)
    if team == "巨人" || team == "阪神" || team == "中日" ||
       team == "ヤクルト" || team == "広島" || team == "横浜"
      league = "セ・リーグ"
    else
      league = "パ・リーグ"
    end
  end

  # リーグ平均長打率
  def self.
    league_average_slugging_percentage(
      league, year,league_average_slugging_percentage)
    if league == "セ・リーグ"
      case year
      when 2020
        league_average_slugging_percentage = 0.405
      when 2019
        league_average_slugging_percentage = 0.406
      when 2018
        league_average_slugging_percentage = 0.414
      when 2017
        league_average_slugging_percentage = 0.391
      when 2016
        league_average_slugging_percentage = 0.392
      when 2015
        league_average_slugging_percentage = 0.373
      when 2014
        league_average_slugging_percentage = 0.404
      when 2013
        league_average_slugging_percentage = 0.389
      when 2012
        league_average_slugging_percentage = 0.351
      when 2011
        league_average_slugging_percentage = 0.353
      when 2010
        league_average_slugging_percentage = 0.426
      when 2009
        league_average_slugging_percentage = 0.401
      when 2008
        league_average_slugging_percentage = 0.405
      when 2007
        league_average_slugging_percentage = 0.416
      when 2006
        league_average_slugging_percentage = 0.409
      when 2005
        league_average_slugging_percentage = 0.426
      when 2004
        league_average_slugging_percentage = 0.453
      when 2003
        league_average_slugging_percentage = 0.441
      when 2002
        league_average_slugging_percentage = 0.408
      when 2001
        league_average_slugging_percentage = 0.412
      when 2000
        league_average_slugging_percentage = 0.419
      end
    else
      case year
      when 2020
        league_average_slugging_percentage = 0.377
      when 2019
        league_average_slugging_percentage = 0.393
      when 2018
        league_average_slugging_percentage = 0.399
      when 2017
        league_average_slugging_percentage = 0.388
      when 2016
        league_average_slugging_percentage = 0.376
      when 2015
        league_average_slugging_percentage = 0.377
      when 2014
        league_average_slugging_percentage = 0.381
      when 2013
        league_average_slugging_percentage = 0.378
      when 2012
        league_average_slugging_percentage = 0.348
      when 2011
        league_average_slugging_percentage = 0.349
      when 2010
        league_average_slugging_percentage = 0.405
      when 2009
        league_average_slugging_percentage = 0.408
      when 2008
        league_average_slugging_percentage = 0.406
      when 2007
        league_average_slugging_percentage = 0.386
      when 2006
        league_average_slugging_percentage = 0.389
      when 2005
        league_average_slugging_percentage = 0.416
      when 2004
        league_average_slugging_percentage = 0.440
      when 2003
        league_average_slugging_percentage = 0.445
      when 2002
        league_average_slugging_percentage = 0.406
      when 2001
        league_average_slugging_percentage = 0.427
      when 2000
        league_average_slugging_percentage = 0.406
      end
    end
  end

  # リーグ平均本塁打率
  def self.
    league_average_home_run_rate(
      league, year, league_average_home_run_rate)
    if league == "セ・リーグ"
      case year
      when 2020
        league_average_home_run_rate = 0.0281
      when 2019
        league_average_home_run_rate = 0.0289
      when 2018
        league_average_home_run_rate = 0.0284
      when 2017
        league_average_home_run_rate = 0.0249
      when 2016
        league_average_home_run_rate = 0.0246
      when 2015
        league_average_home_run_rate = 0.0200
      when 2014
        league_average_home_run_rate = 0.0252
      when 2013
        league_average_home_run_rate = 0.0246
      when 2012
        league_average_home_run_rate = 0.0161
      when 2011
        league_average_home_run_rate = 0.0174
      when 2010
        league_average_home_run_rate = 0.0295
      when 2009
        league_average_home_run_rate = 0.0266
      when 2008
        league_average_home_run_rate = 0.0252
      when 2007
        league_average_home_run_rate = 0.0282
      when 2006
        league_average_home_run_rate = 0.0277
      when 2005
        league_average_home_run_rate = 0.0306
      when 2004
        league_average_home_run_rate = 0.0374
      when 2003
        league_average_home_run_rate = 0.0345
      when 2002
        league_average_home_run_rate = 0.0289
      when 2001
        league_average_home_run_rate = 0.0279
      when 2000
        league_average_home_run_rate = 0.0297
      end
    else
      case year
      when 2020
        league_average_home_run_rate = 0.0261
      when 2019
        league_average_home_run_rate = 0.0296
      when 2018
        league_average_home_run_rate = 0.0297
      when 2017
        league_average_home_run_rate = 0.0274
      when 2016
        league_average_home_run_rate = 0.0218
      when 2015
        league_average_home_run_rate = 0.0225
      when 2014
        league_average_home_run_rate = 0.0217
      when 2013
        league_average_home_run_rate = 0.0206
      when 2012
        league_average_home_run_rate = 0.0151
      when 2011
        league_average_home_run_rate = 0.0160
      when 2010
        league_average_home_run_rate = 0.0253
      when 2009
        league_average_home_run_rate = 0.0261
      when 2008
        league_average_home_run_rate = 0.0257
      when 2007
        league_average_home_run_rate = 0.0221
      when 2006
        league_average_home_run_rate = 0.0230
      when 2005
        league_average_home_run_rate = 0.0297
      when 2004
        league_average_home_run_rate = 0.0332
      when 2003
        league_average_home_run_rate = 0.0346
      when 2002
        league_average_home_run_rate = 0.0310
      when 2001
        league_average_home_run_rate = 0.0359
      when 2000
        league_average_home_run_rate = 0.0277
      end
    end
  end

  # ボール補正
  def self.ball_correction(year, ball_correction)
    if year == 2011 || year == 2012
      ball_correction = 1.1
    elsif year == 2001 || year == 2002 || year == 2003 || year == 2004
      ball_correction = 0.9
    else
      ball_correction = 1
    end
  end

  # 球場補正
  def self.
    baseball_stadium_correction(
      team, year, baseball_stadium_correction)
    if team == "日本ハム"
      baseball_stadium_correction = 1.1
    elsif team == "ソフトバンク"
      if year >= 2015
        baseball_stadium_correction = 1
      else
        baseball_stadium_correction = 1.1
      end
    elsif team == "オリックス" || team == "楽天" || team == "中日"
      baseball_stadium_correction = 1.05
    else
      baseball_stadium_correction = 1
    end
  end

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
  def self.power(home_run, batters_box, slugging_percentage,
                 league_average_slugging_percentage, power,
                 ball_correction, baseball_stadium_correction)
    if home_run >= 20
      a = home_run - 20
      b = a * 2.5 + 115
      c = home_run - 20
      d = c * 2.5 + 45
      e = batters_box / 420
      f = 1 - e
      g = d * f / 2
      h = g + b
      i = slugging_percentage - league_average_slugging_percentage + 1
      j = h * i * ball_correction * baseball_stadium_correction
      power = j
    else
      a = home_run - 5
      b = a * 3 + 80
      c = home_run - 5
      d = c * 3
      e = batters_box / 420
      f = 1 - e
      g = d * f / 2
      h = g + b
      i = slugging_percentage - league_average_slugging_percentage + 1
      j = h * i * ball_correction * baseball_stadium_correction
      power = j
    end

    # 100段階変換
    case power
    when 250..1000
      power = 100
    when 225..254
      power = 99
    when 200..224
      power = 97
    when 190..199
      power = 95
    when 180..189
      power = 90
    when 170..179
      power = 88
    when 160..169
      power = 85
    when 150..159
      power = 83
    when 140..149
      power = 80
    when 130..139
      power = 76
    when 120..129
      power = 73
    when 110..119
      power = 70
    when 105..109
      power = 66
    when 100..104
      power = 63
    when 95..99
      power = 60
    when 88..94
      power = 55
    when 80..87
      power = 50
    when 75..79
      power = 46
    when 70..74
      power = 43
    when 65..69
      power = 40
    when 60..64
      power = 36
    when 55..59
      power = 33
    when 50..54
      power = 30
    when 40..49
      power = 24
    when 30..39
      power = 18
    when 25..29
      power = 15
    when 15..24
      power = 10
    when 10..14
      power = 7
    when 5..9
      power = 5
    else
      power = 0
    end

    # 本塁打補正
    if power >= 100 && home_run >= 60
      power = 100
    elsif power >= 100
      power = 99
    elsif power >= 90 && home_run >= 50
      power = power
    elsif power >= 90 && home_run >= 40
      power = 89
    elsif power >= 85 && home_run >= 40
      power = power
    elsif power >= 85 && home_run >= 30
      power = 84
    elsif power >= 80 && home_run >= 30
      power = power
    elsif power >= 80 && home_run >= 20
      power = 79
    elsif power >= 70 && home_run >= 20
      power = power
    elsif power >= 70 && home_run >= 10
      power = 69
    elsif power >= 60 && home_run >= 10
      power = power
    elsif power >= 60 && home_run >= 1
      power = 59
    elsif power >= 40 && home_run >= 1
      power = power
    else
      slugging_percentage * 100
    end
  end

  # 打撃特殊能力
  # アベレージヒッター
  def self.average_hitter(at_bat, hit, home_run, average_hitter)
    average_hitter = at_bat / (hit - home_run)

    if average_hitter <= 3.5 && hit >= 200
      average_hitter = "安打製造機"
    elsif average_hitter <= 3.5
      average_hitter = "アベレージヒッター"
    else
      average_hitter = ""
    end
  end

  # パワーヒッター
  def self.power_hitter(home_run, league_average_home_run_rate, power_hitter)
    power_hitter = (home_run * 0.0250) / league_average_home_run_rate
    if power_hitter >= 50
      power_hitter = "アーチスト"
    elsif power_hitter >= 30
      power_hitter = "パワーヒッター"
    else
      power_hitter = ""
    end
  end

end
