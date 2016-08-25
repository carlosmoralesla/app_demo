AppDemo.Views.Suppliers ||= {}

class AppDemo.Views.Suppliers.ShowView extends Backbone.View
  template: JST["backbone/templates/suppliers/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
