class Avo::PeopleController < Avo::ResourcesController
  def set_model
    @model = model_find_scope.find_by! name: params[:id]
  end
end
