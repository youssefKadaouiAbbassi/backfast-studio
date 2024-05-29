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

# Prepare the release image
FROM alpine:latest AS release

# Install Node.js and npm
RUN apk add --no-cache nodejs npm

# Set the working directory
WORKDIR /usr/src/app

# Copy production dependencies
COPY --from=install /usr/src/app/node_modules ./node_modules

# Copy the application files
COPY . .

# Set environment variable
ENV NODE_ENV=development

# Disable Next.js telemetry during build
ENV NEXT_TELEMETRY_DISABLED 1

# Expose the application port
EXPOSE 3000

# Command to run the Next.js application
CMD ["npm", "run", "dev"]
