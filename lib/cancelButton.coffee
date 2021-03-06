
class CancelButtonBehavior extends Marionette.Behavior

  ui:
    cancel: '[data-click=cancel]'

  events:
    'click @ui.cancel:not(.disabled)': 'onCancelClick'

  initialize: (options={}) ->
    @view.disableCancel = => @disableCancel()
    @view.enableCancel  = => @enableCancel()

  onCancelClick: -> @view.triggerMethod('cancel')
  disableCancel: -> @ui.cancel.addClass('disabled')
  enableCancel: ->  @ui.cancel.removeClass('disabled')

# # # # #

module.exports = CancelButtonBehavior
