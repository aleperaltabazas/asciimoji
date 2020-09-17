# asciimoji

ヽ(•‿•)ノ (ﾉ °益°)ﾉ 彡 ┻━┻ ಠ_ಠ

Small script to quickly access ascii emojis from the command line. Running the script will print each emoji in each category:
```bash
$ ruby asciimoji.rb
happy: {
  ヽ(•‿•)ノ | ◡‿◡✿ | ...
},
table-flip: {
  (ﾉ °益°)ﾉ 彡 ┻━┻ | ...
},
...
```

You can also pass the key you want:
```bash
$ ruby asciimoji.rb happy
ヽ(•‿•)ノ | ◡‿◡✿ | ...
```

...and even the index!

```bash
$ ruby asciimoji.rb happy 0
ヽ(•‿•)ノ
```

If you want to add your own emojis, just edit the `emojis` hash in the `asciimoji.rb`. The key should be a symbol or a string, and the value can be a String, an Array, or even a Hash! You can nest hashes as much as you want!
```ruby
emojis = {
  :happy => {
    :with_nose => ":^)",
    :open_mouth => ":D",
    :inverted => (:"
  }
}
```
```bash
$ ruby asciimoji.rb happy with_nose
:^)
```

## TODO
Fix tab size on nested hashes, right now is just 2 spaces:
```
happy: {
  very_happy: {
  :D
}
}
```
