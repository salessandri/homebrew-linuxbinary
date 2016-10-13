class Sqltabs < Formula
    desc "SQL Tabs is an open source cross platform desktop client for postgresql."
    homepage "http://www.sqltabs.com/"
    version :latest
    sha256 :no_check

    url "http://www.sqltabs.com/download/sqltabs.tar.gz"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/sqltabs" => "sqltabs"})
    end

    def caveats; <<-EOS.undent
        This formula depends on libpq, you have to resolve this denpendency
        based on the linux distro you use.
        EOS
    end
end
