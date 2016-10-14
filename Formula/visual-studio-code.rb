class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle."
    homepage "https://code.visualstudio.com/"

    if MacOS.prefer_64_bit?
        url "https://az764295.vo.msecnd.net/stable/9e4e44c19e393803e2b05fe2323cf4ed7e36880e/code-stable-code_1.6.1-1476373175_amd64.tar.gz"
        sha256 "d1e0c06924542dd068d18f2f6fd4e343b134677ee44c229b72c4c01810886b16"
    else
        url "https://az764295.vo.msecnd.net/stable/9e4e44c19e393803e2b05fe2323cf4ed7e36880e/code-stable-code_1.6.1-1476372351_i386.tar.gz"
        sha256 "7e479abbfc5d465a84933532501cd1ca0eb7f7062ef8a4455bf2521735417aaa"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/code" => "code"})
    end
end
