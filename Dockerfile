FROM rust:slim
# Get the patch binary, because we need it to build mdbook-katex
RUN apt-get update && apt-get install patch
RUN apt-get clean
RUN cargo install mdbook mdbook-katex mdbook-mermaid
