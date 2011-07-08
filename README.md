# Voice-Dropbox
by Rich Jones and Randall Degges
for OpenWatch.net

## About
Voice-Dropbox is an Asterisk configuration which automatically records any incoming VoIP or PSTN calls,
saves them as waveform, encodes them (MP3/Ogg), and submits them to OpenWatch.net with relevent information.

## Documentation
Complete documenation is available here: http://voice-dropbox.readthedocs.org

## Install Instructions
### Server Update
Aptitude upgrade, etc
### Required Components
* sudo apt-get install git-core curl vorbis-tools

### Asterisk + Dahdi
 * http://www.asterisk.org/downloads
 * sudo apt-get install python-special-properties
 * Import GPG Key
 * Add Asterisk Repo
 * aptitude update
 * aptitude install asterisk-1.8 asterisk-dahdi asterisk-core-sounds-en-wav
 * both have /etc/init.d/ scripts
 * Asterisk shell: asterisk -r
 * Verbosity: core set verbose 99

## Configuration
    * /etc/asterisk/
    * /etc/asterisk/sip.conf
        * Main setup 
            [test-sip-account]
            type=friend      
            host=**YOUR PUBLIC IP ADDRESS**                                                               
            insecure=port,invite                                                            
            disallow=all                                                                    
            allow=ulaw                                                                      
            dtmfmode=rfc2833                                                                
            nat=no
            qualify=yes                       
     * /etc/asterisk/extensions.conf
         * Our custom functions
         * [default]
            ;exten => <extension>,<priority>,<application>
            ; X = any number 0 - 9
            ; _ = match the start
            ; . = match as many as you want            
            exten => _X.,1,Answer()
            exten => _X.,n,Set(test=OK)
            exten => _X.,n,Set(GLOBAL(hi)=${MATH( ${GLOBAL(hi)} + 1)})
            exten => _X.,n,AGI(hello.py) #run the script /var/lib/asterisk/agi-bin/hello.py (absolute path)
            exten => _X.,von,NoOp(I like to ${test} things)
            exten => _X.,n,NoOp(GLOBAL VARIABLE hi is: ${GLOBAL(hi)})
            exten => _X.,n,NoOp(DEBUG INFO: ${CALLERID(all)} ${CALLERID(num)} ${CALLERID(name)} => ${EXTEN}) ;
            exten => _X.,n,Wait(1)
            exten => _X.,n,Monitor(wav,filename)
            exten => _X.,n,Playback(hello-world)
            exten => _X.,n,Wait(10)
            exten => _X.,n,Hangup(1)
            exten => h,1,System(/root/blah.sh)
            exten => h,1,System(curl http://wahtever.blah/?phone=)
     * /var/lib/asterisk/sounds
     * /var/spool/asterisk/monitor/
     * Remeber to reload sip.conf, dialplan.conf
     * AMI - Asterisk Manager Interface - network tcp
     * AGI - Asterisk Gateway Interface - incoming calls, python whatever
        * /var/lib/asterisk/agi-bin/
            * hello.py

## Development Resources
* Server:
    * http://jeremy-mcnamara.com/asterisk/how-to-configure-asterisk/
* Dialplan Language:
    * http://www.voip-info.org/tiki-index.php?page#Asterisk%20config%20extensions.conf
    * http://cdn.oreilly.com/books/9780596510480.pdf
* AGI:
    * http://www.voip-info.org/wiki/view/Asterisk+AGI
* Client(Gnome):
    * Ekiga
* Client (Android):
    * http://developer.android.com/resources/samples/SipDemo/index.html (Native, 2.3 only)
    * http://sipdroid.org/
* Client (iPhone):
    * http://code.google.com/p/siphon/
    * https://github.com/pzion/miumiu (IAX)
