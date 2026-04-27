## RSYNC the contents of the project to the Docker server ##
if [ "$HOSTNAME" != "anderson-ThinkPad-T495s" ]; then
  echo "RSYNC must be run from development system.  Exiting script."
  exit 1
fi
#if [[ "$VIRTUAL_ENV" == "" ]]; then
#  echo "VENV must be active.  Exiting script."
#  exit 1
#fi
rsync -rv --delete --exclude-from=.gitignore . pi@192.168.4.54:/home/pi/src/esp32-env-monitor/
