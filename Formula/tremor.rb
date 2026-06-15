class Tremor < Formula
  desc "Turn the MacBook trackpad into an expressive musical instrument"
  homepage "https://github.com/toolittlecakes/tremor"
  # Built straight from the tagged source via git (no archive checksum to drift).
  url "https://github.com/toolittlecakes/tremor.git",
      tag:      "v0.4.1",
      revision: "988eddb80106f7fc7c49372b6b0b20159b328814"
  version "0.4.1"
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
