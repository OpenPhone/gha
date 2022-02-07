FROM node:16-alpine
ARG NPM_TOKEN
WORKDIR /app
EXPOSE 3080
RUN uname -a \
   && find \
   && df -h \
   && echo "uname -a" >> /app/test.sh \
   && chmod +x /app/test.sh
CMD /app/test.sh
