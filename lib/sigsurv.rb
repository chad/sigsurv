require "sigsurv/version"

module Sigsurv
  SYMBOLS = %w(module class def do end)
  def self.analyze(directory)
    Dir["#{directory}/**/*rb"].map do |file_path|
      contents = IO.read(file_path)
      [file_path, contents.scan(/#{SYMBOLS.join("|")}/).map{|x| x.split(//).first}.join]
    end
  end
end
