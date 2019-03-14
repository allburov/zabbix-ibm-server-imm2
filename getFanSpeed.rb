#!/usr/bin/ruby
community=ARGV[0]
fannumber=ARGV[1]
serveraddr=ARGV[2]
#fannumber=1
execstr="snmpget -v2c -c #{community} #{serveraddr} -r 500 -t 10000000 1.3.6.1.4.1.2.3.51.3.1.3.2.1.3.#{fannumber}"
strresult=`#{execstr}`
fanspeed=strresult.slice(/[\d]*%/)
if fanspeed.nil?
    puts 0
else
    puts fanspeed.delete("%")
end
