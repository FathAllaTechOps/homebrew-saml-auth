class SamlAuth < Formula
    desc "SamlAuth for AWS SAML authentication and EKS management"
    homepage "https://github.com/FathAllaTechOps/saml-auth"
    url "https://github.com/FathAllaTechOps/saml-auth/archive/v2.0.0.tar.gz"
    sha256 "5edc4da3effa2131c24103e23f508a87fb2177cad26722ede09ef9893ed0bbce"
    version "v2.0.0"
  
    def install
      bin.install "saml.sh" => "saml"
      bin.install "eks.sh" => "eks"
    end
  
    test do
      system "#{bin}/saml", "--help"
      system "#{bin}/eks", "--help"
    end
  end
  