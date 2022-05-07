#Using SQL to Investigate Spotify’s Top Songs:
<br />
<br />
This is an SQL investigation of the top songs on Spotify in August of 2019.
<br />
<br />
<br />
Now we have the table TopSongs in our SQL database, to see what it looks like use the code below:
![alt](snapshots/c1.png)
<br />
<br />
![alt](snapshots/2.png)
#ArtistName
<br />
<br />
First we will look at the Artists that have songs in the TopSongs table:
![alt](snapshots/code2.png)
<br />
<br />
![alt](snapshots/3.png)
We can see that Ed Sheeran is the only artist who has 4 songs in the top 50 songs on Spotify at the time this dataset was created. 9 other artists have 2 songs in the top 50 Spotify songs and the rest of the artists only have 1 song in the top 50 Spotify songs.
<br />
If you went through the data table a bit you may have noticed that some songs included the name of a featured artist within the TrackName, the code below will show how many songs in the top 50 Spotify songs have a featured artist on the track.
<br />
<br />
![alt](snapshots/c2.png)
<br />
<br />
![alt](snapshots/4.png)
<br />
<br />
13 of the top Spotify songs have featured artists, that is 26% which is quite a lot. Perhaps having a featured artist on a track helps a song end up on the Spotify Top 50 songs.
<br />
<br />
#Genre
Next we will look at genre, the code below shows the genres that appear in the Spotify Top 50 songs.
