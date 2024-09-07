# FROM node:lts as base

# RUN npm install concurrently -g

# WORKDIR /hyperswitch-web

# RUN git clone https://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@github.com/MohammedAlzoom/hyperswitch-web .
# # COPY ../hyperswitch-web /hyperswitch-web/
# COPY custom-hyperswitch-web/.env /hyperswitch-web/.env

# RUN npm install

# RUN npm run re:start
# # EXPOSE 9050
# # EXPOSE 5252
# # EXPOSE 9060
# RUN npm run build:dev

# # CMD concurrently "npm run re:build && npm run start" "npm run start:playground"

# FROM nginx:alpine

# # Copy the built app from the previous stage to the Nginx html directory
# COPY --from=base /hyperswitch-web/dist/sandbox /usr/share/nginx/html

# # Expose the port that Nginx is listening on
# EXPOSE 80

# # Start Nginx when the container launches
# CMD ["nginx", "-g", "daemon off;"]



FROM node:lts as base

RUN npm install concurrently -g

WORKDIR /hyperswitch-web

COPY . .
# RUN git clone https://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@github.com/MohammedAlzoom/hyperswitch-web .
# COPY ../hyperswitch-web /hyperswitch-web/
# COPY custom-hyperswitch-web/.env /hyperswitch-web/.env

RUN npm install

# RUN npm run re:start
RUN npm run re:build
RUN npm run build
# EXPOSE 9050
# EXPOSE 5252
# EXPOSE 9060

# CMD concurrently "npm run re:build && npm run start" "npm run start:playground"

FROM nginx:alpine

# Copy the built app from the previous stage to the Nginx html directory
COPY --from=base /hyperswitch-web/dist /usr/share/nginx/html

# Expose the port that Nginx is listening on
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

