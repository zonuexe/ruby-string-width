require 'string-width'
class ::String
  if StringWidth::check_env_cjk?
    define_method(*)
  end
end
1
