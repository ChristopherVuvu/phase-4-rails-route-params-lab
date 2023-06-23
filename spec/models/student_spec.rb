require 'rails_helper'

RSpec.describe "Students", type: :request do
  let!(:student1) { Student.create(first_name: "John", last_name: "Mutuku", grade: 79) }
  let!(:student2) { Student.create(first_name: "Jane", last_name: "Kamau", grade: 92) }

  #get the first student using http status from json
  describe "GET /students/:id" do
    it "returns information on the first student" do
      get "/students/#{student1.id}"
      expect(response).to have_http_status(200)
      expect(response.body).to eq(student1.to_json)
    end

    #get the second student using http status from json
    it "returns information on the second student" do
      get "/students/#{student2.id}"
      expect(response).to have_http_status(200)
      expect(response.body).to eq(student2.to_json)
    end
  end

  #get the all students using http status from json
  describe "GET /students" do
    it "returns an array of all students" do
      get "/students"
      expect(response).to have_http_status(200)
      expect(response.body).to eq([student1, student2].to_json)
    end
  end
end







