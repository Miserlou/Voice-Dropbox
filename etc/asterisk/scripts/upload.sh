#! /bin/bash
# You must have vorbis-tools installed for this to work.
filename="{$1}.wav"
oggenc $filename
filename="{$1}.ogg"
number=$2
areacode=${number:0:3}
fileparam="rec_file=@${filename}"
nameparam="name=VoiceDropboxSubmission:${areacode}"
publicparam="public_description=${areacode}"
privateparam="private_description=NONE"
locparam="location=${areacode}"

`curl -F ${fileparam} -F ${publicparam} -F ${nameparam} -F ${privateparam} -F ${locparam} http://openwatch.net/uploadnocaptcha/`
