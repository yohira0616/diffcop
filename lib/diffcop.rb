require "diffcop/version"

module Diffcop
  def self.execute
    diff_files = `git diff --name-only HEAD master`
    targets = diff_files.split('\n').grep(%r{^app/.*(\.rb)$})
    target_str = targets.join(' ')
    puts `bundle exec rubocop -a #{target_str}` if target_str.present?
  end
end
