require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_times')


get('/') do

  erb(:word_times)
end


get('/word_times_result') do

  @words_to_check = params.fetch('words_to_check')
  @word_to_count = params.fetch('word_to_count')

  @number_of_times = @words_to_check.word_times(@word_to_count)

  erb(:word_times_result)
end
