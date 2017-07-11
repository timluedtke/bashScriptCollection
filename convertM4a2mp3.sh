for i in *.m4a ; do 
	ffmpeg -i "$i" -threads 5 -acodec libmp3lame -ab 128k $(basename "${i/.m4a}").mp3
    sleep 1
done
