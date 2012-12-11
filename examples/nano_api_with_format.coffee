## Data
Users = [ {
  uri_id: "evangenieur"
  username: "Evangenieur"
  channels: [
    { 
      uri_id: "my_channel"
      name: "My Channel"
      messages: []
    } ] 
  } 
]
## Data Traversal
get_user = (user_uri_id) -> 
  if user = Users.filter((user) -> user.uri_id is user_uri_id).pop()
    user.get_channel = (channel_uri_id) ->
      user.channels.filter((channel) => 
          channel_uri_id is channel.uri_id
        ).pop()
    user
## API
require("zappajs") ->
  @get "/:user/:channel": ->
    chan = get_user(@params.user)?.get_channel(@params.channel)
    if chan and @query.message?
        chan.messages.push @query.message
    @send chan || 404

  @get "/:user": ->
    @render "index", data: get_user(@params.user)
    return 
    @send get_user(@params.user) || 404

  @view "index": ->
    inspect = (data) ->
      ul ->
        for k, v of data
          if typeof v isnt "function"
            li ->
              text "#{k}: "
              if typeof v is "object"
                inspect v
              else
                text v
    html ->
      body ->
        inspect @data