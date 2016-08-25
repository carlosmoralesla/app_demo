AppDemo.Views.Suppliers ||= {}

class AppDemo.Views.Suppliers.EditView extends Backbone.View
  template: JST["backbone/templates/suppliers/edit"]

  events:
    "submit #edit-supplier": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (supplier) =>
        @model = supplier
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
