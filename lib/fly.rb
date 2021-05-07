class Fly
  def self.database_url
    r = ENV["FLY_REGION"]

    if r.present?
      url = ENV["DATABASE_URL_#{r.upcase}"]
      return url if url.present?
    end

    ENV["DATABASE_URL"]
  end
end
