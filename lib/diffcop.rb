require 'diffcop/version'

module Diffcop
  # Execute Rubocop to git diff
  class Executor
    def execute
      diff_rb_files = rb_files(diff_files)
      if diff_rb_files == ''
        puts 'No diff from master branch.'
      else
        puts `bundle exec rubocop -a #{diff_rb_files}` if diff_rb_files != ''
      end
    end

    private

    def diff_files
      `git diff --name-only HEAD master`
    end

    def rb_files(diff_files)
      diff_files.split('\n').grep(%r{^app/.*(\.rb)$}).join(' ')
    end
  end
end
