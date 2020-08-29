# Gnome Pomodoro Tracking



### Requirements 
* python3
* git 
* gnome-pomodoro

### Install

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/josehbez/gnome-pomodoro-tracking/master/install.sh)"

```
### Upgrade

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/josehbez/gnome-pomodoro-tracking/master/install.sh)" "" --upgrade

```

### Uninstall

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/josehbez/gnome-pomodoro-tracking/master/uninstall.sh)"
```



### Set plugin tracking

```bash
gp-tracking -p clockify
```

### Plugins available

* [clockify](./plugins/clockify/README.md)
* [Odoo](./plugins/odoo/README.md)

### CLI short-cut
* Resume 
```bash
    # print resume current pomodoro
    gp-tracking -s 
```
* Add description
```bash
    # * if not running pomodoro, start new pomodoro
    gp-tracking -n "Add decription time entry"
```
* Restart 
```bash
    # * if running pmodoro, stop current pomodoro and start new
    gp-tracking -r
```
* Kill 
```bash
    # * if running pmodoro, kill current pomodoro
    gp-tracking -k
```

## Gnome-Pomodoro 

* Launch gnome-pomodoro. Preferences / Plugins ... / Custom Actions(Execute shell scripts)

![](img/plugins.png)

![](img/custom-actions.png)

* Launch gnome-pomodoro. Preferences / Custom actions ...  / add Action

```bash
gp-tracking -gps $(state) -gpt "$(triggers)" -gpd $(duration) -gpe $(elapsed)
```

![](img/action-clockify.png)


## LICENSE

[GPL V3.0]( ./LICENSE)