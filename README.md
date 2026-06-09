# serverlist
Public server list for OpenLieroX games

If you are running UDP masterserver on a server where public IP address changes,
add these commands to your crontab, where '3' is the line number inside udpmasterservers.txt,
this will update your IP address each hour.

```
crontab -e

@reboot sleep 30 ; cd $HOME/serverlist ; ./update-ip.sh 3
3 * * * * cd $HOME/serverlist ; ./update-ip.sh 3
```

To have write acceess to the repository, generate Github personal access token
for openlierox organization, then clone this repository using command:
git clone https://ACCESS_TOKEN@github.com/openlierox/serverlist
