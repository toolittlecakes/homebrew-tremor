class Tremor < Formula
  desc "Turn the MacBook trackpad into an expressive musical instrument"
  homepage "https://github.com/toolittlecakes/tremor"
  # Built from the private source repo via git (avoids an unstable archive
  # checksum and works with the owner's existing GitHub credentials).
  url "https://github.com/toolittlecakes/tremor.git",
      tag:      "v0.1.0",
      revision: "bfc27652a32c679f7ffbc54469c920d2aa151116"
  version "0.1.0"

  depends_on :macos

  def install
    system "make"
    bin.install "build/tremor"
  end

  test do
    assert_path_exists bin/"tremor"
  end
end
