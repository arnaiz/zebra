# zebra
cgi log visualizer

zebra is a perl script designed to show system logs throw Apache served static pages.

Why zebra?
If you need monitor your server activity and dont have a ssh connection maybe zebra could help you.
Using zebra you could avoid install complex monitorization appliances if a simple raw log its enough for you.

How install
First, deploy a copy of zebra.pl in your Apache web server directory of choice. I like deploy in /usr/local/sbin:

sudo curl -o /usr/local/sbin/zebra.pl https://raw.githubusercontent.com/arnaiz/zebra/master/zebra.pl

The next step its create an Apache site to server logs. You can use the example and addapt to your environment:

