
# Spotify Sinatra Assessment
This is a question repo for testing your web server understanding relate to Ruby. You'll be building a clone of Spotify! but on a web version ... focusing on the backend server application.

The goal of the assessment is to test your understanding about
```
- ActiveRecords
- ActiveRecords Relationship and Associations
- RESTFUL Routes and MVC through the use of Sinatra framework
```
And thus the usage of ActiveRecords, RESTFUL Routes and MVC is a **requirement**.


# Duration
6 hours. Cut off time is 4.30pm.

# What You Will Need to Do
1. First,  `FORK` this repository and `git clone` it to your local machine.
2. Wireframe and design your database structure.
3. Start coding!
4. Commit your code as often as possible into your own forked repository.
 - git add .
 - git commit -m "login feature is added"  (for example, commit message according to added feature)
 - git push origin master.
5. Once done, inform a mentor about your completion, slack us your github repo address.
6. Demo your app and walk the mentor through your code to show an understanding of the concepts.


# Requirements
Your app has to be a working app, with the capabilities as listed below:


### Users
1. User is able to create an account (sign up)
2. User is able to view their own profile (showing own song list- including own created songs)
3. User is able to view other users' profiles (showing their song list)
4. User is able to edit **only their own** profile
5. User is able to delete **only their own** account


### Sessions
1. User is able to log into an account (log in)
2. User is able to log out from an account (log out)



### Playlists
1. User is able to (C) CREATE Playlist **(validation: playlist name is 6 characters minimum)**
3. User is able to (R) view list of songs by every public playlist on WebSpotify
4. User is able to (U) UPDATE **only their own** playlists
5. User is able to (D) DELETE **only their own** playlist


### Songs
1. User is able to (C) CREATE Songs under a created playlist **(validation: song title is 3 characters minimum, playlist_id cannot be null for song creation)**
2. User is able to (R) VIEW details of every single song posted by  every webspotify users **(including song title, artist name, album name, created datetime, song duration/length)**
3. User is able to (R) view all songs by every webspotify user
4. User is able to (U) UPDATE **only their own posted** songs
5. User is able to (D) DELETE **only their own posted** songs





#BONUS QUESTIONS (**only attempt this after you finished all the requirements on top**)
### Save Song into my Saved Songlist
```
1) All my uploaded songs are automatically in my saved songlist.
2) By Clicking Button `+` or `Save` beside any other user uploaded song. 
   User is able to save a copy of that song under my saved songlist.
3) By Clicking Button `Save` under any user's Playlist, User is able to save a copy of all songs of 
   that particular playlist under my saved songlist.
```

(**HINT: you can create a model songlist that records both user_id and song_id**)


### Follow random playlist
```
1) By Clicking Button `Follow` under any user's Playlist, User is able to park/save a copy 
   of the playlist under own list of playlists
```

# Good Luck mates!
