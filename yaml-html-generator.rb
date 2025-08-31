require 'yaml'
require 'cgi'
require 'pathname'

INPUT = ARGV[0] || 'input.yaml'
OUTPUT = ARGV[1] || 'output.html'

def escape(s)
  CGI.escapeHTML(s.to_s)
end

def render_value(value)
  case value
  when Hash
    rows = value.map do |k, v|
      "<tr><th class=nest-field>#{escape(k)}</th><td class=nest-value>#{render_value(v)}</td></tr>"
    end.join
    "<table class=nest-table>#{rows}</table>"
  when Array
    items = value.map { |item| "<li>#{render_value(item)}</li>" }.join
    "<ul class=bullet-list>#{items}</ul>"
  when NilClass
    "<em>null</em>"
  else
    # scalar
    "<span class=scalar>#{escape(value)}</span>"
  end
end

yaml_docs = YAML.load_stream(File.read(INPUT))

html_rows = []

if yaml_docs.length == 1 && yaml_docs.first.is_a?(Hash)
  # Single mapping: produce Field / Value rows
  yaml_docs.first.each do |k, v|
    html_rows << "<tr><th class=field>#{escape(k)}</th><td class=value>#{render_value(v)}</td></tr>"
  end
else
  # Multiple documents or non-mapping top-level: enumerate
  yaml_docs.each_with_index do |doc, idx|
    if doc.is_a?(Hash)
      html_rows << "<tr><th class=field colspan=2>Document #{idx + 1}</th></tr>"
      doc.each do |k, v|
        html_rows << "<tr><th class=field>#{escape(k)}</th><td class=value>#{render_value(v)}</td></tr>"
      end
    else
      html_rows << "<tr><th class=field colspan=2>Document #{idx + 1} (value)</th></tr>"
      html_rows << "<tr><td colspan=2 class=value>#{render_value(doc)}</td></tr>"
    end
  end
end

html_body = <<~HTML
  <!doctype html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Ruby YAML Instruction Preview</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <main class="container">
      <h1>Ruby YAML Instruction Preview</h1>
      <p style="color:grey">Generated from: #{escape(Pathname.new(INPUT).cleanpath.to_s)}</p>
      <table class="fv-table">
        <thead>
          <tr><th>Field</th><th>Value</th></tr>
        </thead>
        <tbody>
          #{html_rows.join("\n")}
        </tbody>
      </table>
    </main>
  </body>
  </html>
HTML

output_dir = File.dirname(OUTPUT)
File.write(OUTPUT, html_body)
puts "Generated #{OUTPUT} from #{INPUT}"