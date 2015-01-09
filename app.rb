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

  number_of_times = @words_to_check.word_times(@word_to_count)

  if number_of_times == 1
    @number_of_times = "found once"
  elsif number_of_times == 0
    @number_of_times = "not found"
  else
    @number_of_times = "found #{number_of_times} times"
  end

  erb(:word_times_result)
end
