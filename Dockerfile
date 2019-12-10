FROM lycantropos/cmake

RUN git clone --depth=1 -b master -q https://github.com/google/googletest.git /googletest
RUN mkdir -p /googletest/build
WORKDIR /googletest/build
RUN cmake .. && make && make install \
  && rm -rf /googletest


RUN apt update && apt install -y libinih-dev && rm -rf /var/lib/apt/lists/*
