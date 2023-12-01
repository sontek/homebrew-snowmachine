class Snowmachine < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage ""
  url "https://files.pythonhosted.org/packages/1a/9c/96e7e4857f72ecc5c0314ac87fec7594d2b04c58524bff15eebf01ca94cb/snowmachine-2.0.0.tar.gz"
  sha256 "53839587834d4cbcab06256cc66e7ca89ec089fcec68439464fc6a7e59a26e8d"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
