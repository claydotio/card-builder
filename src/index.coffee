request = require 'request-promise'
Promise = require 'bluebird'

class CardBuilder
  constructor: ({@api}) ->
    null

  create: ({url, callbackUrl}) =>
    Promise.resolve request "#{@api}/cards", {
      method: 'POST'
      body: {url, callbackUrl}
      json: true
    }



module.exports = CardBuilder
