class Josephine

  def initialize(extension)
    @extension = extension
    extension_file
    count_lines
  end

  def extension_file
    ext = File.join("**", "*#{@extension}")
    files = Dir.glob(ext)
  end

  def count_lines
    num_files = 0 # Number of files
    line_count = 0 # Number of lines of code
    line_com = 0 # Number of lines of comments
    space = 0
    extension_file.each do |f|
      next if f.index('vendor')
      next if FileTest.directory?(f)
      num_files += 1
      i = 0
      lines = []
      File.new(f).each_line do |line|
        if line.strip[0] == nil
          space += 1
          next
        end
        if line.strip[0] == '#'
          line_com += 1
          next
        end

        i += 1
      end

      line_count += i
    end
    puts ""
    puts "------------------------------"
    puts "#{num_files.to_s} files with #{@extension} extension."
    puts "#{line_count.to_s} lines of code."
    puts "#{(line_count.to_f/num_files.to_f).round(2)} LOC/file."
    puts "#{line_com.to_s} lines of comments."
    puts "#{space.to_s} line spacing."

  end


end
