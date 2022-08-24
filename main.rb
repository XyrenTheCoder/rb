require "discordrb"

rb_bot = Discordrb::Commands::CommandBot.new token: <token>, client_id: <id>, prefix: "<prefix>"

#commands
rb_bot.command :sum, min_args: 2 do |event, *args| #sum
  event.respond args.collect(&:to_f).inject(&:+).to_s
end

rb_bot.command :sub, min_args: 2 do |event, *args| #subtract
  event.respond args.collect(&:to_f).inject(&:-).to_s
end

rb_bot.command :mul, min_args: 2 do |event, *args| #multiply
  event.respond args.collect(&:to_f).inject(&:*).to_s
end

rb_bot.command :div, min_args: 2 do |event, *args| #divide
  event.respond args.collect(&:to_f).inject(&:/).to_s
end

rb_bot.command :abs, min_args: 1 do |event, *args| #absolute value
  event.respond args.collect(&:to_f).abs().to_s
end

rb_bot.command :sin, min_args: 1 do |event, *args| #sine
  event.respond Math.sin(args.collect(&:to_f)).to_s
end

rb_bot.command :cos, min_args: 1 do |event, *args| #cosine
  event.respond Math.cos(args.collect(&:to_f)).to_s
end

rb_bot.command :tan, min_args: 1 do |event, *args| #tangent
  event.respond Math.tan(args.collect(&:to_f)).to_s
end


rb_bot.run
rb_bot.join
