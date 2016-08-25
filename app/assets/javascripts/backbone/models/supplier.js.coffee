class AppDemo.Models.Supplier extends Backbone.Model
  paramRoot: 'supplier'

  defaults:
    name: null
    lastname: null

class AppDemo.Collections.SuppliersCollection extends Backbone.Collection
  model: AppDemo.Models.Supplier
  url: '/suppliers'
