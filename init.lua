-- For all nvim settings that are personal
require("drod")

-- For all nvim settings that are specific to Intel workflows
if (os.getenv("USER") == "dtrodrig") then
    require("intel")
end
