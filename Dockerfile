FROM amazon/aws-cli:2.0.7

ENV SSM_PLUGIN_VERSION="1.1.61.0"

RUN set -eu \
    && curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm" -o "session-manager-plugin.rpm" \
    && yum install -y session-manager-plugin.rpm

