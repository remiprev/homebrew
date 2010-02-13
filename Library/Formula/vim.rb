require 'formula'

class Vim <Formula
  url 'ftp://ftp.vim.org/pub/vim/unix/vim-7.2.tar.bz2'
  homepage 'http://www.vim.org'
  md5 'f0901284b338e448bfd79ccca0041254'

  def install
    configure_args = [
      "--prefix=#{prefix}",
      "--disable-debug",
      "--disable-dependency-tracking",
      "--without-x",
      "--disable-xim",
      "--disable-fontset",
      "--disable-xsmp",
      "--enable-gui=no",
      "--enable-multibyte"
    ]

		configure_args <<	"--enable-rubyinterp=/usr/bin/ruby" if ARGV.include? '--with-ruby'

		system "./configure", *configure_args
    system "make install"
  end
end
