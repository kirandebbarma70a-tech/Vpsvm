FROM debian:13

ENV DEBIAN_FRONTEND=noninteractive \
    PORT=10000

WORKDIR /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      bash \
      sudo \
      ca-certificates \
      curl \
      wget \
      git \
      rsync \
      nano \
      vim \
      less \
      htop \
      tree \
      unzip \
      zip \
      tar \
      gzip \
      bzip2 \
      xz-utils \
      jq \
      file \
      lsof \
      procps \
      psmisc \
      iproute2 \
      iputils-ping \
      net-tools \
      dnsutils \
      traceroute \
      socat \
      netcat-openbsd \
      ncdu \
      pciutils \
      usbutils \
      kmod \
      locales \
      tzdata \
      cron \
      logrotate \
      gnupg \
      openssl \
      python3 \
      qemu-system-x86 \
      qemu-system-arm \
      qemu-utils \
      ovmf \
    && rm -rf /var/lib/apt/lists/*

# sshx डाउनलोड और इंस्टॉल करना
RUN curl -sSf https://sshx.io/get | sh

COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

EXPOSE 10000

CMD ["/app/start.sh"]
