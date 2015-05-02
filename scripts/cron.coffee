cronJob = require('cron').CronJob
ROOM_ID = process.env.HUBOT_IDOBATA_DEFAULT_ROOM
 
module.exports = (robot) ->
  send = (msg) ->
    robot.send { message: { data: {room_id: ROOM_ID } } }, msg
 
  # *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  new cronJob('0 0 9 * * 1-5', () ->
    send "仕事の時間ですな。……しかし、何時もこれくらい楽しければ良いのですが"
  ).start()

  new cronJob('0 0 12 * * *', () ->
    send "ああ、昼食がきたようです。ご一緒しましょう。"
  ).start()

  new cronJob('0 0 19 * * *', () ->
    send "率直に申し上げるならば、こちらの食事は常駐戦場を思い出す見事なものと感服せざるをえません。"
  ).start()
