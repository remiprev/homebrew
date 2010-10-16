require 'formula'

class Linkchecker <Formula
  url 'http://downloads.sourceforge.net/project/linkchecker/5.3/LinkChecker-5.3.tar.gz'
  homepage 'http://linkchecker.sourceforge.net/'
  md5 '31f4674862ffe525467db920de595caf'

  def install
    bin.install "linkchecker"
  end
end
