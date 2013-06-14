SYDI
====

Running SYDI-Server using default settings usually generates a Word document somewhere between 20 and 40 pages. While some people hunger for that much information, others are overwhelmed by the details. You might feel that some of the information is irrelevant to your network documentation. If your server documentation template doesn’t include the information, why should your SYDI report?
Sometimes less is more.

SYDI was created with this in mind and you can customize the report quite extensively. Using the -h argument will show all available options for SYDI-Server.

>cscript.exe sydi-server.vbs -h

Looking through the output you will want to focus on the Gathering Options.

[geek_gibberish]Although all of the information is collected by WMI there are two parameters depending on if the information is found by WMI providers or WMI connecting to the registry.[/geek_gibberish]

By default all options are enabled, so running the script in the default mode is the equivalent to executing:

>cscript.exe sydi-server.vbs -wabefghipPqrsSu -racdklp

Create a minimal report you would disable the WMI and Registry options by running:

>cscript.exe sydi-server.vbs -w -r

If you would want to include everything aside from installed patches (q, from the help menu), processes (P) and services (s). You would execute this command:

>cscript.exe sydi-server.vbs -wabefghiprSu

Since all the options we wanted to disable were those found under the WMI section we didn’t have to touch the –r (registry) parameter.
