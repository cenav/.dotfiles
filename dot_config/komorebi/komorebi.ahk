#SingleInstance Force

; Load library
#Include komorebic.lib.ahk

; Focus windows
#Left::Focus("left")
#Down::Focus("down")
#Up::Focus("up")
#Right::Focus("right")
; #{::CycleFocus("previous")
; #}::CycleFocus("next")

; Move windows
#+Left::Move("left")
#+Down::Move("down")
#+Up::Move("up")
#+Right::Move("right")
#+Enter::Promote()

; Stack windows
^+#Left::Stack("left")
^+#Right::Stack("right")
^+#Up::Stack("up")
^+#Down::Stack("down")
^#;::Unstack()
^#[::CycleStack("previous")
^#]::CycleStack("next")

; Resize
^#=::ResizeAxis("horizontal", "increase")
^#-::ResizeAxis("horizontal", "decrease")
^#+=::ResizeAxis("vertical", "increase")
^#+-::ResizeAxis("vertical", "decrease")

; Manipulate windows
^#t::ToggleFloat()
^#+f::ToggleMonocle()

; Window manager options
^#+r::Retile()
^#p::TogglePause()

; Layouts
#x::FlipLayout("horizontal")
#y::FlipLayout("vertical")

; Monitors
#+6::CycleMonitor("previous")
#+4::CycleMonitor("next")

#+3::CycleMoveToMonitor("previous")
#+8::CycleMoveToMonitor("next")

; Target Monitor
; #^1::FocusMonitor(0)
; #^2::FocusMonitor(1)
; #^3::FocusMonitor(2)

; Move windows across monitors
; #^+1::MoveToMonitor(0)
; #^+2::MoveToMonitor(1)
; #^+3::MoveToMonitor(2)

; Workspaces
#+=::FocusWorkspace(0)
#[::FocusWorkspace(1)
#{::FocusWorkspace(2)
#+9::FocusWorkspace(3)
#+5::FocusWorkspace(4)

#p::FocusLastWorkspace()

; Move windows across workspaces
#1::MoveToWorkspace(0)
#2::MoveToWorkspace(1)
#3::MoveToWorkspace(2)
#4::MoveToWorkspace(3)
#5::MoveToWorkspace(4)
