class Wgo < Formula
  desc "类 IPython 的 Golang 交互运行工具"
  homepage "https://github.com/wxnacy/wgo"
  license "MIT"
  head "https://github.com/wxnacy/wgo.git", branch: "master"

  depends_on "go" => :build

  def install
    # 生成内置函数文件
    system "go", "run", "./scripts/release_builtin_func/main.go"
    # 构建二进制
    system "go", "build", *std_go_args(output: bin/"wgo"), "./cmd/wgo"
  end

  def caveats
    <<~EOS
      - 代码补全依赖 gopls：
          brew install gopls
        或
          go install golang.org/x/tools/gopls@latest
      - 自动导入/格式化依赖 goimports：
          go install golang.org/x/tools/cmd/goimports@latest
    EOS
  end

  test do
    assert_match "wgo", shell_output("#{bin}/wgo -h")
  end
end
