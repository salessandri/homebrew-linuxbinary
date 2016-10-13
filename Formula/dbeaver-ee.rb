class DbeaverEe < Formula
    desc "Dbeaver Enterprise version. Free multi-platform database tool for developers, SQL programmers, database administrators and analysts. Supports all popular databases: MySQL, PostgreSQL, SQLite, Oracle, DB2, SQL Server, Sybase, MongoDB, etc."
    homepage "http://dbeaver.jkiss.org/"
    version :latest
    sha256 :no_check

    if MacOS.prefer_64_bit?
        url "http://dbeaver.jkiss.org/files/dbeaver-ee-latest-linux.gtk.x86_64.tar.gz"
    else
        url "http://dbeaver.jkiss.org/files/dbeaver-ee-latest-linux.gtk.x86.tar.gz"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver")
    end

    def caveats; <<-EOS.undent
        Enterprise Edition includes NoSQL databases support and additional Eclipse extensions for better project management.
        EOS
    end
end
