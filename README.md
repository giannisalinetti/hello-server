# Minimal Webserver

Tiny go web server to demonstrate the Dockerfile strategy in OpenShift 
Buildconfigs.

To try it simply run the following command:

```
$ oc new-project dockerstrategy-demo
$ oc new-app https://github.com/giannisalinetti/minimal-webserver
```

Try to inspect the build logs and demonstrate that a pure Docker build has
been triggered.
```
$ oc logs builds/minimal-webserver-1 -f
```

