
# Depends on Clipboard.js
# https://clipboardjs.com/
class CopyToClipboard extends Marionette.Behavior

  ui:
    copyToClipboard: '[data-click=clipboard]'

  events:
    'click @ui.copyToClipboard': 'copyToClipboard'

  copyToClipboard: (e) ->
    e.preventDefault()

    # Initializes Clipboard plugin
    text = @options.text
    @clipboard = new Clipboard('[data-click=clipboard]', { text: -> text })

    # Success callback
    @clipboard.on 'success', =>
      @destroyClipboard()
      @view.triggerMethod 'clipboard:success'

    # Error callback
    @clipboard.on 'error', =>
      @destroyClipboard()
      @view.triggerMethod 'clipboard:error'

  # Destroys each time, wether successful or not
  destroyClipboard: => @clipboard.destroy()

# # # # #

module.exports = CopyToClipboard

# # # # #

# USAGE:
# class MyView extends Mn.LayoutView

#   behaviors:
#     CopyToClipboard: { text: 'string_to_be_copied' }

#   # Optional success callback
#   onClipboardSuccess: -> # Show Success Message

#   # Optional error callback
#   onClipboardError: -> # Show Error Message
