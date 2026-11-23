
# Step 1: Select Node.js base image
FROM node:22-alpine

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package files
COPY app/package*.json ./

# Step 4: Install production dependencies
RUN npm ci --omit=dev

# Step 5: Copy application source code
COPY app/ .

# Step 6: Document application port
EXPOSE 3000

# Step 7: Start application
CMD ["npm", "start"]
