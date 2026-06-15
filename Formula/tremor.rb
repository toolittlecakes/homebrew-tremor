class Tremor < Formula
  desc "Turn the MacBook trackpad into an expressive musical instrument"
  homepage "https://github.com/toolittlecakes/tremor"
  # Built straight from the tagged source via git (no archive checksum to drift).
  url "https://github.com/toolittlecakes/tremor.git",
      tag:      "v0.2.0",
      revision: "7b1bb6f65d3d2ba28a133dbc4d1dd8efbdf21d15"
  version "0.2.0"
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
