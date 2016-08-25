class AppDemo.Routers.SuppliersRouter extends Backbone.Router
  initialize: (options) ->
    @suppliers = new AppDemo.Collections.SuppliersCollection()
    @suppliers.reset options.suppliers

  routes:
    "new"      : "newSupplier"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newSupplier: ->
    @view = new AppDemo.Views.Suppliers.NewView(collection: @suppliers)
    $("#suppliers").html(@view.render().el)

  index: ->
    @view = new AppDemo.Views.Suppliers.IndexView(collection: @suppliers)
    $("#suppliers").html(@view.render().el)

  show: (id) ->
    supplier = @suppliers.get(id)

    @view = new AppDemo.Views.Suppliers.ShowView(model: supplier)
    $("#suppliers").html(@view.render().el)

  edit: (id) ->
    supplier = @suppliers.get(id)

    @view = new AppDemo.Views.Suppliers.EditView(model: supplier)
    $("#suppliers").html(@view.render().el)
