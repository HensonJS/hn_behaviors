
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
    @clipboard = new Clipboard('[data-click=clipboard]', { text: -> return @options.text })

    # Sets up callbacks
    @clipboard.on 'success', @clipboardCallback
    @clipboard.on 'error', @clipboardCallback

  # Destroys each time, wether successful or not
  clipboardCallback: => @clipboard.destroy()


# # # # #

module.exports = CopyToClipboard

# # # # #

# USAGE:
# class MyView extends Mn.LayoutView
#
#   behaviors:
#     CopyToClipboard: { text: 'string_to_be_copied' }
#
