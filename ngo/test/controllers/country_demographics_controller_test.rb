require "test_helper"

class CountryDemographicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @country_demographic = country_demographics(:one)
  end

  test "should get index" do
    get country_demographics_url
    assert_response :success
  end

  test "should get new" do
    get new_country_demographic_url
    assert_response :success
  end

  test "should create country_demographic" do
    assert_difference("CountryDemographic.count") do
      post country_demographics_url, params: { country_demographic: { birthrate: @country_demographic.birthrate, gdp: @country_demographic.gdp, healthexpenditurepercapita: @country_demographic.healthexpenditurepercapita, healthexpenditureppercentgdp: @country_demographic.healthexpenditureppercentgdp, lifeexpectancy: @country_demographic.lifeexpectancy, mobilephones: @country_demographic.mobilephones, mortalityunder5: @country_demographic.mortalityunder5, name: @country_demographic.name, population: @country_demographic.population, populationurban: @country_demographic.populationurban } }
    end

    assert_redirected_to country_demographic_url(CountryDemographic.last)
  end

  test "should show country_demographic" do
    get country_demographic_url(@country_demographic)
    assert_response :success
  end

  test "should get edit" do
    get edit_country_demographic_url(@country_demographic)
    assert_response :success
  end

  test "should update country_demographic" do
    patch country_demographic_url(@country_demographic), params: { country_demographic: { birthrate: @country_demographic.birthrate, gdp: @country_demographic.gdp, healthexpenditurepercapita: @country_demographic.healthexpenditurepercapita, healthexpenditureppercentgdp: @country_demographic.healthexpenditureppercentgdp, lifeexpectancy: @country_demographic.lifeexpectancy, mobilephones: @country_demographic.mobilephones, mortalityunder5: @country_demographic.mortalityunder5, name: @country_demographic.name, population: @country_demographic.population, populationurban: @country_demographic.populationurban } }
    assert_redirected_to country_demographic_url(@country_demographic)
  end

  test "should destroy country_demographic" do
    assert_difference("CountryDemographic.count", -1) do
      delete country_demographic_url(@country_demographic)
    end

    assert_redirected_to country_demographics_url
  end
end
