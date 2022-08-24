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

rb_bot.command :sqrt do |event, arg| #square root
  if arg < 0
    raise ArgumentError
  else
    event.respond Math.sqrt(arg.to_f).to_s
end

rb_bot.command :abs do |event, arg| #absolute value
  event.respond arg.to_f.abs().to_s
end

rb_bot.command :sin do |event, arg| #sine
  event.respond Math.sin(arg.to_f).to_s
end

rb_bot.command:cos do |event, arg| #cosine
  event.respond Math.cos(arg.to_f).to_s
end

rb_bot.command :tan do |event, arg| #tangent
  event.respond Math.tan(arg.to_f).to_s
end


rb_bot.run
rb_bot.join
