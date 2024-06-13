class SamlTools < Formula
    desc "Tools for AWS SAML authentication and EKS management"
    homepage "https://github.com/FathAllaTechOps/saml-auth"
    url "https://github.com/FathAllaTechOps/saml-auth/archive/v1.0.0.tar.gz"
    sha256 "your_tar_gz_sha256_checksum"
    version "1.0.0"
  
    def install
      bin.install "saml.sh" => "saml"
      bin.install "eks.sh" => "eks"
    end
  
    test do
      system "#{bin}/saml", "--help"
      system "#{bin}/eks", "--help"
    end
  end
  