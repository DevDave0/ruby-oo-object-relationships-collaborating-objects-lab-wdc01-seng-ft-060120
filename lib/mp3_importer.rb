class MP3Importer
    attr_reader :path
    
    def initialize(path)
        @path = path
    end 

    def files
        files = []
        Dir.new(self.path).each do |file|
            files << file if file.length >4
        end 
        files
    end 

    def import 
        self.files.each do |files|
            Song.new_by_filename(files)
        end 
    end

end 