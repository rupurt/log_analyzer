require "active_support/core_ext/module/delegation"
require "active_record"
require "thor"
require "scenic"
require "standalone_migrations"

require "log_analyzer/version"
require "log_analyzer/cli"

module LogAnalyzer
end

Scenic.load
