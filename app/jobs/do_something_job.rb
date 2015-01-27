class DoSomethingJob < ActiveJob::Base
  queue_as :default

  def perform(thing)
    sleep(thing.weight.empty? ? 2 : thing.weight.to_i)
  end
end
