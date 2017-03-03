module LogAnalyzer
  class CLI < Thor
    include Thor::Actions

    TIME_FORMAT = "%Y%m%d%H%M%S".freeze

    def self.source_root
      File.expand_path("../generators/templates", __FILE__)
    end

    desc "install", "generate directory structure and schema templates"
    def install
      empty_directory "db"
      empty_directory "db/migrate"

      now = Time.now.strftime(TIME_FORMAT)
      template "db/migrate/create_logs.rb", "db/migrate/#{now}_create_logs.rb"
    end
  end
end
