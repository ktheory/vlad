require 'test/vlad_test_case'
require 'vlad'
require 'vlad/git'

class TestVladGit < VladTestCase
  def setup
    super
    @scm = Vlad::Git.new
    set :repository, "git@myhost:/home/john/project1"
  end

  # Checkout the way the default :update task invokes the method
  def test_checkout
    cmd = @scm.checkout 'head', '/the/scm/path'
    assert_equal 'if [ -d /the/scm/path/repo/.git ]; then cd /the/scm/path/repo && git fetch ; else git clone git@myhost:/home/john/project1 /the/scm/path/repo; fi && cd /the/scm/path/repo && git reset --hard origin/HEAD', cmd
  end

  # This is not how the :update task invokes the method
  def test_checkout_revision
    # Checkout to the current directory
    cmd = @scm.checkout 'master', '.'
    assert_equal 'if [ -d ./repo/.git ]; then cd ./repo && git fetch ; else git clone git@myhost:/home/john/project1 ./repo; fi && cd ./repo && git reset --hard master', cmd

    # Checkout to a relative path
    cmd = @scm.checkout 'master', 'some/relative/path'
    assert_equal 'if [ -d some/relative/path/repo/.git ]; then cd some/relative/path/repo && git fetch ; else git clone git@myhost:/home/john/project1 some/relative/path/repo; fi && cd some/relative/path/repo && git reset --hard master', cmd
  end

  def test_export
    cmd = @scm.export 'master', 'the/release/path'
    assert_equal 'mkdir -p the/release/path && git archive --format=tar master| (cd the/release/path && tar xf -)', cmd
  end

  def test_revision
    ['head', 'HEAD'].each do |head|
      cmd = @scm.revision(head)
      expected = "`git rev-parse HEAD`"
      assert_equal expected, cmd
    end
  end
end
