#!/usr/bin/env ruby

require File.join(File.dirname(__FILE__), '..','lib','noah','watcher')

class StdoutWatcher < Noah::Watcher
  redis_host "redis://127.0.0.1:6379/0"
  pattern "noah.Noah::Configuration.redis_server.update"
  destination Proc.new {|x| puts x}
  run!
end