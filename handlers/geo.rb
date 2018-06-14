redis_host = ENV['REDIS_HOST'] || 'localhost'
redis_port = (ENV['REDIS_PORT'] || "6379").to_i
redis = H2O::Redis.new(:host => redis_host, :port => redis_port )

Proc.new do |env|
	# 1) parse input
	input = JSON.parse( env["rack.input"].read ) rescue  {"long" => 125.75432, "lat" => 39.03385}
	# 2) send query to tile38
	result = redis.call( 'INTERSECTS', 'all_segments', 'IDS', 'OBJECT', 
		{ "type": "Point", "coordinates": [ input['long'], input['lat']] }.to_json ).join[1] rescue []
	# 3) profit
	[200, {"x-fallthru-set-MRB_REQUEST" => input, "x-fallthru-set-MRB_RESPONSE" => result}, [result]]
end
