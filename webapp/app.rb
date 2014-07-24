%w[sinatra haml mongo].each{|gem| require gem}
enable :sessions
include Mongo

    client = MongoClient.new("localhost")
    db     = client['dwf']
    $coll  = db['users']
    $prof  = db['profiles']
    $email = db['notify']
    $count = db['count']
$quotes = ["You can't be a real country unless you have a beer and an airline. It helps if you have some kind of a football team, or some nuclear weapons, but at the very least you need a beer. -Frank Zappa", "He was a wise man who invented beer. -Plato", "Let a man walk ten miles steadily on a hot summer's day along a dusty English road, and he will soon discover why beer was invented. -Gilbert K. Chesterton", "I'm an old-fashioned guy... I want to be an old man with a beer belly sitting on a porch, looking at a lake or something. -Johnny Depp", "Milk is for babies. When you grow up you have to drink beer. -Arnold Schwarzenegger", "My goal is to hit the gym every day I'm on vacation. Usually I just end up sleeping and drinking beer. -Gary Allan", "Under the pressure of the cares and sorrows of our mortal condition, men have at all times, and in all countries, called in some physical aid to their moral consolations - wine, beer, opium, brandy, or tobacco. -Edmund Burke", "Drinking beer is easy. Trashing your hotel room is easy. But being a Christian, that's a tough call. That's rebellion. -Alice Cooper", "Beauty is in the eye of the beer holder. -Kinky Friedman", "Beer, it's the best damn drink in the world. -Jack Nicholson", "Beer makes you feel the way you ought to feel without beer. -Henry Lawson", "Not all chemicals are bad. Without chemicals such as hydrogen and oxygen, for example, there would be no way to make water, a vital ingredient in beer. -Dave Barry", "I have a total irreverence for anything connected with society except that which makes the roads safer, the beer stronger, the food cheaper and the old men and old women warmer in the winter and happier in the summer. -Brendan Behan", "Give a man a beer, waste an hour. Teach a man to brew, and waste a lifetime! -Bill Owen", "Some people wanted champagne and caviar when they should have had beer and hot dogs. -Dwight D. Eisenhower", "Give me a woman who loves beer and I will conquer the world. -Kaiser Wilhelm", "Rugby is great. The players don't wear helmets or padding; they just beat the living daylights out of each other and then go for a beer. I love that. -Joe Theismann", "The basic thing a man should know is how to change a tyre and how to drive a tractor. Whatever that bearded dude is doing on the Dos Equis beer commercials sets the bar. That's your guy. Every man should be aiming to be like him. The beard is just the tip of the iceberg. -Timothy Olyphant", "There are those who love to get dirty and fix things. They drink coffee at dawn, beer after work. And those who stay clean, just appreciate things. At breakfast they have milk and juice at night. There are those who do both, they drink tea. -Gary Snyder", "They who drink beer will think beer. -Washington Irving", "And what makes me happy now has changed as well... Its one thing to play in a bar or at a biker festival, and hear a guy who's been drinking beer all day come up and tell you how good you are. For a long time in your life that will make you happy. -Rick Derringer", "I definitely feel closer to the feminine side of the human being than I do the male - or the American idea of what a male is supposed to be. Just watch a beer commercial and you'll see what I mean. -Kurt Cobain", "I've only been in love with a beer bottle and a mirror. -Sid Vicious", "A guy is a lump like a doughnut. So, first you gotta get rid of all the stuff his mom did to him. And then you gotta get rid of all that macho crap that they pick up from beer commercials. And then there's my personal favorite, the male ego. -Roseanne Barr", "There's something sexy about a gut. Not a 400-pound beer gut, but a little paunch. I love that. -Sandra Bullock", "I had never, ever drunk beer in high school, and by the time I got to Tech we were having these parties out in the cotton fields and getting so drunk. I was the champion beer drinker; suddenly I was pouring it down my throat... Insane! Insane! -Bob Livingston", "The University of Nebraska says that elderly people that drink beer or wine at least four times a week have the highest bone density. They need it - they're the ones falling down the most. -Jay Leno", "Beer. Now there's a temporary solution. -Dan Castellaneta", "There were years when I was a beer and tequila guy, then I got real fat. And then I found that you could actually go on a diet and drink scotch. Then I got hooked on scotch, and if you get hooked on scotch, then everything else just tastes wrong. -Ron White", "Whiskey's to tough, Champagne costs too much, Vodka puts my mouth in gear. I hope this refrain, Will help me explain, As a matter of fact, I like beer. -Tom T. Hall", "There is no such thing as a bad beer. It's that some taste better than others. -Billy Carter", "I learned early to drink beer, wine and whiskey. And I think I was about 5 when I first chewed tobacco. -Babe Ruth", "I look like the kind of guy who has a bottle of beer in my hand. -Charles Bronson", "I never had one beer. If I bought a six-pack of beer, I kept drinking till all six beers were gone. You have to have that kind of understanding about yourself. I haven't had a drink now in 12 years. -Samuel L. Jackson", "Paintings are like a beer, only beer tastes good and it's hard to stop drinking beer. -Billy Carter", "I was at a bar nursing a beer. My nipple was getting quite soggy. -Emo Philips", "If you guys are going to be throwing beer bottles at us, at least make sure they're full. -Dave Mustaine", "For drink, there was beer which was very strong when not mingled with water, but was agreeable to those who were used to it. They drank this with a reed, out of the vessel that held the beer, upon which they saw the barley swim. -Xenophon", "Mind you, I've always been musical... Mother used to sit me on her knee and I'd whisper, 'Mummy, Mummy, sing me a lullaby do,' and she'd say: 'Certainly my angel, my wee bundle of happiness, hold my beer while I fetch me banjo.' -Les Dawson", "It's always strange being a kid on the set, because you're treated like an equal when you're working. But then when you break, the other actors go back to their trailers to take naps and drink beer, and I have to, like, go do school. -Natalie Portman", "What I like about playing America is you can be pretty sure you're not going to get hit with a full can of beer when you're singing and I really enjoy that! -Joe Strummer", "God has a brown voice, as soft and full as beer. -Anne Sexton", "You know I love pot, and I love beer, but I am totally sober, just because it completely stopped working for me. -Anthony Kiedis", "Had an awesome time. You tell me to show up and all I have to do is drink beer, play guitar all day and I can lift weights and you're going to pay me for this! -Zakk Wylde", "People care about my personal life. But really I'm dorky! I drink beer and go to football games. And ya know, sit in my house in a t-shirt on the weekends and play with my dog! -Sophia Bush", "I just did an interview where I was asked whether I drink beer or whisky, and I was sad to reveal that I'm pounding spring water. -Brad Delson", "I have respect for beer. -Russell Crowe", "When I get a chance to play golf or go on a boat with good people, take the boat out and put some lobsters on the grill, get the ice-cold beer and the cigars - that's heaven here on earth. -Bernie Mac", "In my opinion, most of the great men of the past were only there for the beer - the wealth, prestige and grandeur that went with the power. -A. J. P. Taylor", "I would be in Italy working on a film, longing for something simple - like, God, I would just kill to be sitting at a barbecue having a beer right now. -Chris O'Donnell", "I'm a big root beer guy. -Dylan O'Brien", "There will always be another group of kids going to college, drinking beer, and discovering that movie. Many of them have never even heard of SCTV. -Rick Moranis", "If in 1989 I said, 'I have an idea: Bottle water and sell it. And charge more than a beer,' they would have chased me around with a giant butterfly net. The same with paying to watch a television station. -Adam Carolla", "I can drink on the job if I want to. I can go on stage with a beer and it's OK. I can say whatever I want. It's a great job to have. -Rodney Carrington", "Beer is not a good cocktail-party drink, especially in a home where you don't know where the bathroom is. -Billy Carter", "It was my first scene. My first day. We could have started with me drinking a beer, something a little less than having Barbies touching each other. But they started with that. -Gisele Bundchen", "The big compliment came from the beer drinkers who didn't know me. They wouldn't drink or move when I sang. If they had their glasses in mid-air, the glasses wouldn't come down. -Ethel Waters", "Beer is the Danish national drink, and the Danish national weakness is another beer. -Clementine Paddleford", "It's mostly Mars Bars and peanuts and cheese and you go to the fridge and there's Red Bull and Beer. It's not like people are holding me down and pouring beer in my face. -Graham Coxon", "One-third of Americans have already been forced to change their lifestyle because their disposable income is gone. A guy can't go to the corner bar after a rough day at work to have a beer, that's gone to oil! -Terry McAuliffe", "I don't want to be treated like I came from another planet or something or was somehow born with some weird birthright or super power. I don't view myself that way. I am a normal guy, picking up the crap from the dog and scraping the BBQ and having a beer and fixing the shed out back. -Chris Hadfield", "I've been going long enough to prove what I wanted to prove, to get the girl I wanted to get, to make the money I wanted to make, to drink all the beer I wanted to drink. I've played - not exactly everywhere, but I've played enough places. -Joe Perry", "I busted out of the place in a hurry and went to a saloon and drank beer and said that for the rest of my life I'd never take a job in a place where you couldn't throw cigarette butts on the floor. I was hooked on this writing for newspapers and magazines. -Jimmy Breslin", "Since the outbreak of war, there has been in our country a steady increase in the consumption of spirits, wine and beer. It is estimated that in dollar volume, the annual outlay is now practically double what it was before the war. -William Lyon Mackenzie King", "Prohibition makes you want to cry into your beer and denies you the beer to cry into. -Don Marquis", "I'm gaining weight the right way: I'm drinking beer. -Johnny Damon", "I do like beer, but lately I've started drinking non-alcoholic beer and I like the taste of it and I don't get the alcohol, so that's a good alternative also. -Mike Ditka", "You can do anything with beer that you can do with wine. Beer is great for basting or marinating meat and fish. -Grant Wood", "I'm more of a guy's girl. I like having a beer in a bar, and I don't bicker or sit down and do my nails. -Zoe Saldana", "Well, as I understand it, the main supporters are beer companies and the pharmaceutical companies. I'd like them to show me the dead bodies from marijuana. But they can't because there aren't any. -Jack Herer", "I have a beer belly. -Christy Turlington", "I do condition my hair with honey and beer. I smell like the bottom of a beer barrel for days afterwards, but it's very good for the hair. -Catherine Zeta-Jones", "The goal is to give people a free encyclopedia to every person in the world, in their own language. Not just in a 'free beer' kind of way, but also in the free speech kind of way. -Jimmy Wales", "How many times have you been out for a beer or dinner and people are coming up with business ideas? Everybody wants to think they've got that great business idea. -Mark Burnett", "I'm just worried that there's enough beer on the bus. That's the top priority at all times. -Zakk Wylde", "I can't actually read interviews with thesps now because they're almost always fantastically predictable, the men especially. Actors are forever stressing their ordinariness, their beer and football-loving commitments. -Peter York", "I'm a meat girl and I just love having a beer. -Jill Goodacre", "Paul Newman's an old friend of ours out of Cleveland, Ohio. He used to sit around our house. He's the only man I've ever known to drink a case of beer all by himself. That's talent in a way. -Lew Wasserman", "When we did the sign outside, we did not do the cigarette or the mug of beer because it was going to be outside. I wasn't sure if the city would object. -John Gates", "The most frustrating thing for musicians who want to play stuff from the new album is when everyone goes out to buy a beer. -Joe Elliott", "When you are on tour in the UK it takes a few hours to get anywhere. A lot of the time you can have a beer, close your eyes for two minutes, and then you are there. In the U.S. it is much more like a road trip as all the cities are so spread apart. -Kelly Jones", "Very intense first summer out, to be 18 years old and never having gone on a date, never having smoked a cigarette, never had a drink, even a sip of beer, never kissed a girl, all of those things. It made for a fairly intense first year out. -Peter Jurasik", "My voice? Yeah, well, I used to drink a lot of beer when I was a kid and I sounded like a drunk in a choir. I don't drink anymore. -Eric Burdon", "I sat backstage and had a beer with Richard Chamberlain, Paul Newman, and Princess Grace. -Christopher Atkins", "If I had to think of what I would do different in my whole career, it's that I never would have picked up a beer, bottle of vodka. That definitely changed my life. That is an Achilles' heel for me. -Jayson Williams", "I went from a playing in a bar on a bar stool for free beer and tip money, where people weren't paying attention to me, to now I've got their attention. It's up to me to what I feed them with my music. It's up to me how I do that. I've put a lot of thought into how great the songs are, and how I want people to perceive me. -Jake Owen", "I doing casual labor by the day. They wouldn't pay you until the next morning. There was a bar that would cash your check if you bought a beer first. A lot of guys never left until they'd drunk up all their money. -Fred Ward", "In the summer we graduated we flipped out completely, drinking beer, cruising in our cars and beating up each other. It was a crazy summer. That's when I started to be interested in girls. -Ed O'Neill", "The old man sold beer after hours on weekends. And that was something that he probably did to top up his earnings as a truck driver. Mum was the traditional housewife. Loving, caring, sharing - always the keynotes of the family. -Lindsay Fox", "He asked if I was a songwriter, and I said yeah, that I was in town because I'd won this contest. He said, okay, then he was gonna play me his hit, and started singing 'When it's time to relax, one beer stands clear... ' -Arthur Godfrey", "I can still picture myself riding in the back of a Bronco to a field party after a rainstorm. My mama will kill me for saying this, but my first beer, I was 15 and I didn't know what to do with it. I thought you were supposed to chug it. So I just downed the whole thing in one gulp. All my friends were like, 'Duuuuuuude!' -Dave Haywood", "What was the first name of the Houston club? It wasn't the Astros. It was the Colt .45s. A lot of guys now will say Colt 45 is a beer. But it was also a pistol, and it went right with Texas. -Pat Gillick", "I was an anorexic, beer drinking, class cutting, doodling, shoplifting, skater chick that was into nature, art class, and the beach. -Rebecca Miller", "The question for me was, could TV actually teach? I knew it could, because I knew 3-year-olds who sang beer commercials! -Joan Ganz Cooney", "I drank beer, and I had a career year. -David Wells", "Life isn't all beer and skittles, but beer and skittles, or something better of the same sort, must form a good part of every Englishman's education. -Thomas Hughes", "Although finding fruit flies in your wine or beer can be a bit annoying, I hope people will pause to admire the tenacity of these clever little creatures. They are really just hungry animals looking for something to eat, and have no intention of ruining your happy hour. -Michael Dickinson", "Note, that yeast of good Beer, is better then that of Ale. -Kenelm Digby", "My father was a preacher in Maryland and we had crab feasts - with corn on the cob, but no beer, being Methodist - outside on the church lawn. -Tori Amos", "Yes, sir. I'm a real Southern boy. I got a red neck, white socks, and Blue Ribbon beer. -Billy Carter", "As far as my street cred goes, I'll always have that, because I always hang with the kids. I'll jump right off the stage and buy them a beer. I'll be a star on stage, but I'll always hang with the kids. -Kid Rock", "I went to about one frat party a year. A year seemed to be enough time for me to forget how much I didn't like frat parties, and my friends would eventually convince me to go to one. Cheap beer, guys looking for a quick hook-up, and girls playing 'dumb' to get in on the hook-up. I just never got into it. -Danica McKellar", "You know, nobody eats in England. Three or four pints of English beer a night fills you. I can't say I'm very impressed with the food in America. it's all sort of bland. Like turkey sandwiches. -Anne Dudley", "We've had drive-by shootings. I've been spat on, slapped, shot at. One guy tried to stab me with a broken beer bottle. But the way we look at it, if people do the worst they can, we'll still wake up in glory. -Troy Perry", "I don't know what goes on in the crowd. I've had them show up and throw beer cans at me. I caused riots in most of the major cities. -Lou Reed", "We were sitting on the bus one day and there were 5 of us hanging out. There was only one beer left in the cooler and we actually all took a little cup and split it. It was a pathetic day in a rock and roll when five grown men have to be sitting there sharing a beer. -Zakk Wylde", "My first commercial was for Miller High Life beer. -Casey Kasem", "I had this beer brewed just for me. I think its the best I ever tasted. And I've tasted a lot. I think you'll like it too. -Billy Carter", "My parents would read those books to me as well but they used to make me starving when I was a kid because they were always eating ham sandwiches with the crusts off and drinking ginger beer. -Mike Myers", "On the tour we get a case of beer on the bus every day from Ozzfest. -Zakk Wylde", "But a year before that, I was starting to drink beer on the set of the film Lucas (1986). -Corey Haim", "To fund major cultural efforts, we must not rely alone on government and foundation patronage; if the farmer can spend for beer, he can pay for good entertainment which he can understand, which he can identify with and which will fortify his spirit. -F. Sionil Jose", "I didn't think I could go onstage and play unless I had a beer to loosen up. Well, if it was only one beer to loosen up, I'd probably still be drinking today. -Joe Perry", "Any group that intends to sell laboratory meat will need to build bioreactors - factories that can grow cells under pristine conditions. Bioreactors aren't new; beer and yeast are made using similar methods. -Michael Specter", "I would change policy, bring back natural grass and nickel beer. Baseball is the belly-button of our society. Straighten out baseball, and you straighten out the rest of the world. -Bill Lee", "All my friends were in college when I was making 'Superbad.' We were drinking beer and watching movies and eating pizza. It wasn't like I was going to nice restaurants or anything like that, and I lived like a frat guy. Eventually it was time to grow up, be healthy and be responsible. You can't live like a kid forever, you know? -Jonah Hill", "Is it in the best interest of baseball to sell beer in the ninth inning? Probably not. The rule has got to be more clearly defined. And then some process should be set up where the judge is not also the appeals judge. -George Steinbrenner", "Banks' beer. There's nothing like it! To Brazil. And to Barbados justice. -Ronald Biggs", "For the second straight year, craft beer is the fastest growing segment of the U.S. alcoholic beverage industry. In 2005, craft beer experienced a 9 percent increase in volume, nearly triple that of the growth experienced in the wine and spirits industry. -Sherwood Boehlert", "Really hairy backs on men turn me off. I'm not into the ape thing at all. Or beer bellies and flabby arms, either. Also, one random nose hair which is longer than the others... that's gross. -Nadine Velazquez", "Black music has become a commercial commodity. Live performances are not so accessible as they were previously. It use to be possible to go to the bar on the corner and hear music. It was available for a fifteen cent beer. -Archie Shepp", "We don't have to go that far to sell our beer because our immediate accounts sell so much. Places that sold 10 cases before, now they're selling 30. -Paul Graham", "I love football and beer and have a normal girlfriend. -Josh Duhamel", "My love of horses began in College Park, with me and 10 friends on two couches and a keg of beer in the back of a truck, heading to Pimlico at 6 A.M. to mark our place in the middle of the Preakness infield, where we never saw a horse run. -Kevin Plank", "I'd loved to wear jeans and t-shirts, but everybody was in the peace movement back then. And that was my ploy. I had to be careful not to say things like 'I like meat.' Actually I just wanted to drink beer and to screw. -Ed O'Neill", "If George W. Bush is the kind of person folks might like to have a beer with, John McCain is the guy you pray you don't get seated next to at a dinner party. -Ellen Malcolm", "We didn't have a garage to rehearse in. We had to aggravate the folks in the house. But I got a chance to play in a beer joint, and that's how it started. -Charlie Daniels", "We're basically after Joe's beer money, and Joe likes his beer, so you better make sure that what you give him is at least as pleasurable to him as having his six-pack of beer would be. -Jerry Pournelle", "If you think about brewing, it is biotechnology. And I would say that I was a technologist at heart. So whether I... fermented beer or whether I fermented enzymes, the base technology was the same. -Kiran Mazumdar-Shaw", "I don't want to play stinking, beer-ridden clubs. It depresses me even thinking about that. I really hate it when you're finished with a show and you're in your dressing room with that stink of beer and sweaty girls. It brings back an ugly picture for me. I'd hate to have to do that again. -Steve Jones", "When I was broke, no one ever offered to buy me a beer. Now that I have quite a bit of money, everybody tries to buy me beers. Where were all these people back when I was in college and broke? -Chris Moneymaker", "Why should I paint dead fish, onions and beer glasses? Girls are so much prettier. -Marie Laurencin", "I'd like us to deliver a little message to all the men still out there who think it's the '50s, and coming home simply means watching television with a beer. -Patricia Richardson", "I am big in Japan... heightwise! But, yeah, I started modeling there in my teens and into my 20s. I did Calvin Klein, Uniqlo, and lots of magazine covers. It's such a beautiful country, and they have beer vending machines right on the street. Love that! -Julia Voth", "I simply went down there to catch up with an old mate of mine, who owns the place. He's the one who wrote the book on the place, but no, no movie, just a beer. -Bryan Brown", "I make a wicked clam chowdah, and linguine with clam sauce. Oysters I like to eat raw, and mussels in either a white wine sauce or in beer with paprika. -Jim Himes", "In a family business, you grow up with close contact to the business, whatever it is, and the beer business is certainly a very social type of business. -Carlos Alvarez"]



