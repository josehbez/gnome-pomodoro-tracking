read -r -p "Are you sure you want to remove Oh GNOME POMODORO TRACKING? [y/N] " confirmation
if [ "$confirmation" != y ] && [ "$confirmation" != Y ]; then
  echo "Uninstall cancelled"
  exit
fi

echo "Looking for gp-tracking.conf ..."  
if [ -e ~/.gp-tracking.conf ]; then    
    echo "Found ~/.gp-tracking.conf"
    echo "Removing ..."
    rm ~/.gp-tracking.conf
fi
echo "Looking for gp-tracking ..." 
if [ -f ~/.local/bin/gp-tracking ]; then
    echo "Found ~/.local/bin/gp-tracking"
    echo "Removing ..."
    rm -rf ~/.local/bin/gp-tracking
fi

echo "Looking for gnome-pomodoro-tracking ..." 
if [ -d ~/.gnome-pomodoro-tracking ]; then
    echo "Found ~/.gnome-pomodoro-tracking"
    echo "Removing ..."
    rm -rf ~/.gnome-pomodoro-tracking
fi

echo "Thanks for trying out Gnomme Pomodoro Tracking. It's been uninstalled."
echo "Don't forget to restart your terminal!"