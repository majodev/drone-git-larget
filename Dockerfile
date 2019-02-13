FROM plugins/git:linux-amd64

RUN git config --global core.compression 9
RUN git config --global http.postBuffer 1048576000
RUN git config --global https.postBuffer 1048576000

ENTRYPOINT ["/bin/drone-git"]