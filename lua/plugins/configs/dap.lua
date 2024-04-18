local dap = require("dap")
dap.configurations.rust = {
    {
        name = "hello-world",
        type = "lldb",
        request = "launch",
        program = function()
            return vim.fn.getcwd() .. "/target/debug/hello-world"
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
    },
    {
        name = "hello-dap",
        type = "lldb",
        request = "launch",
        program = function()
            return vim.fn.getcwd() .. "/target/debug/hello-dap"
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
    },
}
