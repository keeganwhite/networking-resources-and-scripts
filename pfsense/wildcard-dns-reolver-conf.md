# How to configure a wildcard DNS resolve entry on a pfsense firewall
Under services / dns resolver / general settings enable 'diplay custom options' and enter the follwoing:
```
server:
local-zone: "<URL>" redirect
local-data: "<URL> 86400 IN A <SERVER IP>"
```
where URL is the domain name i.e. for 'server.inethi.net' you would enter 'inethi.net' and the 'SERVER IP'is the IP address of the device hosting the services you want to redirect to.