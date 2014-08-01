Write a Ruby script to download the top 20 most expensive sales and rentals in Soho from streeteasy.com and produce a json file containing that data.

Data inside the json file should have a format similar to:

```ruby

	[{
		'listing_class': 'Sale',
		'address': '13 Crosby Street',
		'unit': 'Floor 2',
		'url': 'http://streeteasy.com/nyc/sale/1234567',
		'price': 55000000
	}]
```




```ruby

require 'rest_client'

%w(rentals sales).each do |end_point|
  url = "http://www.streeteasy.com/nyc/api/#{end_point}/search"
  params = {:id=>"soho", :format=>"json", :key=>'5e2afe87af0c29006f368bf94b673fcdfe381df9'}
  response = JSON.parse(RestClient.get url, {:params => params})
  rs = response['listings'].map do |listing|
    {
      'listing_class' => end_point.capitalize,
      'address'       => listing['addr_street'],
      'unit'          => listing['addr_unit'],
      'url'           => listing['url'],
      'price'         => listing['price']
    }
  end

  File.open("#{end_point}.json", "w") do |f|
    f.write(rs.to_json)
  end
end
```
