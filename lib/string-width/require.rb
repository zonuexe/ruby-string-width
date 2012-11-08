
module StringWidth
  KNOWN_GEMS = %w(
     string-width/tanasinn
  )

  raise LoadError unless
    KNOWN_GEMS.map{ |gem|
    begin
      require gem
      gem
    rescue LoadError
      false
    end
  }.any?
end
