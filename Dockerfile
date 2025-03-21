FROM alpine:latest

RUN apk update && apk add --no-cache \
    tailscale \
    ca-certificates \
    iptables \
    iproute2 \
    ip6tables

CMD ["sh", "-c", "tailscaled --tun=userspace-networking & tail -f /dev/null"]
