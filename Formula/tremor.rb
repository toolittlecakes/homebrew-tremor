class Tremor < Formula
  desc "Turn the MacBook trackpad into an expressive musical instrument"
  homepage "https://github.com/toolittlecakes/tremor"
  # Built straight from the tagged source via git (no archive checksum to drift).
  url "https://github.com/toolittlecakes/tremor.git",
      tag:      "v0.4.0",
      revision: "ad851392246dc839c1060a4bd23ef6d227042992"
  version "0.4.0"
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
