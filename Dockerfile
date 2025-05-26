FROM node:alpine
LABEL org.opencontainers.image.title="team-evolve"
LABEL org.opencontainers.image.description="Team evolve."
LABEL org.opencontainers.image.authors="Zhenwei Liu <zwliu@thoughtworks.com>"
LABEL org.opencontainers.image.licenses="(Apache-2.0 AND Prosperity-3.0.0)"
WORKDIR /app
# add source code
ADD . /app
COPY docker/entrypoint.sh /app/
RUN npm run build

EXPOSE 3000

ENV PORT 3000

CMD ["./entrypoint"]