require 'bundler'
Bundler.require

require_relative 'lib/controller1'
require_relative 'lib/model'
require_relative 'lib/view'


model = TicTacToeModel.new
view = TicTacToeView.new
controller = TicTacToeController.new(model, view)
controller.start
controller.play
model.add_observer(view)