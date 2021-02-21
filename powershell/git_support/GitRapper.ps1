# gitをラップしたクラス
class GitRapper {
    # コマンド名
    [String] $m_commandName = "git"

    GitRapper() {
    }

    # 実行
    [int] ExecAdd($in_path) {
        $proc = Start-Process -FilePath $this.m_commandName -ArgumentList "add `"${in_path}`"" -NoNewWindow -Wait
        return $proc.ExitCode
    }
    [int] ExecCommit($in_path, $in_comment) {
        $proc = Start-Process -FilePath $this.m_commandName -ArgumentList "commit `"${in_path}`" -m `"${in_comment}`"" -NoNewWindow -Wait
        return $proc.ExitCode
    }
}