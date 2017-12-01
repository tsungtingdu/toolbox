class UbikesController < ApplicationController

  def index
    
    url = "http://data.taipei/opendata/datalist/apiAccess?scope=resourceAquire&rid=ddb80380-f1b3-4f8e-8016-7ed9cba571d5"
    json_string = RestClient.get(url)
    @data = JSON.parse(json_string)
    
    @data["result"]["results"].each do |u|
      @existing = Ubike.find_by_raw_id(u["_id"])
      if @existing
      else
        ubike = Ubike.create(:raw_id => u["_id"], :name => u["sna"], :slots => u["tot"], :bikes => u["sbi"], :bemp => u["bemp"])
        ubike.save
        puts "create #{u["sna"]}"  
      end

    end  
    
    @ubikes = Ubike.all
    
  end

end
