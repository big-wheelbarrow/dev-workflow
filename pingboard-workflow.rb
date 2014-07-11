require 'formula'

class PingboardWorkflow < Formula
  homepage 'https://github.com/pingboard/git-pivotal-workflow'
  head 'https://github.com/pingboard/git-pivotal-workflow.git'

  depends_on 'git-flow-avh'
  depends_on 'pivotal-tracker' => :ruby
  
  def install
    bin.install 'git-pivotal'
  end

  def caveats
    "You should now system link your .git/hooks directory in your Pingboard code base to ..."
  end
end

