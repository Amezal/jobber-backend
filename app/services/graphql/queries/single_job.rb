# frozen_string_literal: true

module Graphql
  module Queries
    module SingleJob
      def variables
        {
          id: params[:id],
        }
      end

      SingleJobQuery = JobberAppTemplateRailsApi::Client.parse(<<~'GRAPHQL')
        query(
          $id: EncodedId!
        ) {
          job(id: $id) {
            id
            title
            client {
              name
            }
            startAt
            endAt
            jobNumber
          }
        }
      GRAPHQL
    end
  end
end