get '/', :agent => /iphone|android/i do 
 
    session["user"] ||= nil
    haml :index

end

get '/' do 
  haml :sorry
end


post '/login' do 
     @scope = nil

    if $coll.find({"user" => params[:user]}).to_a[0] == nil
        nil
    else
        if $coll.find({"user" => params[:user]}).to_a[0]["passwd"] == params[:pass]
            session["user"] = $coll.find({"user" => params[:user]}).to_a[0]["_id"]	
            @scope = "loged_in" 
            redirect '/profile'
        else
            @scope = "wrong password/user combo"
            redirect '/'
        end
    end


    if @scope == nil
        @scope = "Wrong password/user combo"
        redirect '/profile'
    else
        nil
    end
end

get '/users' do 
    if session["user"] == nil
     redirect '/' 
 else
    @scope = $prof.find().to_a
    haml :users
end
end

get '/profile' do
  if session["user"] == nil
   redirect '/'
   else 
  @scope = $prof.find({"_id" => BSON::ObjectId("#{session['user']}")}).to_a[0]
  haml :profile 
  end
end

get '/logout' do 
  session["user"] = nil
  redirect '/'

end

get '/signup' do 
  haml :signup
end

post '/email' do 
  email = []
  email = params[:email].downcase
  if $email.find({"email" => email}).to_a == []
    time = %x'date +"%a %b %d %r %Y"'.delete("\n")
    $email.insert({"time" => time, "email" => email})
  else
    nil
  end

    redirect '/thankyou'
end

get '/thankyou' do 
  @scope = $quotes[rand(136)]
  num = []
  num = $count.find({"_id" => BSON::ObjectId("53d04c4b8a7b88ac661a2a3d")}).to_a[0]["hits"] + 1
  $count.update({"_id" => BSON::ObjectId("53d04c4b8a7b88ac661a2a3d")},{"$set" => {"hits" => num}})
  haml :thankyou
end

get '/foo', :agent => /iphone|android/i do
  temp = request.user_agent
  "#{temp}"
end
