FROM ubuntu:20.04

ARG USER_ID

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        apt-transport-https \
        bash-completion \
        ca-certificates \
        curl \
        gnupg \
        python3 \
        python3-pip \
        python3-setuptools \
        python3-wheel \
        wget \
    && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m -s /bin/bash -u $USER_ID user

# Install golang
RUN wget -O /tmp/go.tar.gz https://golang.org/dl/go1.15.9.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf /tmp/go.tar.gz && rm /tmp/go.tar.gz

# Install kubectl
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | \
        tee -a /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && apt-get install -y kubectl && \
    rm -rf /var/lib/apt/lists/*

# Install Google Cloud SDK
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | \
        tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | \
        apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
    apt-get update && apt-get install -y google-cloud-sdk && \
    rm -rf /var/lib/apt/lists/*

# Install kubebuilder
RUN curl -L https://go.kubebuilder.io/dl/2.3.1/linux/amd64 | tar -xz -C /tmp/ && \
    mv /tmp/kubebuilder_2.3.1_linux_amd64 /usr/local/kubebuilder

ENV PATH="${PATH}:/usr/local/go/bin:/usr/local/kubebuilder/bin"
USER user
WORKDIR /work
