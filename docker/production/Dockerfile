# Use the latest Alpine Linux image as the base
FROM alpine:latest AS base

# Install Node.js and npm
RUN apk add --no-cache nodejs npm

# Set the working directory
WORKDIR /usr/src/app

# Install dependencies into a temporary directory to cache them
FROM base AS install

# Copy package files
COPY package.json package-lock.json ./

# Install all dependencies including devDependencies for building
RUN npm ci

# Copy all files and build the Next.js app
FROM install AS build
COPY .. .
RUN npm run build

# Prepare the release image
FROM alpine:latest AS release

# Install Node.js and npm
RUN apk add --no-cache nodejs npm

# Create a non-root user and group
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Set the working directory
WORKDIR /usr/src/app

# Copy production dependencies
COPY --from=install /usr/src/app/node_modules ./node_modules

# Copy built files
COPY --from=build /usr/src/app/.next ./.next
COPY --from=build /usr/src/app/public ./public
COPY --from=build /usr/src/app/package.json ./package.json

# Set environment variable
ENV NODE_ENV=production

# Expose the application port
EXPOSE 3000

# Use the non-root user to run the app
USER appuser

# Command to run the Next.js application
CMD ["npm", "start"]

