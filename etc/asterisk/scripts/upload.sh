#! /bin/bash
filename=$1
number=$2
areacode=${number:0:3}
fileparam="rec_file=@${filename}"
nameparam="name=VoiceDropboxSubmission:${areacode}"
publicparam="public_description=${areacode}"
privateparam="private_description=NONE"
locparam="location=${areacode}"

echo "curl -F ${fileparam} -F ${publicparam} -F ${nameparam} -F ${privateparam} -F ${locparam} http://openwatch.net/uploadnocaptcha/"
`curl -F ${fileparam} -F ${publicparam} -F ${nameparam} -F ${privateparam} -F ${locparam} http://openwatch.net/uploadnocaptcha/`
