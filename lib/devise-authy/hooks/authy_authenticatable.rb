Warden::Manager.after_authentication do |user, auth, options|
  if user.respond_to?(:with_authy_authentication?)
    if auth.session(options[:scope])[:with_authy_authentication] = user.with_authy_authentication?(auth.request)
      auth.session(options[:scope])[:id] = user.id
    elsif user.with_required_authy_authentication?(auth.request)
      
    end
  end
end
