-------------------------
--      MumbleDJ       --
-- By Matthieu Grieger --
-------------------------------------------------
-- config.lua                                  --
-- This is where all the configuration options --
-- for the bot can be set.                     --
-------------------------------------------------

local config = {}
-------------------------
-- GENERAL CONFIGURATION
-------------------------

-- Default channel
-- DEFAULT VALUE: "Bot Testing"
config.DEFAULT_CHANNEL = "Bot Testing"

-- Command prefix
-- DEFAULT VALUE: "!"
config.COMMAND_PREFIX = "!"

-- Show status output in console?
-- DEFAULT VALUE: true
config.OUTPUT = true

-- Number of users that, if reached, will pause the music until it is started again by a user.
-- This is to prevent against YouTube audio downloads when nobody is listening.
-- DEFAULT VALUE: 1
config.USER_SOUND_PAUSE_TARGET = 1

-- Default volume (1 being normal volume)
-- DEFAULT VALUE: 0.25
config.VOLUME = 0.25

-- Ratio that must be met or exceeded to trigger a song skip.
-- DEFAULT VALUE: 0.5
config.SKIP_RATIO = 0.5


-----------------------
-- ADMIN CONFIGURATION
-----------------------

-- Enable admins (true = on, false = off)
-- DEFAULT VALUE: true
config.ENABLE_ADMINS = true

-- List of admins
-- NOTE: I recommend only giving users admin privileges if they are registered
-- on the server. Otherwise people can just take their username and issue admin
-- commands.
-- EXAMPLE:
-- 	config.ADMINS = {"Matt", "Matthieu"}
config.ADMINS = {"Matt"}

-- Make play an admin command?
-- DEFAULT VALUE: false
config.ADMIN_PLAY = false

-- Make pause an admin command?
-- DEFAULT VALUE: false
config.ADMIN_PAUSE = false

-- Make add an admin command?
-- DEFAULT VALUE: false
config.ADMIN_ADD = false

-- Make skip an admin command?
-- DEFAULT VALUE: false
config.ADMIN_SKIP = false

-- Make volume an admin command?
-- DEFAULT VALUE: true
config.ADMIN_VOLUME = true

-- Make move an admin command?
-- DEFAULT VALUE: true
config.ADMIN_MOVE = true

-- Make kill an admin command?
-- DEFAULT VALUE: true (I recommend never changing this to false)
config.ADMIN_KILL = true


-------------------------
-- STORAGE CONFIGURATION
-------------------------

-- Delete audio files after they have been played?
-- DEFAULT VALUE: true
config.DELETE_AUDIO = true

-- Delete thumbnails after they have been used?
config.DELETE_THUMBNAILS = true


----------------------
-- CHAT CONFIGURATION
----------------------

-- Enable/disable chat notifications for new songs (true = on, false = off)
-- DEFAULT VALUE: true
config.SHOW_NOTIFICATIONS = true

-- Enable/disable YouTube thumbnails (true = on, false = off)
-- DEFAULT VALUE: true
config.SHOW_THUMBNAILS = true


-------------------------
-- MESSAGE CONFIGURATION
-------------------------

-- Message shown to users when they do not have permission to execute a command.
-- DEFAULT VALUE: "You do not have permission to execute that command."
config.NO_PERMISSION_MSG = "You do not have permission to execute that command."

-- Message shown to users when they try to move the bot to a non-existant channel.
-- DEFAULT VALUE: "The channel you specified does not exist."
config.CHANNEL_DOES_NOT_EXIST_MSG = "The channel you specified does not exist."

-- Message shown to users when they attempt to add an invalid URL to the queue.
-- DEFAULT VALUE: "The URL you submitted does not match the required format. Please submit a valid YouTube URL."
config.INVALID_URL_MSG = "The URL you submitted does not match the required format. Please submit a valid YouTube URL."

-- Message shown to users when they attempt to execute the play command when music is already playing.
-- DEFAULT VALUE: "A music track is already playing!"
config.MUSIC_PLAYING_MSG = "A music track is already playing!"

-- Message shown to users when they attempt to use the stop command when no music is playing.
-- DEFAULT VALUE: "There is no music playing at the moment."
config.NO_MUSIC_PLAYING_MSG = "There is no music playing at the moment."

-- Message shown to users when they attempt to use the play command when there are no songs in the queue.
-- DEFAULT VALUE: "There are no songs currently in the queue. Use " .. config.COMMAND_PREFIX .. "add to add a song to the queue."
config.NO_SONGS_AVAILABLE = "There are no songs currently in the queue. Use " .. config.COMMAND_PREFIX .. "add to add a song to the queue."


----------------------
-- HTML CONFIGURATION
----------------------

-- Message shown to channel when a new song starts playing.
config.NOW_PLAYING_HTML = [[
	<table>
		<tr>
			<td align="center"><img src="%s" width=150 /></td>
		</tr>
		<tr>
			<td align="center"><b><a href="http://youtu.be/%s">%s</a> (%s)</b></td>
		</tr>
		<tr>
			<td align="center">Added by %s</td>
		</tr>
	</table>
]]

-- Message shown to channel when a song is added to the queue by a user.
config.SONG_ADDED_HTML = [[
	<b>%s</b> has added "%s" to the queue.
]]

-- Message shown to channel when a song is resumed with the play command.
config.SONG_PLAY_HTML = [[
	<b>%s</b> resumed audio playback.
]]

-- Message shown to channel when a song is paused by a user.
config.SONG_PAUSED_HTML = [[
	<b>%s</b> has paused the song.
]]

return config
