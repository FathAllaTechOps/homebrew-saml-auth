class SamlAuth < Formula
    desc "SamlAuth for AWS SAML authentication and EKS management"
    homepage "https://github.com/FathAllaTechOps/saml-auth"
    url "https://github.com/FathAllaTechOps/saml-auth/archive/v3.0.0.tar.gz"
    sha256 "9538c4f8bd98215b7b50b5e25862eb64849d0ad461c1510ac409afa0cd4b3ae4"
    version "v3.0.0"
  
    def install
      bin.install "bin/saml.sh" => "saml"
      bin.install "bin/eks.sh" => "eks"
    end
  
    test do
      system "#{bin}/saml", "--help"
      system "#{bin}/eks", "--help"
    end
  end
  