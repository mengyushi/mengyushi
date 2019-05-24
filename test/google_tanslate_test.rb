require "google/cloud/translate"

ENV["TRANSLATE_PROJECT"]     = "data-engineering-coursera"
ENV["TRANSLATE_CREDENTIALS"] = "google-account.json"

translate = Google::Cloud::Translate.new

translate = Google::Cloud::Translate.new

translation = translate.translate "Hello world!", to: "la"

puts translation #=> Salve mundi!

puts translation.from #=> "en"
puts translation.origin #=> "Hello world!"
puts translation.to #=> "la"
puts translation.text #=> "Salve mundi!"