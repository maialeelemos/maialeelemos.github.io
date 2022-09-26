FROM jekyll/jekyll:3.8
# above can be 4.0 instead of 3.8

WORKDIR /srv/jekyll
ADD . ./
COPY --chown=jekyll:jekyll Gemfile* ./
# ^- Getting write errors for Gemfile.lock, so copying it separately
# and enforcing ownership change

# Source: https://mherman.org/blog/deploying-jekyll-netlify-docker-gitlab-ci/

ENV JEKYLL_ENV=development
RUN bundle update && bundle install

#FROM builder as production
# COPY ./_config.prod.yml ./_config.yml
#ENV JEKYLL_ENV=production
#RUN bundle update && bundle install

#FROM nginx
#COPY --from=production /srv/jekyll/_site /usr/share/nginx/html
# Source on multi-stage build:
# https://itnext.io/how-to-use-docker-multi-stage-build-to-create-optimal-images-for-dev-and-production-568c19a39de8
