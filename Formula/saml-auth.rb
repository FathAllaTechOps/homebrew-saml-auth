class SamlAuth < Formula
    desc "SamlAuth for AWS SAML authentication and EKS management"
    homepage "https://github.com/FathAllaTechOps/saml-auth"
    url "https://github.com/FathAllaTechOps/saml-auth/archive/v3.0.0.tar.gz"
    sha256 "88644e344eff213e689c2b42e81aa82f1c0b01f595a2b646665ddb7b55429f69"
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
  