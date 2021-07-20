# frozen_string_literal: true

require 'application_system_test_case'

class DailyEntriesTest < ApplicationSystemTestCase
  setup do
    @daily_entry = daily_entries(:one)
  end

  test 'visiting the index' do
    visit daily_entries_url
    assert_selector 'h1', text: 'Daily Entries'
  end

  test 'creating a Daily entry' do
    visit daily_entries_url
    click_on 'New Daily Entry'

    fill_in 'Content', with: @daily_entry.content
    fill_in 'Title', with: @daily_entry.title
    fill_in 'User', with: @daily_entry.user_id
    click_on 'Create Daily entry'

    assert_text 'Daily entry was successfully created'
    click_on 'Back'
  end

  test 'updating a Daily entry' do
    visit daily_entries_url
    click_on 'Edit', match: :first

    fill_in 'Content', with: @daily_entry.content
    fill_in 'Title', with: @daily_entry.title
    fill_in 'User', with: @daily_entry.user_id
    click_on 'Update Daily entry'

    assert_text 'Daily entry was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Daily entry' do
    visit daily_entries_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Daily entry was successfully destroyed'
  end
end
