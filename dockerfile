# 1. เลือก Node.js image
FROM node:20-alpine

# 2. Set working dir
WORKDIR /app

# 3. Copy package files
COPY package.json package-lock.json ./

# 4. Install dependencies
RUN npm ci

# 5. Copy source code
COPY . .

# 6. Build Next.js
RUN npm run build

# 7. Expose port
EXPOSE 3000

# 8. Run Next.js
CMD ["npm", "start"]
