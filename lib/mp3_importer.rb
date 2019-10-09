class Mp3_importer
  
  attr_accessor :path
  
  
  def initialize(path)
    @path = path 
  end
  
  def files
       Dir.entries(@path).select {|entry| entry.include?(".mp3")} 
    end

    def import
        files.each {|file| Song.new_by_filename(file)}
    end
  
end