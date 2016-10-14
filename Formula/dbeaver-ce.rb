class DbeaverCe < Formula
    desc "Dbeaver Community version. Free multi-platform database tool for developers, SQL programmers, database administrators and analysts."
    homepage "http://dbeaver.jkiss.org/"
    version "latest"
    sha256 :no_check

    if MacOS.prefer_64_bit?
        url "http://dbeaver.jkiss.org/files/dbeaver-ce-latest-linux.gtk.x86_64.tar.gz"
    else
        url "http://dbeaver.jkiss.org/files/dbeaver-ce-latest-linux.gtk.x86.tar.gz"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver")
    end
end
