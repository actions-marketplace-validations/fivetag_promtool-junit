FROM fivetag/promtool-linux-amd64:junit AS promtool


FROM alpine:3.16

RUN apk add --no-cache --upgrade bash

COPY --from=promtool /bin/promtool /bin/promtool
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
