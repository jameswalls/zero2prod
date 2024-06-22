FROM rust:1.79.0
WORKDIR /app
RUN apt update && apt install lld clang -y
COPY . .
RUN cargo build --release
ENTRYPOINT ["./target/release/zero2prod"]
