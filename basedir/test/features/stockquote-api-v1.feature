Feature: StockQuote API (V1)

Scenario: Get All StockQuotes - Success
	Given I set authorization header to `accesstoken`
	When I GET /all
	Then response code should be 200
	And response body should be valid json

Scenario: Get unknown StockQuotes - Resource Not Found
	Given I set authorization header to `accesstoken`
	When I GET /xxx
	Then response code should be 404

Scenario: Get All StockQuotes - Unauthorized
	When I GET /all
	Then response code should be 401
	And response body should be valid json
	
