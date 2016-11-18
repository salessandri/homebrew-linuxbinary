class Datagrip < Formula
    desc "Your Swiss Army Knife for Databases and SQL."
    homepage "http://www.jetbrains.com/datagrip/"
    url "https://download.jetbrains.com/datagrip/datagrip-2016.2.6.tar.gz"
    sha256 "c65ef81e7c178d6e0f6fc4c7d55687a474e7c4bd0e2a94bd3de541ee66daff4a"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/datagrip.sh" => "datagrip"})
    end
end
