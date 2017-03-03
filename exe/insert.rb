#!/usr/bin/env ruby

`gunzip -c /Users/alex/Desktop/tiny-sk-logs/* | sed 's/\\./\\\\\./g' | psql -d log_analyzer -c "COPY logs (row, without_zone, with_zone, not_sure, application_name, ip, local7, info, dyno, data) FROM stdin"`
