# zebra
cgi log visualizer

zebra is a perl script designed to show system logs throw Apache served static pages.

<h2>Why zebra?</h2>
<p>If you need monitor your server activity and dont have a ssh connection maybe zebra could help you.
Using zebra you could avoid install complex monitorization appliances if a simple raw log its enough for you.</p>

<h2>How install</h2>
<em>Obviously you need a DNS type A entry for logs.mysite.com that points to your server.</em>
<p>Deploy a copy of zebra.pl in your Apache web server directory of choice. I like deploy in /usr/local/sbin:
  
<code>sudo curl -o /usr/local/sbin/zebra.pl https://raw.githubusercontent.com/arnaiz/zebra/master/zebra.pl</code></p>

<p>The next step its create an Apache site to server logs. For example, lets run the logs.mysite.com, assuming your htdocs is /var/www/: <br />

<pre><code>curl -o /etc/apache2/sites-available/logs.mysite.com https://raw.githubusercontent.com/arnaiz/zebra/master/zebra-site.conf</code></pre></p>

<p>Edit zebra-site.conf to your needs and create the htdocs directory:
<pre><code>
  a2ensite zebra-site
  mkdir /var/www/logs (or your configure directory)
  cd /var/www/logs
</code></pre></p>

  
  


