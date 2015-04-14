class Josephine

  def initialize(extension)
    @extension = extension
    extension_file
    count_lines
  end

  def extension_file
    if @extension == "-all".strip
      ext = File.join("**", "*")
      files = Dir.glob(ext)
    else
      ext = File.join("**", "*#{@extension}")
      files = Dir.glob(ext)
    end
  end

  def count_lines
    num_files, line_count, line_com, space = 0, 0, 0, 0
    extension_file.each do |f|
      next if f.index('vendor')
      next if FileTest.directory?(f)
      num_files += 1
      i = 0
      lines = []
      File.new(f).each_line do |line|
        if line.scrub.strip[0] == nil
          space += 1
          next
        end
        if line.scrub.strip[0] == '#'
          line_com += 1
          next
        end

        i += 1
      end
      line_count += i
    end
    display_stat(num_files, line_count, line_com, space)
  end

  def display_stat(num_files, line_count, line_com, space)
    puts ""
    puts "------------------------------"
    if @extension == "-all"
     puts "#{num_files.to_s} files"
    else
     puts "#{num_files.to_s} files with #{@extension} extension."
    end
    puts "#{line_count.to_s} lines of code."
    puts "#{(line_count.to_f/num_files.to_f).round(2)} LOC/file."
    puts "#{line_com.to_s} lines of comments."
    puts "#{space.to_s} line spacing."
     puts "#{(space.to_f / num_files.to_f).round(2)} average line space / file."
  end


end
