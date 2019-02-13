FROM plugins/git:linux-amd64

RUN git config --global core.compression 0
RUN git config --global http.postBuffer 1048576000
RUN git config --global https.postBuffer 1048576000
RUN git config --global http.maxRequestBuffer 100M
RUN git config --global https.maxRequestBuffer 100M

ENTRYPOINT ["/bin/drone-git"]