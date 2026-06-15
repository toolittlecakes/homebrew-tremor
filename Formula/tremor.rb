class Tremor < Formula
  desc "Turn the MacBook trackpad into an expressive musical instrument"
  homepage "https://github.com/toolittlecakes/tremor"
  # Built straight from the tagged source via git (no archive checksum to drift).
  url "https://github.com/toolittlecakes/tremor.git",
      tag:      "v0.1.0",
      revision: "bfc27652a32c679f7ffbc54469c920d2aa151116"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  def install
    system "make"
    bin.install "build/tremor"
  end

  test do
    assert_path_exists bin/"tremor"
  end
end
