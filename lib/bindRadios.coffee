
# Databinding for Radio
class BindRadios extends require './bindBase'

  ui:
    radio: 'input[type=radio]'

  events:
    'change @ui.radio': 'updateAttrs'

# # # # #

module.exports = BindRadios
