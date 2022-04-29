library(DBI)
library(RSQLite)
library(dplyr)

songsdb <- dbConnect(SQLite(),"Q9.SongsDB")
dbListTables(songsdb)

# Create a song table
dbGetQuery(songsdb, "create table song(song_name varchar2(50),
           mood varchar2(20), online_play_song varchar2(200))")
dbListTables(songsdb)

# happy, funny, sad, tender, excited, angry

# Insert some data in the song table in songs db
dbGetQuery(songsdb, "insert into song values('Someone like you', 'sad', 'https://www.youtube.com/watch?v=hLQl3WQQoQ0') ")
dbGetQuery(songsdb, "insert into song values('Dig it', 'happy', 'https://youtu.be/-jpbCWcz2pk') ")
dbGetQuery(songsdb, "insert into song values('Doraemon guitar music', 'happy', 'https://youtu.be/07FxCXxknY4') ")

# Mood map
moodListMap = c('happy', 'funny', 'sad', 'tender', 'excited', 'angry')

# Accept user mood as input
userMoodInput <- readline(prompt="Select your mood: 
                     1. Happy
                     2. Funny
                     3. Sad
                     4. Tender
                     5. Excited
                     6. Angry")

userMoodInput <- as.numeric(userMoodInput)

# check validity of the input
if(userMoodInput < 1 || userMoodInput > 7) {
  print('Invalid input')
}

# Get user mood corresponding to the number from map
userMood = moodListMap[userMoodInput]

# Get all songs with required mood input
dbGetQuery(songsdb, "SELECT * FROM song WHERE mood = ?",
           params = userMood)

# Drop table before disconnecting with DB
dbGetQuery(songsdb, "drop table song")

# Disconnect DB
dbDisconnect(songsdb)
