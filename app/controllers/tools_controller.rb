class ToolsController < ApplicationController
  def index; end

  def read_calendar
    json_string = File.read('json_files/calendareventlist_2.json')
    calendareventlist = JSON.parse(json_string)
    @events = calendareventlist['items']
  end

  def google_map; end
end
