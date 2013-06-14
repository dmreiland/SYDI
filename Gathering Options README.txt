SYDI-Server v.2.3

Gathering Options
 -w	- WMI Options (Default: -wabefghipPqrsSu)
   a	- Windows Installer Applications
   b	- BIOS Information
   e	- Event Log files
   f	- File Shares
   g	- Local Groups (on non DC machines)
   h	- Additional Hardware (ie. Video Controller)
   i	- IP Routes (XP and 2003 only)
   p	- Printers
   P	- Processes (running)
   q	- Installed Patches
   r	- Registry Size
   s	- Services
   S	- Startup Commands
   u	- Local User accounts (on non DC machines)
 -r	- Registry Options (Default: -racdklp)
   a	- Non Windows Installer Applications
   c	- Windows Components
   d	- FQDN Domain Name
   k	- Product Keys
   l	- Last Logged on user
   p	- Print Spooler Location
 -t	- Target Machine (Default: ask user)
 -u	- Username (To run with different credentials)
 -p	- Password (To run with different credentials, must be used with -u)
Output Options
 -e	- Export format
   w	- Microsoft Word (Default)
   x	- XML (has to be used with -o)
   h	- HTTP post to webserver (has to be used with -U, -P and -L)
   a	- Submit data to awdit (has to be used with -K, -A and -O)
 -o	- Save to file (-oc:\corpfiles\server1.doc, use in combination with -d
   	  if you don't want to display word at all, use a Path or the file will
  	  be placed in your default location usually 'My documents')
  	  -oC:\corpfiles\server1.xml
  	  WARNING USING -o WILL OVERWRITE TARGET FILE WITHOUT ASKING
 -U	- Username for HTTP server (optional)
 -P	- Password for HTTP server (optional)
 -L	- URL to post resulting XML to (if using HTTP export option)
 -K	- Awdit API key
 -O	- Awdit location (quoted string)
 -A	- Awdit account id
Word Options
 -b	- Use specific Word Table (-b"Table Contemporary" or -b"Table List 4")
 -f	- Base font size (Default: -f12)
 -d	- Don't display Word while writing (runs faster)
 -n	- No extras (minimize the text inside brackets)
 -T	- Use .dot file as template (-Tc:\corptemplates\server.dot, ignores -f)
XML Options
 -s	- XML Stylesheet
  h	- HTML
  t	- Free text
Other Options
 -v	- Check for latest version (requires Internet access)
 -D	- Debug mode, useful for reporting bugs
 -h	- This help file.

MORE
------

Running SYDI-Server using default settings usually generates a Word document somewhere between 20 and 40 pages. While some people hunger for that much information, others are overwhelmed by the details. You might feel that some of the information is irrelevant to your network documentation. If your server documentation template doesn’t include the information, why should your SYDI report?

Sometimes less is more.

I created SYDI with this in mind and you can customize the report quite extensively. Using the -h argument will show all available options for SYDI-Server.

cscript.exe sydi-server.vbs -h

Looking through the output you will want to focus on the Gathering Options.

[geek_gibberish]Although all of the information is collected by WMI there are two parameters depending on if the information is found by WMI providers or WMI connecting to the registry.[/geek_gibberish]

By default all options are enabled, so running the script in the default mode is the equivalent to executing:

cscript.exe sydi-server.vbs -wabefghipPqrsSu -racdklp

Create a minimal report you would disable the WMI and Registry options by running:

cscript.exe sydi-server.vbs -w -r

If you would want to include everything aside from installed patches (q, from the help menu), processes (P) and services (s). You would execute this command:

cscript.exe sydi-server.vbs -wabefghiprSu

Since all the options we wanted to disable were those found under the WMI section we didn’t have to touch the –r (registry) parameter.


END.