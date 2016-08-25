AppDemo.Views.Suppliers ||= {}

class AppDemo.Views.Suppliers.SupplierView extends Backbone.View
  template: JST["backbone/templates/suppliers/supplier"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
