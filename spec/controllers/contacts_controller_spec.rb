require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Contact. As you add validations to Contact, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip()
  }

  let(:invalid_attributes) {
    skip()
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContactsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      contact = Contact.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      contact = Contact.create! valid_attributes
      get :show, params: {id: contact.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Contact" do
        expect {
          post :create, params: {contact: valid_attributes}, session: valid_session
        }.to change(Contact, :count).by(1)
      end

      it "renders a JSON response with the new contact" do

        post :create, params: {contact: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(contact_url(Contact.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new contact" do

        post :create, params: {contact: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("")
      }

      it "updates the requested contact" do
        contact = Contact.create! valid_attributes
        put :update, params: {id: contact.to_param, contact: new_attributes}, session: valid_session
        contact.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the contact" do
        contact = Contact.create! valid_attributes

        put :update, params: {id: contact.to_param, contact: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the contact" do
        contact = Contact.create! valid_attributes

        put :update, params: {id: contact.to_param, contact: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested contact" do
      contact = Contact.create! valid_attributes
      expect {
        delete :destroy, params: {id: contact.to_param}, session: valid_session
      }.to change(Contact, :count).by(-1)
    end
  end

end
