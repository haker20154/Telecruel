local function run(msg,matches)
if not is_vip_group(msg) then
return "فقط در گروه های vip امکان پذیر است"
end
local url = matches[2]
local file = download_to_file(url,matches[1])
send_document(get_receiver(msg) , file, ok_cb, false)
end
return {
patterns = {
"^[!#/][Dd][Ll][Ff] (.*) (*)$"
},
run = run
}