# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rubocop/rake_task'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = ['--display-cop-names']
end
desc 'install package and retest'
task :test do
  %w[
    install
    rubocop
    spec
  ].each do |subtask|
    Rake::Task[subtask]
      .invoke
  end
end
task default: :test
