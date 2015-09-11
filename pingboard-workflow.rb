require 'formula'

class PingboardWorkflow < Formula
  homepage 'https://github.com/pingboard/dev-workflow'
  head 'https://github.com/pingboard/dev-workflow.git'

  depends_on 'git-flow-avh'
  depends_on 'pivotal-tracker' => :ruby
  depends_on 'phantomjs'
  depends_on 'postgresql'
  depends_on 'redis'
  depends_on 'elasticsearch'
  depends_on 'overcommit' => :ruby
  
  def install
    bin.install 'git-pivotal'
    share.install 'hooks'
  end

  def caveats
    s = <<-EOS.undent
      Add your personal pivotal token and the Pingboard project id to the git config

        git config --add pivotal.token PIVOTAL_TOKEN
        git config --add pivotal.project-id PIVOTAL_PROJECT_ID

      Next system link the .git/hooks directory in your Pingboard code base.

        ln -s #{opt_prefix}/share/hooks CODBASE_PATH/pingboard/.git/hooks
    EOS
  end
end

