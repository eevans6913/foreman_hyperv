# foreman_hyperv for CentOS 8.3.2011 | Doe foreman hyper-c for CentOS 8 Stream, go too https://github.com/eevans6913/foreman_hyperv/tree/eevans6913-Xentos-8-stream
This script is not guarenteed in any way. You ue it at your own risk.
Fully updated Centos 8, foreman 2.4, katello 4.0. 
Installs foreman_hyperv and dependencies including gems for Centos 8, Foreman 2.4, Katello.4.0
Make sure the script is executable (chmod+x" foreman_hyperv)
Run the script as root or with root privileges.
Wgen you list you hv in the foreman compute resource section, the hostname needs to be upper case and domain lowercase.

Example http(s)://HV-NAME.example.com:5985/wsman

Make sure your HV servers have need prepared with winrm auickconfig or Enable-PSRemoting.

If you have anyissues, please let me know.
