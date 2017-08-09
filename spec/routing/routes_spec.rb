require 'spec_helper'

describe "routes for devise_authy" do
  it "route to devise_authy#GET_verify_authy" do
    expect(get('/users/verify_authy')).to route_to("devise/devise_authy#GET_verify_authy")
  end

  it "routes to devise_authy#POST_verify_authy" do
    expect(post('/users/verify_authy')).to route_to("devise/devise_authy#POST_verify_authy")
  end

  it "routes to devise_authy#GET_enable_authy" do
    expect(get('/users/enable_authy')).to route_to("devise/devise_authy#GET_enable_authy")
  end

  it "routes to devise_authy#POST_enable_authy" do
    expect(post('/users/enable_authy')).to route_to("devise/devise_authy#POST_enable_authy")
  end

  it "route to devise_authy#GET_verify_authy_installation" do
    expect(get('/users/verify_authy_installation')).to route_to("devise/devise_authy#GET_verify_authy_installation")
  end

  it "routes to devise_authy#POST_verify_authy_installation" do
    expect(post('/users/verify_authy_installation')).to route_to("devise/devise_authy#POST_verify_authy_installation")
  end

  it "routes to devise_authy#request_sms" do
    expect(post('/users/request-sms')).to route_to("devise/devise_authy#request_sms")
  end
end
