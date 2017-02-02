
class FormSerializeBehavior extends Marionette.Behavior

  initialize: (options={}) ->
    @view.getFormData = (options) => @getFormData(options)
    @view.setFormData = (options) => @setFormData(options)

  getFormData: (options={}) ->
    return Backbone.Syphon.serialize(@) unless options.excludeFalsey

    # Excludes false / null / empty values
    data = Backbone.Syphon.serialize(@)

    for key, val of data
      delete data[key] if not val

    return data

  setFormData: (options) ->
    Backbone.Syphon.deserialize( @, @model.attributes )

# # # # #

module.exports = FormSerializeBehavior
