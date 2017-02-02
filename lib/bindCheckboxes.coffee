
# FEATURE - pass in Bootstrap Switch Options / disable switch
class BindCheckboxes extends require './bindBase'

  ui:
    checkbox: 'input[type=checkbox]'

  events:
    'change @ui.checkbox':                        'updateAttrs'
    'switchChange.bootstrapSwitch @ui.checkbox':  'updateAttrs'

  onRender: ->
    @ui.checkbox.bootstrapSwitch({ size: 'small', onText: 'Yes', offText: 'No' })

# # # # #

module.exports = BindCheckboxes
