# frozen_string_literal: true

json.array! @daily_entries, partial: 'daily_entries/daily_entry', as: :daily_entry
