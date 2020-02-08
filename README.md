# Minimal Webserver

Tiny Golang web server to demonstrate the Dockerfile strategy in OpenShift 
Buildconfigs.

To try it simply run the following command:

```
$ oc new-project dockerstrategy-demo
$ oc new-app https://github.com/giannisalinetti/hello-server
```

Try to inspect the build logs and demonstrate that a pure Docker build has
been triggered.
```
$ oc logs builds/hello-server-1 -f
```

### Maintainer
Gianni Salinetti <gsalinet@redhat.com>
