AppDemo.Views.Suppliers ||= {}

class AppDemo.Views.Suppliers.IndexView extends Backbone.View
  template: JST["backbone/templates/suppliers/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (supplier) =>
    view = new AppDemo.Views.Suppliers.SupplierView({model : supplier})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(suppliers: @collection.toJSON() ))
    @addAll()

    return this
