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
      ball_correction = 1.05
    elsif year == 2001 || year == 2002 || year == 2003 || year == 2004
      ball_correction = 0.95
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
    when 0.39..1 then meet_cursor = 100
    when 0.387..0.389  then meet_cursor = 99
    when 0.383..0.386 then meet_cursor = 98
    when 0.379..0.382 then meet_cursor = 97
    when 0.375..0.378 then meet_cursor = 96
    when 0.37..0.374 then meet_cursor = 95
    when 0.368..0.369 then meet_cursor = 94
    when 0.366..0.367 then meet_cursor = 93
    when 0.364..0.365 then meet_cursor = 92
    when 0.362..0.363 then meet_cursor = 91
    when 0.36..0.361 then meet_cursor = 90
    when 0.358..0.359 then meet_cursor = 89
    when 0.356..0.357 then meet_cursor = 88
    when 0.354..0.355 then meet_cursor = 87
    when 0.352..0.353 then meet_cursor = 86
    when 0.35..0.351  then meet_cursor = 85
    when 0.348..0.349 then meet_cursor = 84
    when 0.346..0.347 then meet_cursor = 83
    when 0.344..0.345 then meet_cursor = 82
    when 0.342..0.343 then meet_cursor = 81
    when 0.34..0.341  then meet_cursor = 80
    when 0.338..0.339 then meet_cursor = 79
    when 0.336..0.337 then meet_cursor = 78
    when 0.334..0.335 then meet_cursor = 77
    when 0.332..0.333 then meet_cursor = 76
    when 0.33..0.331  then meet_cursor = 75
    when 0.328..0.329 then meet_cursor = 74
    when 0.326..0.327 then meet_cursor = 73
    when 0.324..0.325 then meet_cursor = 72
    when 0.322..0.323 then meet_cursor = 71
    when 0.32..0.321  then meet_cursor = 70
    when 0.318..0.319 then meet_cursor = 69
    when 0.316..0.317 then meet_cursor = 68
    when 0.314..0.315 then meet_cursor = 67
    when 0.312..0.313 then meet_cursor = 66
    when 0.31..0.311  then meet_cursor = 65
    when 0.308..0.309 then meet_cursor = 64
    when 0.306..0.307 then meet_cursor = 63
    when 0.304..0.305 then meet_cursor = 62
    when 0.302..0.303 then meet_cursor = 61
    when 0.30..0.301  then meet_cursor = 60
    when 0.297..0.309 then meet_cursor = 59
    when 0.294..0.296 then meet_cursor = 58
    when 0.291..0.293 then meet_cursor = 57
    when 0.288..0.290 then meet_cursor = 56
    when 0.285..0.287  then meet_cursor = 55
    when 0.282..0.284 then meet_cursor = 54
    when 0.279..0.281 then meet_cursor = 53
    when 0.276..0.278 then meet_cursor = 52
    when 0.273..0.275 then meet_cursor = 51
    when 0.27..0.272 then meet_cursor = 50
    when 0.267..0.269 then meet_cursor = 49
    when 0.264..0.266 then meet_cursor = 48
    when 0.261..0.263 then meet_cursor = 47
    when 0.258..0.26 then meet_cursor = 46
    when 0.255..0.257  then meet_cursor = 45
    when 0.252..0.254 then meet_cursor = 44
    when 0.249..0.251 then meet_cursor = 43
    when 0.246..0.248 then meet_cursor = 42
    when 0.243..0.245 then meet_cursor = 41
    when 0.24..0.242 then meet_cursor = 40
    when 0.237..0.239 then meet_cursor = 39
    when 0.234..0.236 then meet_cursor = 38
    when 0.231..0.233 then meet_cursor = 37
    when 0.228..0.23 then meet_cursor = 36
    when 0.225..0.227  then meet_cursor = 35
    when 0.222..0.224 then meet_cursor = 34
    when 0.219..0.221 then meet_cursor = 33
    when 0.216..0.218 then meet_cursor = 32
    when 0.213..0.215 then meet_cursor = 31
    when 0.20..0.212 then meet_cursor = 30
    when 0.195..0.199 then meet_cursor = 29
    when 0.19..0.194 then meet_cursor = 28
    when 0.185..0.189 then meet_cursor = 27
    when 0.180..0.184 then meet_cursor = 26
    when 0.175..0.179  then meet_cursor = 25
    when 0.17..0.174 then meet_cursor = 24
    when 0.165..0.169 then meet_cursor = 23
    when 0.16..0.164 then meet_cursor = 22
    when 0.155..0.159 then meet_cursor = 21
    when 0.15..0.154 then meet_cursor = 20
    when 0.145..0.149 then meet_cursor = 19
    when 0.14..0.144 then meet_cursor = 18
    when 0.135..0.139 then meet_cursor = 17
    when 0.13..0.134 then meet_cursor = 16
    when 0.125..0.129 then meet_cursor = 15
    when 0.12..0.124 then meet_cursor = 14
    when 0.115..0.119 then meet_cursor = 13
    when 0.11..0.114 then meet_cursor = 12
    when 0.105..0.109 then meet_cursor = 11
    when 0.10..0.104 then meet_cursor = 10
    when 0.09..0.099 then meet_cursor = 9
    when 0.08..0.089 then meet_cursor = 8
    when 0.07..0.079 then meet_cursor = 7
    when 0.06..0.069 then meet_cursor = 6
    when 0.05..0.059 then meet_cursor = 5
    else
      meet_cursor = 4
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
  def self.power(home_run, at_bat, slugging_percentage, ball_correction, power)
    five_hundred_at_bat_conversion = (home_run / at_bat) * 500
    
    if five_hundred_at_bat_conversion >= 10
      five_hundred_at_bat_conversion = five_hundred_at_bat_conversion.round(0)
    else
      five_hundred_at_bat_conversion = five_hundred_at_bat_conversion
    end
      
    case five_hundred_at_bat_conversion
    when 60..200 then power = 100
    when 59 then power = 99
    when 58 then power = 98
    when 57 then power = 97
    when 56 then power = 96
    when 55 then power = 95
    when 54 then power = 94
    when 53 then power = 93
    when 52 then power = 92
    when 51 then power = 91
    when 50 then power = 90
    when 48..49 then power = 89
    when 46..47 then power = 88
    when 44..45 then power = 87
    when 42..43 then power = 86
    when 40..41 then power = 85
    when 38..39 then power = 84
    when 36..37 then power = 83
    when 34..35 then power = 82
    when 32..33 then power = 81
    when 30..31 then power = 80
    when 29 then power = 79
    when 28 then power = 78
    when 27 then power = 77
    when 26 then power = 76
    when 25 then power = 75
    when 24 then power = 74
    when 23 then power = 73
    when 22 then power = 72
    when 21 then power = 71
    when 20 then power = 70
    when 19 then power = 69
    when 18 then power = 68
    when 17 then power = 67
    when 16 then power = 66
    when 15 then power = 65
    when 14 then power = 64
    when 13 then power = 63
    when 12 then power = 62
    when 11 then power = 61
    when 10 then power = 60
    when 9.5..9.9 then power = 59
    when 9.0..9.4 then power = 58
    when 8.5..8.9 then power = 57
    when 8.0..8.4 then power = 56
    when 7.5..7.9 then power = 55
    when 7.0..7.4 then power = 54
    when 6.5..6.9 then power = 53
    when 6.0..6.4 then power = 52
    when 5.5..5.9 then power = 51
    when 5.0..5.4 then power = 50
    when 4.5..4.9 then power = 49
    when 4.0..4.4 then power = 48
    when 3.5..3.9 then power = 47
    when 3.0..3.4 then power = 46
    when 2.5..2.9 then power = 45
    when 2.0..2.4 then power = 44
    when 1.5..1.9 then power = 43
    when 1.0..1.4 then power = 42
    when 0.1..0.9 then power = 41
    else
      power = (slugging_percentage * 100)
    end
    
    power = (power * ball_correction).round(0)
    
  end
  
  # def self.power(home_run, batters_box, slugging_percentage,
  #               league_average_slugging_percentage, power,
  #               ball_correction, baseball_stadium_correction)
  #   if home_run >= 20
  #     a = home_run - 20
  #     b = a * 2.5 + 115
  #     c = home_run - 20
  #     d = c * 2.5 + 45
  #     e = batters_box / 420
  #     f = 1 - e
  #     g = d * f / 2
  #     h = g + b
  #     i = slugging_percentage - league_average_slugging_percentage + 1
  #     j = h * i * ball_correction * baseball_stadium_correction
  #     power = j
  #   else
  #     a = home_run - 5
  #     b = a * 3 + 80
  #     c = home_run - 5
  #     d = c * 3
  #     e = batters_box / 420
  #     f = 1 - e
  #     g = d * f / 2
  #     h = g + b
  #     i = slugging_percentage - league_average_slugging_percentage + 1
  #     j = h * i * ball_correction * baseball_stadium_correction
  #     power = j
  #   end

  #   # 100段階変換
  #   case power
  #   when 250..1000
  #     power = 100
  #   when 225..254
  #     power = 99
  #   when 200..224
  #     power = 97
  #   when 190..199
  #     power = 95
  #   when 180..189
  #     power = 90
  #   when 170..179
  #     power = 88
  #   when 160..169
  #     power = 85
  #   when 150..159
  #     power = 83
  #   when 140..149
  #     power = 80
  #   when 130..139
  #     power = 76
  #   when 120..129
  #     power = 73
  #   when 110..119
  #     power = 70
  #   when 105..109
  #     power = 66
  #   when 100..104
  #     power = 63
  #   when 95..99
  #     power = 60
  #   when 88..94
  #     power = 55
  #   when 80..87
  #     power = 50
  #   when 75..79
  #     power = 46
  #   when 70..74
  #     power = 43
  #   when 65..69
  #     power = 40
  #   when 60..64
  #     power = 36
  #   when 55..59
  #     power = 33
  #   when 50..54
  #     power = 30
  #   when 40..49
  #     power = 24
  #   when 30..39
  #     power = 18
  #   when 25..29
  #     power = 15
  #   when 15..24
  #     power = 10
  #   when 10..14
  #     power = 7
  #   when 5..9
  #     power = 5
  #   else
  #     power = 0
  #   end

  #   # 本塁打補正
  #   if power >= 100 && home_run >= 60
  #     power = 100
  #   elsif power >= 100
  #     power = 99
  #   elsif power >= 90 && home_run >= 50
  #     power = power
  #   elsif power >= 90 && home_run >= 40
  #     power = 89
  #   elsif power >= 85 && home_run >= 40
  #     power = power
  #   elsif power >= 85 && home_run >= 30
  #     power = 84
  #   elsif power >= 80 && home_run >= 30
  #     power = power
  #   elsif power >= 80 && home_run >= 20
  #     power = 79
  #   elsif power >= 70 && home_run >= 20
  #     power = power
  #   elsif power >= 70 && home_run >= 10
  #     power = 69
  #   elsif power >= 60 && home_run >= 10
  #     power = power
  #   elsif power >= 60 && home_run >= 1
  #     power = 59
  #   elsif power >= 40 && home_run >= 1
  #     power = power
  #   else
  #     slugging_percentage * 100
  #   end
  # end

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
