load("//third_party:repo.bzl", "tf_http_archive", "tf_mirror_urls")

def repo():
    tf_http_archive(
        name = "cutlass_archive",
        build_file = "//third_party:cutlass.BUILD",
        sha256 = "313ed4c54613f21da80153db4bebc7cdbdef259f56e9551cce0a394d1e9e8b5b",
        strip_prefix = "cutlass-4.4.2",
        urls = tf_mirror_urls("https://github.com/NVIDIA/cutlass/archive/refs/tags/v4.4.2.zip"),
    )
