class Solat < Formula
  desc "Malaysia-aware prayer times CLI"
  homepage "https://github.com/ashrafhamil/homebrew-solat"
  url "https://github.com/ashrafhamil/homebrew-solat.git", branch: "main"
  version "1.1.0"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "solat"
  end

  test do
    assert_match "Subuh", shell_output("#{bin}/solat")
  end
end
