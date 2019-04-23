# zebra
cgi log visualizer

zebra is a perl script designed to show system logs throw Apache served static pages.

<h2>Why zebra?</h2>
<p>If you need monitor your server activity and dont have a ssh connection maybe zebra could help you.
Using zebra you could avoid install complex monitorization appliances if a simple raw log its enough for you.</p>

<h2>How install</h2>
<p>First, deploy a copy of zebra.pl in your Apache web server directory of choice. I like deploy in /usr/local/sbin:

<code>sudo curl -o /usr/local/sbin/zebra.pl https://raw.githubusercontent.com/arnaiz/zebra/master/zebra.pl</code></p>

The next step its create an Apache site to server logs. You can use the example and addapt to your environment:

