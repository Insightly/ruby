require 'spec_helper'

describe Insightly::DSL::TaskCategories do
  # DELETE /v2.1/TaskCategories/{id}
  describe '#delete_task_category' do
    it 'returns a response with code 202' do
      response = Insightly.client.delete_task_category(1)
      expect(response.code).to eq('202')
    end
  end

  # GET /v2.1/TaskCategories

  # GET /v2.1/TaskCategories/{id}
  describe '#get_task_category' do
    it 'returns a task category' do
      expect(Insightly.client.get_task_category(1)).to be_a(Insightly::Resources::TaskCategory)
    end
  end

  # POST /v2.1/TaskCategories

  # PUT /v2.1/TaskCategories
end