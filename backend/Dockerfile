# An example of using a custom Dockerfile with Dart Frog
# Official Dart image: https://hub.docker.com/_/dart
# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.17)
FROM dart:stable AS build

# Install Node.js LTS to builder
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - &&\
    apt-get install -y nodejs

WORKDIR /app



# Resolve app dependencies.
COPY pubspec.* ./
RUN dart pub get

# Copy app source code and AOT compile it.
COPY . .

# Install Prisma CLI
RUN npm install prisma

# Generate a production build.
RUN dart pub global activate dart_frog_cli
RUN dart pub global run dart_frog_cli:dart_frog build

ARG JWT_ISSUER
ARG JWT_ACCESS_SECRET
ARG JWT_REFRESH_SECRET
ARG DATABASE_URL
# Ensure packages are still up-to-date if anything has changed.
RUN dart pub get --offline
RUN dart compile exe --define=JWT_ISSUER=${JWT_ISSUER} --define=JWT_ACCESS_SECRET=${JWT_ACCESS_SECRET} --define=JWT_REFRESH_SECRET=${JWT_REFRESH_SECRET} --define=DATABASE_URL=${DATABASE_URL} build/bin/server.dart -o build/bin/server

# Build minimal serving image from AOT-compiled `/server` and required system
# libraries and configuration files stored in `/runtime/` from the build stage.
FROM scratch
COPY --from=build /runtime/ /

# Copy runtime dependencies
COPY --from=odroe/prisma-dart:latest / /

# Copy executable
COPY --from=build /app/build/bin/server /app/bin/
# Uncomment the following line if you are serving static files.
# COPY --from=build /app/build/public /public/

# Copy Prisma Engine
COPY --from=build /app/node_modules/prisma/query-engine-* /app/bin/

# Start the server.
CMD ["/app/bin/server"]