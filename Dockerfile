# Use Node.js base image
FROM node:18-alpine

# Set working dir
WORKDIR /app

# Install pnpm globally
RUN npm install -g pnpm

# Copy only the lock and package info first
COPY pnpm-lock.yaml package.json ./

# Install dependencies
RUN pnpm install

# Copy rest of the app (excluding node_modules)
COPY . .

# Expose Vite dev server port
EXPOSE 5173

# Use pnpm to start dev
CMD ["pnpm", "dev"]
