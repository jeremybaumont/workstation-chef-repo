
# This role has no run list as it is included for its attributes in
# the OS specific roles (mac_os_x or ubuntu) that I use.

# If you're using the sudo cookbook, it can use these attributes for
# USERNAME
override['authorization'] = {
	"sudo" => {
		"groups" => ["admin", "wheel"],
		"users" => ["jbaumont"],
		"passwordless" => true
	}
}

# I use Fletcher Nicol's ruby_build and rbenv cookbooks with these
# attributes. Adjust values to taste, and modify the RubyGems to
# install if you wish.
# Because I use Opscode's "git" cookbook which installs git as an OS
# X package, I set the install_pkgs array to empty so it doesn't try
# to install Git (via homebrew).
override['ruby_build'] = {
    "git_ref" => "v20141028",
    "upgrade" => true,
    "install_pkgs" => []
}

override['rbenv'] = {
    "install_pkgs" => [],
    # The version of Ruby should match across all of rubies, global,
    # and the keys of the gems hash.
    "user_installs" => [
      {
        "user" => "jbaumont",
        "rubies" => ["2.1.1"],
        "global" => "2.1.1",
        "gems" => {
          "2.1.1" => [
            # RubyGems
            {"name" => "bundler", "version" => "1.7.4"},
            {"name" => "gem-man"},
            {"name" => "gemcutter"},
            {"name" => "jeweler"},
            {"name" => "rake"},
            # Documentation
            {"name" => "awesome_print"},
            {"name" => "bluecloth"},
            {"name" => "kramdown"},
            {"name" => "org-ruby"},
            {"name" => "prawn"},
            {"name" => "ronn"},
            {"name" => "sdoc"},
            # Git/GitHub
            {"name" => "gist"},
            {"name" => "git"},
            {"name" => "git-up"},
            {"name" => "github"},
            {"name" => "github_api"},
            {"name" => "grit"},
            {"name" => "hub"},
            # Tools
            {"name" => "cheat"},
            {"name" => "ghost"},
            {"name" => "net-sftp"},
            {"name" => "net-ssh-multi"},
            {"name" => "pry"},
            {"name" => "ubuntu_ami"},
            {"name" => "vagrant"},
          ]
        }
      }
    ]
  }

