#!/usr/bin/env ruby

emojis = {
  "happy" => ["ヽ(•‿•)ノ", "\\(◦'⌣'◦)/", "\(◦'⌣'◦)/", "◡‿◡✿"],
  "creepy" => ["ʘ‿ʘ", "◉‿◉"],
  "table-flip" => ["(ﾉ °益°)ﾉ 彡 ┻━┻", "(╯°□°）╯︵ ┻━┻", "┯━┯ノ(º₋ºノ)"],
  "shrug" => ["¯\_(ツ)_/¯"],
  "angry" => ["ლ(ಠ_ಠლ)", "ಠ_ಠ"],
  "sad" => ["(⌣̩̩́_⌣̩̩̀)", "(⌣́_⌣̀) ", "(ʃ_⌣̀ )/||", "ಥ_ಥ"],
  "love" => ["(Ɔ ˘⌣˘)♥(˘⌣˘ C)", "(Ɔ ˘⌣˘)˘⌣˘ C)", "(ɔˆ ³(ˆ⌣ˆc)", "❣◕ ‿ ◕❣"],
  "sleep" => ["(-, - )…zzzZZZ"],
  "serious" => ["(-_-)ゞ゛"],
  "other" => {
    "saraza" => "tu vieja",
  },
}

def format(hash_or_string)
  if (hash_or_string.is_a?(Hash))
    hash_or_string.map { |k, v| "#{k}: {\n  #{format v}\n}" }.join(",\n")
  elsif (hash_or_string.is_a?(Array))
    hash_or_string.map { |e| format e }.join(" | ")
  else
    hash_or_string
  end
end

emoji = emojis

ARGV.each do |arg|
  if (emoji.is_a?(Array))
    emoji = emoji[arg.to_i]
  else
    emoji = emoji[arg]
  end
end

str = ""

if ARGV.length > 0
  str = ARGV.join "."
end

puts format(emoji)
