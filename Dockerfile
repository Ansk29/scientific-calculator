FROM gcc:latest

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y cmake libgtest-dev && \
    cd /usr/src/googletest && cmake . && make && cp lib/*.a /usr/lib

# Ensure the build directory does not exist before creating it
RUN rm -rf build && mkdir build && cd build && cmake .. && make

# Set the default command to run the calculator when the container starts
CMD ["/app/build/scientific_calculator"]


