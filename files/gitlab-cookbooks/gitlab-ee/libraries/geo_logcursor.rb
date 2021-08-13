module GeoLogcursor
  class << self
    def parse_variables
      parse_gitlab_cluster_overrides
    end

    private

    # GitLab cluster settings overrides setttings from /etc/gitlab/gitlab.rb
    def parse_gitlab_cluster_overrides
      GitlabCluster.config.merge!('geo_logcursor', 'enable')
    end
  end
end
