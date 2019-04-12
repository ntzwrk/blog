# Stage: Build

FROM plugins/hugo as build
WORKDIR /usr/src/build
COPY ./src ./
RUN git clone https://github.com/ntzwrk/cocoa-eh-hugo-theme.git themes/cocoa-eh && \
  /bin/drone-hugo && \
  find ./ -type f \( \
    -name "*.html" \
    -o -name "*.js" \
    -o -name "*.css" \
    -o -name "*.xml" \
    -o -name "*.json" \
    -o -name "*.txt" \
    -o -name "*.png" \
    -o -name "*.ico" \
    -o -name "*.svg" \
    -not -name "*.gz" \) \
    -exec gzip -v -k -9 "{}" \;


# Stage: Run

FROM nginx:mainline-alpine
WORKDIR /usr/share/nginx/html
COPY --from=build /usr/src/build/public ./
EXPOSE 80