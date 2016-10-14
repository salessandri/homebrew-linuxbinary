class PgwebBinary < Formula
    desc "Cross-platform client for PostgreSQL databases, binary installation."
    homepage "https://sosedoff.github.io/pgweb"
    version "0.9.5"

    if MacOS.prefer_64_bit?
        url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_linux_amd64.zip"
        sha256 "37a1b206c548bbd1a558843d38f27040e34afdbbc3ecb7a05aa2dc825c93dbf5"
    else
        url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_linux_386.zip"
        sha256 "63e4f0a509b7f90140ea404d65da493a3f8e1aabc094d6830e28ea4d708efdf5"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]

        if MacOS.prefer_64_bit?
            bin.install_symlink({"#{libexec}/pgweb_linux_amd64" => "pgweb"})
        else
            bin.install_symlink({"#{libexec}/pgweb_linux_386" => "pgweb"})
        end
    end
end
