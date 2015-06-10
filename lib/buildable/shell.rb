require 'pty'

module Buildable::Shell
  extend self

  def do(command)
    PTY.spawn(command) do |r,w,pid|
      r.each { |line| puts "\t#{line}" } rescue nil # prevents error when process ending
    end
  rescue PTY::ChildExited
    $?
  end

  def do_quiet(command)
    %x{#{command} 2>&1}.chomp
  end
end