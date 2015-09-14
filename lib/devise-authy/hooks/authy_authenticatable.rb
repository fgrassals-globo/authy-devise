Warden::Manager.after_authentication do |user, auth, options|
  if user.respond_to?(:with_required_authy_authentication?)
    if auth.session(options[:scope])[:with_required_authy_authentication] = user.with_required_authy_authentication?(auth.request)
    end
  else
    auth.session(options[:scope])[:last_error_code] = 1
  end
  
  if user.respond_to?(:with_authy_authentication?)
    if auth.session(options[:scope])[:with_authy_authentication] = user.with_authy_authentication?(auth.request)
      auth.session(options[:scope])[:id] = user.id
    end
  end
end
