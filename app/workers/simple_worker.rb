class SimpleWorker
include Sidekiq::Worker 
sidekiq_options queue: low

def perform(name,count,user_id)
puts '***************'
puts 'tarea asincrona'
end

end