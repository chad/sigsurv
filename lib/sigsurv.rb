require "sigsurv/version"

module Sigsurv
  SYMBOLS = {module: "m", class: "c", def: "d", do: "o", if: "i", end: "e"}
  def self.analyze(directory)
    Dir["#{directory}/**/*\.rb"].map do |file_path|
      contents = IO.read(file_path)
      regex = Regexp.new(SYMBOLS.keys.map{|k| "\\b#{k}\\b"}.join("|"))
      [file_path, contents.scan(regex).map{|x| SYMBOLS[x.to_sym]}.join]
    end
  end
end
