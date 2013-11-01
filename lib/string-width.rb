require 'string-width/version'
require 'string-width/require'

class StringWidth
  private
  def env
    @@env ||=
      Struct.new('Env', :lang, :lc_ctype).new(
        lang: ENV['LANG'],
        lc_ctype: ENV['LC_CTYPE']
      )
  end

  def cjk? (str)
    s = str.downcase
    ["zh","ja","ko"].map.{|l| s.include? l }.any?
  end

  def check_env_cjk?
    cjk?(env.lc_ctype) || cjk?(env.lang)
  end
end
