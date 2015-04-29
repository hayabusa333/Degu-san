cronJob = require('cron').CronJob
ROOM_ID = process.env.HUBOT_IDOBATA_DEFAULT_ROOM
 
module.exports = (robot) ->
  send = (msg) ->
    robot.send { message: { data: {room_id: ROOM_ID } } }, msg
 
  # *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  new cronJob('0 0 9 * * *', () ->
    send "仕事の時間ですな。……しかし、何時もこれくらい楽しければ良いのですが"
  ).start()

