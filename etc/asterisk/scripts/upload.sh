#!/bin/bash
# You must have vorbis-tools and curl installed for this to work.
oggenc ${1}.wav
filename=$1.ogg
number=$2
areacode=${number:0:3}
fileparam="rec_file=@$filename"
nameparam="name=VoiceDropboxSubmission:${areacode}"
publicparam="public_description=${areacode}"
privateparam="private_description=NONE"
locparam="location=${areacode}"

curl -F ${fileparam} -F ${publicparam} -F ${nameparam} -F ${privateparam} -F ${locparam} http://openwatch.net/uploadnocaptcha/
