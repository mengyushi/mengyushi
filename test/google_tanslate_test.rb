require "google/cloud/translate"

ENV["TRANSLATE_PROJECT"]     = "cat-flower-remix"
ENV["TRANSLATE_CREDENTIALS"] = "credentials.json"

translate = Google::Cloud::Translate.new

translate = Google::Cloud::Translate.new

translation = translate.translate "Hello world!", to: "la"

puts translation #=> Salve mundi!

puts translation.from #=> "en"
puts translation.origin #=> "Hello world!"
puts translation.to #=> "la"
puts translation.text #=> "Salve mundi!"


require 'google/api_client'
client = Google::APIClient.new(:key => "AIzaSyAW_0sAOfc38vlrjVg3I7HKEiClzSSpjfo")
translate = client.discovered_api('translate', 'v2')
result = client.execute(
  :api_method => translate.translations.list,
  :parameters => {
    'format' => 'text',
    'source' => 'en',
    'target' => 'es',
    'q' => 'The quick brown fox jumped over the lazy dog.'
  }
)