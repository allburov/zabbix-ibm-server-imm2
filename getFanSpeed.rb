#!/usr/bin/ruby
community=ARGV[0]
fannumber=ARGV[1]
#fannumber=1
execstr="snmpwalk -c #{community} -v 1 192.168.5.250 1.3.6.1.4.1.2.3.51.3.1.3.2.1.3.#{fannumber}"
strresult=`#{execstr}`
fanspeed=strresult.slice(/[\d]*%/)
if fanspeed.nil?
    puts 0
else
    puts fanspeed.delete("%")
end
