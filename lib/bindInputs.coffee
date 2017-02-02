
# Databinding for form inputs
class BindInputs extends require './bindBase'

  events:
    'input input':  'updateAttrs'

# # # # #

module.exports = BindInputs
