
class TooltipBehavior extends Marionette.Behavior

  ui:
    tooltips: '[data-toggle=tooltip]'

  initialize: ->
    # Proxies clear method to be accessible inside the view
    @view.clearTooltips = => @clear()

  clear: ->
    @ui.tooltips.tooltip('hide')
    @ui.tooltips.tooltip('dispose')

  onRender: -> @ui.tooltips?.tooltip()
  onBeforeDestroy: -> @clear()

# # # # #

module.exports = TooltipBehavior
