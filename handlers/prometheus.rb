require 'handlers/mapping'

Proc.new do |env|
	time_now = Time.now.to_i * 1000
	req = http_request('http://localhost:9399/nstatuz/json?show=durations,events,main')
	status, headers, body = req.join
	jsn = JSON.parse(body.join)
	res = []
	metrics_sent = {}
	$stats_to_prometheus.each do |k,v|
		metric_name = v["name"]
		labels = v["labels"]
		if labels
			labels_string = '{' + labels.map{|lk,lv| "#{lk}=\"#{lv}\""}.join(",") + '}'
	    else 
	    	labels_string = ""
	    end
		val = jsn[k]
		type = v["type"]
		# help = v["help"] rescue nil
		# help = "h2o status handler entry. see https://h2o.examp1e.net/configure/status_directives.html" unless help

		# res << "#HELP #{metric_name} #{help}\n"
		res << "#TYPE #{metric_name} #{type}\n" unless metrics_sent[metric_name]
		metrics_sent[metric_name] = true
		
		res << "#{metric_name}#{labels_string} #{val.to_f}\n\n"
	end

	[200, [], res]
end