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
VERSION=1.1.0
docker build -t agouy/STRAF_docker:$VERSION .
docker push tercen/STRAF_docker:$VERSION
git add -A && git commit -m "$VERSION" && git tag  $VERSION  && git push && git push --tags
```
