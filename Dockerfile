FROM gcc

RUN apt update && apt install -y libinih-dev cmake astyle && rm -rf /var/lib/apt/lists/*

RUN git clone --depth=1 -b master -q https://github.com/google/googletest.git /googletest
RUN mkdir -p /googletest/build
WORKDIR /googletest/build
RUN cmake .. && make -j 0 && make install \
  && rm -rf /googletest
