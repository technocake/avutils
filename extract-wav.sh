

function extract_wav {
	# Does extraction of wav from a given input file.
	# Outputs: 
	#	16b signed little endian pcm wav files, 2 channels at 44100Hz sampling rate.
	ffmpeg.exe -i "$1" -acodec pcm_s16le -ar 44100 -ac 2 "$1.wav"
}


function mts2mkv {
	# Converts MTS AVHDC video files to mkv videofiles
	ffmpeg -i "$1" -acodec pcm_s16le -c:v copy "$1.mkv"
}



