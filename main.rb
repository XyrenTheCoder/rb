require "discordrb"

rb_bot = Discordrb::Bot.new token: <token>, client_id: <id>, prefix: "<prefix>"

# commands
rb_bot.command :sum, min_args: 2 do |event, *args|
    event.respond args.collect(&:to_i).collect(&:+)
end

rb_bot.command :subtract, min_args: 2 do |event, *args|
    event.respond args.collect(&:to_i).collect(&:-)
end

rb_bot.command :multiply, min_args: 2 do |event, *args|
    event.respond args.collect(&:to_i).collect(&:*)
end

rb_bot.command :divide, min_args: 2 do |event, *args|
    nums = args.collect &:to_i
    if arg2 == 0
        raise ZeroDivisionError
    else
        event.respond nums.collect &:/

rb_bot.run
rb_bot.join
