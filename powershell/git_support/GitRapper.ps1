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
    [int] ExecCommit($in_comments) {
        $comment = ""
        foreach ($c in $in_comments) {
            $comment = "${comment} -m `"${c}`""
        }
        $proc = Start-Process -FilePath $this.m_commandName -ArgumentList "commit ${comment}" -NoNewWindow -Wait
        return $proc.ExitCode
    }
}