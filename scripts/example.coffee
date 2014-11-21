# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  robot.respond /open the (.*) doors/i, (msg) ->
    doorType = msg.match[1]
    if doorType is "pod bay"
      msg.reply "I'm afraid I can't let you do that."
    else
      msg.reply "Opening #{doorType} doors"

  robot.hear /I like pie/i, (msg) ->
    msg.emote "makes a freshly baked pie"

  robot.respond /you are a little slow/, (msg) ->
    setTimeout () ->
      msg.send "Who you calling 'slow'?"
    , 60 * 1000

