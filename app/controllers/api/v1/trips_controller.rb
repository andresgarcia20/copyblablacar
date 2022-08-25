module Api
  module V1
    class TripsController < ApplicationController
      before_action :set_headers

      def index
        trips = Trip.all
        render json: trips.to_json, status: :ok
      end

      private

      def set_headers
        response.headers["Content-Type"] = "application/vnd.api+json"
      end
    end
  end
end
