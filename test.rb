require 'docx'
require 'pdf-reader'

# Check if a file name is provided as an argument
if ARGV.empty?
  puts "Usage: ruby word_count.rb <filename>"
  exit
end

filename = ARGV[0]

# Extract text based on file type
text = ""

if filename.downcase.end_with?(".docx")
  begin
    doc = Docx::Document.open(filename)
    text = doc.paragraphs.map(&:text).join(" ")
  rescue => e
    puts "Error reading DOCX file: #{e.message}"
    exit
  end
elsif filename.downcase.end_with?(".pdf")
  begin
    reader = PDF::Reader.new(filename)
    text = reader.pages.map(&:text).join(" ")
  rescue => e
    puts "Error reading PDF file: #{e.message}"
    exit
  end
else
  puts "Unsupported file format. Please provide a .docx or .pdf file."
  exit
end

# Split the text into words and count their frequencies
word_counts = Hash.new(0)
text.downcase.scan(/\b\w+\b/) { |word| word_counts[word] += 1 }

# Display the word frequencies
word_counts.each { |word, count| puts "#{word}: #{count}" }
