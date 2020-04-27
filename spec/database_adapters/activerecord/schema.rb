# frozen_string_literal: true

require_relative 'activerecord'

ActiveRecord::Schema.define do
  self.verbose = false

  create_table :teams, force: true do |t|
    t.string :team_id
    t.string :name
    t.string :domain
    t.string :token
    t.string :bot_user_id
    t.string :activated_user_id
    t.string :activated_user_access_token
    t.boolean :active, default: true
    t.timestamps

    # slack-ruby-bot-server-stripe

    t.string :stripe_customer_id
    t.boolean :subscribed, default: false
    t.timestamp :subscribed_at
    t.timestamp :subscription_expired_at
    t.timestamp :trial_informed_at
    t.timestamp :subscription_past_due_at
    t.timestamp :subscription_past_due_informed_at
  end
end
