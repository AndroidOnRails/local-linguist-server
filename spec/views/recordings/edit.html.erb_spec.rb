require 'rails_helper'

RSpec.describe 'recordings/edit', type: :view do
  before(:each) do
    @recording = assign(:recording, Recording.create!(
      :audio => '',
      :interview => FactoryBot.create(:interview),
      :phrase => FactoryBot.create(:phrase)
    ))
  end

  it 'renders the edit recording form' do
    render

    assert_select 'form[action=?][method=?]', recording_path(@recording), 'post' do

      assert_select 'input#recording_audio[name=?]', 'recording[audio]'

      assert_select 'select#recording_interview_id[name=?]', 'recording[interview_id]'

      assert_select 'select#recording_phrase_id[name=?]', 'recording[phrase_id]'
    end
  end
end
