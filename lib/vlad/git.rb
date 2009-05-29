class Vlad::Git

  set :source, Vlad::Git.new
  set :git_cmd, "git"

  ##
  # Returns the command that will check out +revision+ from the
  # repository into directory +destination+.  +revision+ can be any
  # SHA1 or equivalent (e.g. branch, tag, etc...)

  def checkout(revision, destination)
    destination = File.join(destination, 'repo')
    revision = 'origin/HEAD' if revision =~ /head/i

    [ "if [ -d #{destination}/.git ]; then cd #{destination} && git fetch ; else git clone #{repository} #{destination}; fi",
      "cd #{destination}",
      "git reset --hard #{revision}"
    ].join(" && ")
  end

  ##
  # Returns the command that will export +revision+ from the current directory
  # into the directory +destination+.
  # Expects to be run from +scm_path+ after Vlad::Git#checkout

  def export(revision, destination)
    revision = 'origin/HEAD' if revision =~ /head/i

    [ "mkdir -p #{destination}",
      "#{git_cmd} archive --format=tar #{revision}| (cd #{destination} && tar xf -)",
    ].join(" && ")
  end

  ##
  # Returns a command that maps human-friendly revision identifier +revision+
  # into a git SHA1.

  def revision(revision)
    revision = 'HEAD' if revision =~ /head/i

    "`#{git_cmd} rev-parse #{revision}`"
  end
end
