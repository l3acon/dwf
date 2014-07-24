%w[mongo].each{|gem| require gem}

include Mongo 

  client = MongoClient.new("localhost")
  db     = client['dwf']
  $coll  = db['users']
  $prof  = db['profiles']



 id = $coll.insert({"user" => "Josh", "passwd" => "password"})
 time = %x'date +"%a %b %d %r %Y"'.delete("\n")
 $prof.insert({"_id" => id, "user" => "Josh", "email" => "joshcano@gmail.com", "posts" => {"time" => time, "beer" => "PBR", "rating" => 5, "comment" => "Possibly the worlds best shitty beer."} })
$prof.insert({"user" => "Rick", "email" => "joshcano@gmail.com", "posts" => {"time" => time, "beer" => "PBR", "rating" => 5, "comment" => "Possibly the worlds best shitty beer."} })
