require '../spec_helper'
require '../features/on_boarding_spec'
require 'rspec'
require 'appium_lib'
require 'rubygems'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest/element/text'

describe 'Onboarding Screen to orientate new users and returning users to app' do

  it 'The app opens, the on boarding screen will display and I confirm the page has a skip button' do
    expect($driver.find_element(accessibility_id: 'Skip').text).to eq('Skip')
  end

  it 'I will swipe to the next page' do
   Appium::TouchAction.new.swipe(start_x: 0.99, start_y: 0.5, offset_x: 0.01, offset_y: 0.5, duration:600).perform
  end

  it 'I confirm the second page has a skip button' do
    expect($driver.find_element(accessibility_id: 'Skip').text).to eq('Skip')
  end

  it 'I will swipe to the next page' do
    Appium::TouchAction.new.swipe(start_x: 0.99, start_y: 0.5, offset_x: 0.01, offset_y: 0.5, duration:600).perform
  end

  it 'I confirm the second page has a skip button' do
    expect($driver.find_element(accessibility_id: 'Skip').text).to eq('Skip')
  end

  it 'I will swipe to the next page' do
    Appium::TouchAction.new.swipe(start_x: 0.99, start_y: 0.5, offset_x: 0.01, offset_y: 0.5, duration:600).perform
  end

  it 'I confirm the second page has a skip button' do
    expect($driver.find_element(accessibility_id: 'Skip').text).to eq('Skip')
  end

  it 'I will swipe to the next page' do
    Appium::TouchAction.new.swipe(start_x: 0.99, start_y: 0.5, offset_x: 0.01, offset_y: 0.5, duration:600).perform
  end

  it 'I confirm the fifth page has a Done button' do
    expect($driver.find_element(accessibility_id: 'Done').text).to eq('Done')
  end

  it 'I will click on the Done button' do
    $driver.find_element(accessibility_id: 'Done').click
  end

  it 'I will be taken the the main map launch page' do
    expect($driver.find_element(accessibility_id: 'Map').text).to eq('Map')
  end
end