class StripeAccount

  def self.conf
    YAML.safe_load(ERB.new(File.read('application.yml')).result)
  end

end
