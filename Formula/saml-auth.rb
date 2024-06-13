class SamlAuth < Formula
    desc "SamlAuth for AWS SAML authentication and EKS management"
    homepage "https://github.com/FathAllaTechOps/saml-auth"
    url "https://github.com/FathAllaTechOps/saml-auth/archive/v5.0.1.tar.gz"
    sha256 "268a53393f3a198790e201eab9b645cc99923868cd91ac106a10c04ca4e8057a"
    version "v5.0.1"
  
    def install
      bin.install "bin/saml.sh" => "saml"
      bin.install "bin/eks.sh" => "eks"
    end
  
    test do
      system "#{bin}/saml", "--help"
      system "#{bin}/eks", "--help"
    end
  end
  