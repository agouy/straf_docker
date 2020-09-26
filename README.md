# Template Docker Operator

## For all operators

* Replace repository URL

* Replace version number in files

## For R operators

* isWebApp: false

## For Shiny operators

* isWebApp: true

## Build the image

```bash
VERSION=0.10.0.1
docker build -t tercen/shiny_docker_operator:$VERSION .
docker push tercen/shiny_docker_operator:$VERSION
git add -A && git commit -m "$VERSION" && git tag  $VERSION  && git push && git push --tags
```
