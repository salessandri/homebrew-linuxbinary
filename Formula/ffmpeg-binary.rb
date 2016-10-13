class FfmpegBinary < Formula
    desc "FFmpeg Static Builds."
    homepage "http://johnvansickle.com/ffmpeg/"
    version :latest
    sha256 :no_check

    if MacOS.prefer_64_bit?
        url "http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz"
    else
        url "http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-32bit-static.tar.xz"
    end

    bottle :unneeded
    conflicts_with "ffmpeg"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/ffmpeg")
        bin.install_symlink("#{libexec}/ffmpeg-10bit")
        bin.install_symlink("#{libexec}/ffprobe")
        bin.install_symlink("#{libexec}/ffserver")
        bin.install_symlink("#{libexec}/qt-faststart")
    end
end
