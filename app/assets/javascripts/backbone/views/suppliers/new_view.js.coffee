AppDemo.Views.Suppliers ||= {}

class AppDemo.Views.Suppliers.NewView extends Backbone.View
  template: JST["backbone/templates/suppliers/new"]

  events:
    "submit #new-supplier": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (supplier) =>
        @model = supplier
        window.location.hash = "/#{@model.id}"

      error: (supplier, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
