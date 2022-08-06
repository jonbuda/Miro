# frozen_string_literal: true

require_relative "spec_helper"

RSpec.describe Miro do
  describe ".configuration" do
    it "has default configuration" do
      expect(Miro.configuration.image_magick_path).to eq(`which convert`.strip)
      expect(Miro.configuration.color_count).to eq(8)
      expect(Miro.configuration.resolution).to eq("150x150")
    end

    it "can override the default configuration" do
      Miro.configuration.image_magick_path = "/path/to/command"
      expect(Miro.configuration.image_magick_path).to eq("/path/to/command")
    end
  end
end
