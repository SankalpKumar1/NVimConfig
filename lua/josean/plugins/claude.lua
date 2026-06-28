return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" }, -- Optional: better terminal integration
  opts = {
    -- If 'claude' isn't in your PATH, point directly to the binary
    -- terminal_cmd = "~/.claude/local/claude",
    terminal = {
      split_side = "right",
    },
  },
  config = true,
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
    { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude Code" },
    { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send Selection" },
    { "<leader>ad", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept Claude Diff" },
  },
}
