
# TODO - this doesn't work on multiple selects.
class BindSelects extends require './bindBase'

  events:
    'change select':  'updateAttrs'

# # # # #

module.exports = BindSelects
