local api = require("http.api")
local json = require("dkjson")

local body, code, headers = api.fetch_data("https://jsonplaceholder.typicode.com/todos/1")

if body then
	print("Status Code: " .. code)
	print("Headers: ", headers)
	local data = json.decode(body)
	print(data["title"])
end
