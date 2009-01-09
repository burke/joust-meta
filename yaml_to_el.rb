el = ""
File.read(ARGV[0]).split('\n').each do |line|
  puts line
  line.scan(/(\w+): (.+)/) { |m| el << "(#{m[0]} #{m[1]})\n" }
end

File.open(ARGV[0].gsub(".yml",".el"),"w") { |f| f.puts el }
