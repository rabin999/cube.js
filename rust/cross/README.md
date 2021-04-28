Cross Build Images
==================

```sh
docker build -t cubejs/rust-cross:x86_64-apple-darwin -f x86_64-apple-darwin.Dockerfile .
docker build -t cubejs/rust-cross:x86_64-pc-windows-msvc -f x86_64-pc-windows-msvc.Dockerfile .
docker build -t cubejs/rust-cross:x86_64-pc-windows-gnu -f x86_64-pc-windows-gnu.Dockerfile .
docker build -t cubejs/rust-cross:x86_64-unknown-linux-gnu-buster -f x86_64-unknown-linux-gnu-buster.Dockerfile .
docker build -t cubejs/rust-cross:x86_64-unknown-linux-gnu-stretch -f x86_64-unknown-linux-gnu-stretch.Dockerfile .
docker build -t cubejs/rust-cross:x86_64-unknown-linux-musl -f x86_64-unknown-linux-musl.Dockerfile .
docker build -t cubejs/rust-cross:aarch64-unknown-linux-gnu -f aarch64-unknown-linux-gnu.Dockerfile .
```

```sh
docker push cubejs/rust-cross:x86_64-apple-darwin
docker push cubejs/rust-cross:x86_64-pc-windows-msvc
docker push cubejs/rust-cross:x86_64-pc-windows-gnu
docker push cubejs/rust-cross:x86_64-unknown-linux-gnu-buster
docker push cubejs/rust-cross:x86_64-unknown-linux-gnu-stretch
docker push cubejs/rust-cross:x86_64-unknown-linux-musl
docker push cubejs/rust-cross:aarch64-unknown-linux-gnu
```
