class Tremor < Formula
  desc "Turn the MacBook trackpad into an expressive musical instrument"
  homepage "https://github.com/toolittlecakes/tremor"
  # Built straight from the tagged source via git (no archive checksum to drift).
  url "https://github.com/toolittlecakes/tremor.git",
      tag:      "v0.3.0",
      revision: "a58f5141959b288dc5054c578ac5f978df38b9c6"
  version "0.3.0"
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
