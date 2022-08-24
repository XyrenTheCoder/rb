require "discordrb"
require "cmath"

rb_bot = Discordrb::Commands::CommandBot.new token: <token>, client_id: <id>, prefix: "<prefix>"

# real (non imaginary)
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

# complex
rb_bot.command :sqrt do |event, *arg| #square root
  event.respond CMath.sqrt(arg.join(" ").to_c).to_s
  #event.respond Math.sqrt(arg.to_f).to_s
end

rb_bot.command :cbrt do |event, *arg| #cube root
  event.respond CMath.cbrt(arg.join(" ").to_c).to_s
end

rb_bot.command :abs do |event, *arg| #absolute value
  event.respond arg.to_c.abs().to_s
end

rb_bot.command :sin do |event, *arg| #sine
  event.respond CMath.sin(arg.join(" ").to_c).to_s
end

rb_bot.command :cos do |event, *arg| #cosine
  event.respond CMath.cos(arg.join(" ").to_c).to_s
end

rb_bot.command :tan do |event, *arg| #tangent
  event.respond CMath.tan(arg.join(" ").to_c).to_s
end

rb_bot.command :sinh do |event, *arg| #hyperbolic sine
  event.respond CMath.sinh(arg.join(" ").to_c).to_s
end

rb_bot.command :cosh do |event, *arg| #hyperbolic cosine
  event.respond CMath.cosh(arg.join(" ").to_c).to_s
end

rb_bot.command :tanh do |event, *arg| #hyperbolic tangent
  event.respond CMath.tanh(arg.join(" ").to_c).to_s
end

rb_bot.command :log do |event, base, *arg| #logarithm
  event.respond CMath.log(arg.join(" ").to_c, base.to_f).to_s
end

rb_bot.command :ln do |event, *arg| #natural logarithm
  event.respond CMath.log(arg.join(" ").to_c, Math::E).to_s
end


rb_bot.run
rb_bot.join
