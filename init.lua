local function add_component(name)
    name = component.list(name)()
    if name then
        return component.proxy(name)
    end
end

local comp = add_component("component")
local robot = add_component("robot")
local side = add_component("sides")
local filesystem = add_component("filesystem")

local logfile = "/mnt/f87/output.log"
local file, err = io.open(logfile, "a")

if not file then
    error("Failed to open log file:" .. err)
end

io.output(file)

print("Hello, world ")

io.close(file)
