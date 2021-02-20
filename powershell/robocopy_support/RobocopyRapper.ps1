# robocopyをラップしたクラス
class RobocopyRapper {
    # コマンド名
    [String] $m_commandName = "robocopy"

    # 実行した際のプロセス
    [System.Diagnostics.Process] $m_process = $null

    RobocopyRapper() {
    }

    # 実行
    [int] Exec($in_src, $in_dst) {
        $proc = Start-Process -FilePath $this.m_commandName -ArgumentList "`"${in_src}`" `"${in_dst}`"" -NoNewWindow -Wait
        return $proc.ExitCode
    }
    [int] ExecMir($in_src, $in_dst) {
        $proc = Start-Process -FilePath $this.m_commandName -ArgumentList "`"${in_src}`" `"${in_dst}`" /MIR" -NoNewWindow -Wait
        return $proc.ExitCode
    }
}