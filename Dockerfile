# pull the base image
FROM node

# set the working direction
WORKDIR /app-frontend

# # add `/app/node_modules/.bin` to $PATH
# ENV PATH /app-frontend/node_modules/.bin:$PATH

# install app dependencies
COPY ./frontend/package.json ./

# COPY ./frontend/package-lock.json ./

RUN npm install

# add app
COPY . ./

EXPOSE 3000

# start app
CMD ["npm","start"]