local http = require("socket.http")

local function fetch_data(url)
	local response, code, headers, status = http.request(url)

	if response then
		return response, code, headers
	else
		print("error..." .. status)
		return nil
	end
end

return {
	fetch_data = fetch_data,
}
