require 'curses'
require 'canis/core/util/app'

module Ditcopy
  class Application
    def initialize
      App.new do
        header = app_header "Ditcopy Version 0.2.0", :text_center => "©2015 by Remo Fritzsche", :text_right =>"No warrianty!"

        stack :margin_top => 10, :margin_left => 0 do
          menulink :text => "View Dirs", :description => "View Dirs in tree"  do |s, *stuff|
            message "Pressed #{s.text} "
            #require './viewtodo'; todo = ViewTodo::TodoApp.new; todo.run
          end

          menulink :text => "Quit", :description => "Quit this application"  do |s, *stuff|
            quit
          end
        end

        blank
        stack :margin_top => 10, :margin_left => 0 do
  
        end

      end

      # Curses.init_screen

      # Curses.init_pair(Curses::COLOR_RED, Curses::COLOR_WHITE, Curses::COLOR_RED)

      # @src_window = Curses::Window.new(3, Curses.cols, 0, 0)
      # @src_window.color_set Curses.color_pair(Curses::COLOR_RED)
      # @src_window.box '|', '-'
      # @src_window.addstr('Source')
      # @src_window.refresh
      # # @src_window.getch

      # @dst_window = Curses::Window.new(3, Curses.cols, 4, 0)
      # @dst_window.box '|', '-'
      # @dst_window.addstr('Destination')
      # @dst_window.refresh

      # @cmd_window = Curses::Window.new(3, Curses.cols, 8, 0)
      # @cmd_window.box '|', '-'
      # @cmd_window.addstr('Command')
      # @cmd_window.setpos 1, 2
      # @cmd_window << "1      - Change source"
      # @cmd_window << "\n2      - Change destination"
      # @cmd_window << "\nRETURN - Proceed with copying"
      # @cmd_window.refresh
      # @cmd_window.setpos 1, 2
      # @cmd_window.getstr

      # # @dst_window.getch
    end
  end
end

Ditcopy::Application.new
