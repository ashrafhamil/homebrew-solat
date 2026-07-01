class Solat < Formula
  desc "Malaysia-aware prayer times CLI with azan notification"
  homepage "https://github.com/ashrafhamil/homebrew-solat"
  url "https://github.com/ashrafhamil/homebrew-solat.git", branch: "main"
  version "1.0.0"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "solat"
    bin.install "solat-watch"
  end

  service do
    run [opt_bin/"solat-watch"]
    keep_alive true
    log_path var/"log/solat-watch.log"
    error_log_path var/"log/solat-watch.err.log"
  end

  test do
    assert_match "Subuh", shell_output("#{bin}/solat")
  end
end
