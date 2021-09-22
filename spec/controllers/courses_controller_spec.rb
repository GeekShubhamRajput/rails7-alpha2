require 'rails_helper'

RSpec.describe "/courses", type: :request do
  
  describe "GET /index" do
    it "renders a successful response" do
      FactoryBot.create(:course)
      get courses_url
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      
      valid_attributes = { title: "English1d6", details: "some detail", tutors_attributes: [{ name: "Shubham12", email: "rajput.shubh1993@gmail.com"}]}

      it "creates a new Course" do
        expect {
          post courses_url, params: { course: valid_attributes }
        }.to change(Course, :count).by(1)
      end

      it "redirects to the courses" do
        post courses_url, params: { course: valid_attributes }
        expect(response.code).to eq("200")
      end
    end
    
    context "with invalid parameters" do
      invalid_attributes = {course: { details: "testung", tutors_attributes: [{ name: "Shubham12", email: "rajput.shubh1993@gmail.com"}]}}
      it "does not create a new Course" do
        expect {
          post courses_url, params: { course: invalid_attributes }
        }.to change(Course, :count).by(0)
      end

      it "returns status 422" do
        post courses_url, params: { course: invalid_attributes }
        expect(response.status).to eql(422)
      end
    end
  end
  
end
