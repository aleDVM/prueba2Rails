class Hardworker
include Sidekiq::Worker
sidekiq_options queue: critical

def perform(name,count,user_id)
puts '***************'
puts 'tarea asincrona'
puts ' esta es una tarea prioritaria'
end

end

