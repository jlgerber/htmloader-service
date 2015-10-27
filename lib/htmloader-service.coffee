{CompositeDisposable} = require 'atom'
htmloaderv1 = require './htmloaderv1.js'
module.exports = HtmloaderService =
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'htmloader-service:test': => @test()

  loadHtmlServiceV1: ->
    return htmloaderv1

  deactivate: ->
    @subscriptions.dispose()

  serialize: ->

  test: ->
    srv = @loadHtmlServiceV1()
    frag= srv.load(__dirname + '/../servicetest.html')
    console.log "fragment returned"
    console.log frag
