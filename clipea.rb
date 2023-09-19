class Clipea < Formula
  desc "Like Clippy but for the CLI. A blazing fast AI helper for your command line."
  homepage "https://github.com/dave1010/clipea"
  url "https://github.com/dave1010/clipea/archive/v1.0.1.tar.gz"
  sha256 "9c1b52c843af850a89160bb162ef1116fc8aa7ea4b9996d1603a331cb7bc4941"
  license "MIT"

  depends_on "php"
  depends_on "llm"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"clipea" => "clipea"
    # bin.install "clipea"
  end

  def caveats
    <<~EOS
      To finish setting up clipea, you need to run:
        clipea setup
      
      You can optionally install the handy "??" shell alias with:
        clipea alias 
    EOS
  end

  test do
    # Simple test to ensure the software was installed.
    system "#{bin}/clipea", "help"
  end
end

