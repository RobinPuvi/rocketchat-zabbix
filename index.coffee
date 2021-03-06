Fs   = require 'fs'
Path = require 'path'

module.exports = (robot) ->
  path = Path.resolve __dirname, 'scripts'

  Fs.exists path, (exists) ->
    return unless exists
    for file in Fs.readdirSync(path)
      robot.loadFile(path, file)