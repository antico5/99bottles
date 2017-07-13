class Bottles
  def song
    verses 99, 0
  end

  def verses from, to
    from.downto(to).map {|number| verse number }.join("\n")
  end

  def verse number
    "#{ bottles(number).capitalize } on the wall, #{ bottles(number) }.\n" +
    "#{ take(number) }, #{ bottles(number - 1) } on the wall.\n"
  end

  private

  def take number
    case number
    when 0
      "Go to the store and buy some more"
    when 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end

  def bottles number
    case number
    when -1
      "99 bottles of beer"
    when 0
      "no more bottles of beer"
    when 1
      "1 bottle of beer"
    else
      "#{ number } bottles of beer"
    end
  end
end
