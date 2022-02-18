FROM registry.gitlab.com/fdroid/docker-executable-fdroidserver:latest
COPY entrypoint.sh /entrypoint.sh
#Add CI for github workflow
COPY nightly.py /fdroidserver/fdroidserver/nightly.py
RUN apt-get update \
    && apt-get install ssh -y \
    && cd /fdroidserver \
    && sed -e '/common.apk_strip_v1_signatures/ s/^#*/#/' -i fdroidserver/nightly.py \
    && python3 setup.py compile_catalog build \
    && python3 setup.py install
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
