loop do
  cmd = "echo sample-1 #{rand} >> /tmp/sample.log"
  puts cmd
  `#{cmd} `
  sleep 2
end