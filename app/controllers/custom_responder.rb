class CustomResponder < ActionController::Responder
  def to_html
    unless has_errors?
      if post? # create
        controller.flash[:notice] = resource.class.name.humanize + " was successfully created."
      elsif put? # update
        controller.flash[:notice] = resource.class.name.humanize + " was successfully updated."
      end
    end
    
    super
  end
end