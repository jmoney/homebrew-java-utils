require 'formula'

class Saxoncli < Formula
  homepage 'http://jmonette.github.io/saxoncli'
  url 'https://github.com/jmonette/saxoncli/archive/v0.2.2.tar.gz'
  sha256 'f15051a71d36b7fe91e46ea720df751dda749c29'

  head 'https://github.com/jmonette/saxoncli.git'

  def install
    ohai "Bin installing saxoncli"
    bin.install "bin/saxoncli"

    ohai "Lib installing Saxon-HE-9.4.0.7.jar"
    lib.install "lib/Saxon-HE-9.4.0.7.jar"
  end

  def caveats; <<-EOS.undent
    You need at least java 1.6 for this to work.  Homebrew does not have a
    java installation support(that I could find) so could not have a depends_on for it.
    EOS
  end
end
