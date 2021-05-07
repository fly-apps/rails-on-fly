# Global Rails on Fly

This is a PostgreSQL backed Rails app that runs in multiple regions. It serves requests that only read from the database from local database replicas, and uses the `fly-replay` header to replay write requests to the primary region.