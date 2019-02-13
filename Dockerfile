FROM plugins/git:linux-amd64

RUN git config --global core.compression 0
RUN git config --global http.postBuffer 1048576000
RUN git config --global https.postBuffer 1048576000
RUN git config --global http.maxRequestBuffer 100M
RUN git config --global https.maxRequestBuffer 100M

ARG GIT_TRACE_PACKET=1
ENV GIT_TRACE_PACKET="${GIT_TRACE_PACKET}"

ARG GIT_TRACE=1
ENV GIT_TRACE="${GIT_TRACE}"

ARG GIT_CURL_VERBOSE=1
ENV GIT_CURL_VERBOSE="${GIT_CURL_VERBOSE}"

ENTRYPOINT ["/bin/drone-git"]