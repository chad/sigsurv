require "sigsurv/version"

module Sigsurv
  SYMBOLS = {module: "m", class: "c", def: "d", do: "o", e: "e"}
  def self.analyze(directory)
    Dir["#{directory}/**/*\.rb"].map do |file_path|
      contents = IO.read(file_path)
      [file_path, contents.scan(/#{SYMBOLS.keys.join("|")}/).map{|x| SYMBOLS[x.to_sym]}.join]
    end
  end
end
