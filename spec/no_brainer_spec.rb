require 'models'
require 'example_app_shared'

NoBrainer.configure do |config|
  config.rethinkdb_url = 'rethinkdb://localhost/orm_adapter_spec'
  # We don't care about this data. We do care about speed.
  config.durability = :soft
end

describe NoBrainer::Document::OrmAdapter do
  before do
    User.destroy_all
    Note.destroy_all
  end
  
  it_should_behave_like "example app with orm_adapter" do
    let(:user_class) { User }
    let(:note_class) { Note }
  end
end
