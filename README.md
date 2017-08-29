## debian-rails
Ruby image with rails app dependencies installed

    docker build -t lucro/debian-rails .
    export VERSION=<the ruby version in the base image>
    docker push lucro/debian-rails:$VERSION
