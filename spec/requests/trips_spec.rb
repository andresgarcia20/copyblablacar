require "rails_helper"

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/trips", type: :request do

  # This should return the minimal set of attributes required to create a valid
  # Trip. As you add validations to Trip, be sure to
  # adjust the attributes here as well.
  include ActiveSupport::Testing::TimeHelpers
  before { travel_to Time.zone.local(2022, 06, 28) }
  let(:user) { create(:user) }
  let(:vehicle) { create(:vehicle, user: user) }
  let(:trip) {
    sign_in user
    create(:trip, user: user, vehicle: vehicle)
  }
  let(:valid_attributes) { attributes_for(:trip, user_id: user.id, vehicle_id: vehicle.id) }
  let(:invalid_attributes) { { "id" => 2 } }

  describe "GET /index" do
    it "renders a successful response" do
      trip
      get trips_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      get trip_url(trip)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      sign_in user
      get new_trip_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      get edit_trip_url(trip)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Trip" do
        expect {
          sign_in user
          post trips_url, params: { trip: valid_attributes }
        }.to change(Trip, :count).by(1)
      end

      it "redirects to the created trip" do
        sign_in user
        post trips_url, params: { trip: valid_attributes }
        expect(response).to redirect_to(trip_url(Trip.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Trip" do
        sign_in user
        expect {
          post trips_url, params: { trip: invalid_attributes }
        }.to change(Trip, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        sign_in user
        post trips_url, params: { trip: invalid_attributes }
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        { origin: "salamanca",
          destinations: ["Cuenca", "Valencia"],
          available_seats: 1,
          departure_date: "2022-06-29 12:00:00" }
      }

      it "updates the requested trip" do
        sign_in user
        patch trip_url(trip), params: { trip: new_attributes }
        trip.reload
        expect(trip.origin).to eq("salamanca")
      end

      it "redirects to the trip" do
        sign_in user
        patch trip_url(trip), params: { trip: new_attributes }
        trip.reload
        expect(response).to redirect_to(trip_url(trip))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        patch trip_url(trip), params: { trip: invalid_attributes }
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested trip" do
      trip
      expect {
        delete trip_url(trip)
      }.to change(Trip, :count).by(-1)
    end

    it "redirects to the trips list" do
      delete trip_url(trip)
      expect(response).to redirect_to(trips_url)
    end
  end
end
