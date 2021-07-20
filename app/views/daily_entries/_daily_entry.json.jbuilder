# frozen_string_literal: true

json.extract! daily_entry, :id, :title, :content, :user_id, :created_at, :updated_at
json.url daily_entry_url(daily_entry, format: :json)
