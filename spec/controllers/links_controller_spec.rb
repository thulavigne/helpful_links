require 'spec_helper'

describe LinksController do
  it "displays an error for a missing link" do
    get :show, :id => "not-here"
    response.should redirect_to(links_path)
    message = "The link you were looking for could not be found."
    flash[:alert].should == message
  end
end
