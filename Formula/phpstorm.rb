class Phpstorm < Formula
    desc "Lightning-smart PHP IDE"
    homepage "http://www.jetbrains.com/phpstorm/"
    url "https://download.jetbrains.com/webide/PhpStorm-2016.2.2.tar.gz"
    sha256 "df2f5cd4c94a3aa5403a3cecc6249827cfd6138ffd720cf04fbd07f5f0f5e05a"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/phpstorm.sh" => "phpstorm"})
    end
end
