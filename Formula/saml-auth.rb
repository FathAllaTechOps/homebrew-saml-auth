class SamlAuth < Formula
    desc "SamlAuth for AWS SAML authentication and EKS management"
    homepage "https://github.com/FathAllaTechOps/saml-auth"
    url "https://github.com/FathAllaTechOps/saml-auth/archive/v5.0.0.tar.gz"
    sha256 "04340f7fe88966e339f9c692c61fdb38c69d6aa5673dbd222e91c6dc17c33074"
    version "v5.0.0"
  
    def install
      bin.install "bin/saml.sh" => "saml"
      bin.install "bin/eks.sh" => "eks"
    end
  
    test do
      system "#{bin}/saml", "--help"
      system "#{bin}/eks", "--help"
    end
  end
  