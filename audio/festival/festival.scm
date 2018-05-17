;; WARNING: It is inherently insecure to run a festival instance as a
;; server, mainly because it exposes the whole system to exploits which
;; can be easily used by attackers to gain access to your
;; computer. This is because of the inherent design of the festival
;; server. Please use it only in a situation where you are sure that
;; you will not be subjected to such an attack, or have adequate
;; security precautions.

;; This file has been provided as an example file for your use, should
;; you wish to run festival as a server.

; Maximum number of clients on the server
;(set! server_max_clients 10)

; Server port
;(set! server_port 1314)

; Server password:
;(set! server_passwd "password")

; Log file location
;(set! server_log_file "/var/log/festival/festival.log")

; Server access list (hosts)
; Example:
; (set! server_access_list '("[^.]+" "127.0.0.1" "localhost.*" "192.168.*"))
; Secure default:
;(set! server_access_list '("[^.]+" "127.0.0.1" "localhost"))

;; Set up the volume, as Festival is rather quiet by default.
(set! default_after_synth_hooks
           (list
             (lambda (utt)
               (utt.wave.rescale utt 0.9 t))))

; Server deny list (hosts)

;; Debian-specific: Use aplay to play audio
;; Truncate adds empty space to the end of file, ensuring the sound does not cut out.
(Parameter.set 'Audio_Command "truncate -s +8000 $FILE && cat $FILE | aplay -D jack -q -c 1 -t raw -f s16 -r $SR")

;; Command below used to generate audio files with 'puhu' by using script makeAudioFiles.sh.
;;(Parameter.set 'Audio_Command "truncate -s +8000 $FILE && mv $FILE /home/pi/Music/tts/audio")

(Parameter.set 'Audio_Method 'Audio_Command)
