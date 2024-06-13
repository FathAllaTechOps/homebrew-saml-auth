class SamlAuth < Formula
    desc "SamlAuth for AWS SAML authentication and EKS management"
    homepage "https://github.com/FathAllaTechOps/saml-auth"
    url "https://github.com/FathAllaTechOps/saml-auth/archive/v7.0.0.tar.gz"
    sha256 "f4376ddf8dd426a0634378cf79f602318ed340996b6724ea7208c80c7304f3ac"
    version "v7.0.0"
  
    def install
      bin.install "bin/saml.sh" => "saml"
      bin.install "bin/eks.sh" => "eks"
    end
  
    test do
      system "#{bin}/saml", "--help"
      system "#{bin}/eks", "--help"
    end
  end
  
