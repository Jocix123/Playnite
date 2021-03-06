using module PSNativeAutomation

class OpenFileWindow : Window
{
    [UIObject]$ButtonOpen
    [UIObject]$ButtonCancel
    [UIObject]$EditFileName

    OpenFileWindow() : base({Get-UIWindow -ProcessName "PlayniteUI" | Get-UIWindow -ControlType "Dialog" -Name "Open"}, "OpenFileWindow")
    {
        $this.ButtonOpen   = [UIObject]::New($this.GetChildReference({Get-UIButton -AutomationId "1" -First}), "ButtonOpen")
        $this.ButtonCancel = [UIObject]::New($this.GetChildReference({Get-UIButton -AutomationId "2" -First}), "ButtonCancel")
        $this.EditFileName = [UIObject]::New($this.GetChildReference({Get-UIEdit -AutomationId "1148" -First}), "EditFileName")
    }
}

return [OpenFileWindow]::New()