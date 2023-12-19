require "application_system_test_case"

class CountryDemographicsTest < ApplicationSystemTestCase
  setup do
    @country_demographic = country_demographics(:one)
  end

  test "visiting the index" do
    visit country_demographics_url
    assert_selector "h1", text: "Country demographics"
  end

  test "should create country demographic" do
    visit country_demographics_url
    click_on "New country demographic"

    fill_in "Birthrate", with: @country_demographic.birthrate
    fill_in "Gdp", with: @country_demographic.gdp
    fill_in "Healthexpenditurepercapita", with: @country_demographic.healthexpenditurepercapita
    fill_in "Healthexpenditureppercentgdp", with: @country_demographic.healthexpenditureppercentgdp
    fill_in "Lifeexpectancy", with: @country_demographic.lifeexpectancy
    fill_in "Mobilephones", with: @country_demographic.mobilephones
    fill_in "Mortalityunder5", with: @country_demographic.mortalityunder5
    fill_in "Name", with: @country_demographic.name
    fill_in "Population", with: @country_demographic.population
    fill_in "Populationurban", with: @country_demographic.populationurban
    click_on "Create Country demographic"

    assert_text "Country demographic was successfully created"
    click_on "Back"
  end

  test "should update Country demographic" do
    visit country_demographic_url(@country_demographic)
    click_on "Edit this country demographic", match: :first

    fill_in "Birthrate", with: @country_demographic.birthrate
    fill_in "Gdp", with: @country_demographic.gdp
    fill_in "Healthexpenditurepercapita", with: @country_demographic.healthexpenditurepercapita
    fill_in "Healthexpenditureppercentgdp", with: @country_demographic.healthexpenditureppercentgdp
    fill_in "Lifeexpectancy", with: @country_demographic.lifeexpectancy
    fill_in "Mobilephones", with: @country_demographic.mobilephones
    fill_in "Mortalityunder5", with: @country_demographic.mortalityunder5
    fill_in "Name", with: @country_demographic.name
    fill_in "Population", with: @country_demographic.population
    fill_in "Populationurban", with: @country_demographic.populationurban
    click_on "Update Country demographic"

    assert_text "Country demographic was successfully updated"
    click_on "Back"
  end

  test "should destroy Country demographic" do
    visit country_demographic_url(@country_demographic)
    click_on "Destroy this country demographic", match: :first

    assert_text "Country demographic was successfully destroyed"
  end
end
