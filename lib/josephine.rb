class Josephine

  def count_lines(ext)
    o = 0 # Number of files
    n = 0 # Number of lines of code
    m = 0 # Number of lines of comments
    # files = Dir.glob('./**/*.' + ext)
    rubyfile = File.join("**", "*#{ext}")
    files = Dir.glob(rubyfile)
    files.each do |f|
      next if f.index('vendor')
      next if FileTest.directory?(f)
      o += 1
      i = 0
      lines = []
      File.new(f).each_line do |line|
        if line.strip[0] == nil
          n -= 1
          next
        end
        if line.strip[0] == '#'
          m += 1
          next
        end
        lines << line
        i += 1
      end
      n += i
    end
    puts "#{o.to_s} files."
    puts "#{n.to_s} lines of code."
    puts "#{(n.to_f/o.to_f).round(2)} LOC/file."
    puts "#{m.to_s} lines of comments."
  end

end
