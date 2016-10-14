class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    url "https://download.jetbrains.com/idea/ideaIU-2016.2.4.tar.gz"
    sha256 "f940fb9fa356e28351dd99cf2612c967d173e4413b66c0452ee8fa651b64b698"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "idea"})
    end
end
