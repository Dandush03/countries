require 'yaml'

def transform_data(data)
  result = {}
  result['name'] = { 'en' => data['name'] }
  result['official_name'] = { 'en' => data['official_name'] }
  result['code2l'] = data['code2l']
  result['code3l'] = data['code3l']
  result['svg_flag'] = data['svg_flag']
  result['phone_code'] = data['phone_code']
  result['time_zone_identifier'] = data['time_zone_identifier']
  result['phone_regex_pattern'] = data['phone_regex_pattern']
  result['continent'] = data['continent']
  result['region'] = data['region']

  data['translations'].each do |lang, translation|
    result['name'][lang] = translation['name']
    result['official_name'][lang] = translation['official_name']
  end

  result
end

# Load the country list
countries = YAML.load_file('countries.yml')

# Transform the data
mobility_country_list = countries.each_with_object({}) do |(key, value), hash|
  hash[key] = transform_data(value)
end

# Save the data in mobility_jsonb_countries.yml
File.open('mobility_jsonb_countries.yml', 'w') { |f| f.write(mobility_country_list.to_yaml) }
