flute%.ogg: wav/flute%.wav Makefile
	ffmpeg -y -i $< -filter:a "volume=0.6" $@

%.ogg: wav/%.wav Makefile
	ffmpeg -y -i $< $@
