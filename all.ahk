; Default state of lock keys
; SetNumlockState, AlwaysOff
; SetCapsLockState, AlwaysOff
; SetScrollLockState, AlwaysOff
; return
; c & d::
; MsgBox "You pressed Numpad1 while holding down Numpad0."
; return
;不添加此行空格键会失效
;space:: Send {Space}

;=================================system command start==========================
#Del::FileRecycleEmpty 	;清空回收站
; space & RShift:: send !{f4}		;关闭窗口
#m:: WinMinimize, A	;窗口最小化
f4:: Winset, Alwaysontop, , A
Shift & Enter::Send {End}{Enter} ;Shift + Enter 另起新行
; ^d:: send {End}+{Home}{Delete}
; ^c:: send {End}+{Home}^c
CapsLock::Ctrl ;CapsLock 映射 Ctrl
^CapsLock::CapsLock     ;Ctrl+CapsLock 触发 CapsLock
!^1::Send "{Volume_Mute}"
!^2::Send "{Volume_Up}"
!^3::Send "{Volume_Down}"
; ^+p:: run notepad
; Space:: send 17600738747
^1::send 17600738747
^2::send 411524199404182012
^3::send {Text}1414680900@qq.com ;{Text}不受输入法中英文影响
^9::send Abc@123456
~c & k::send {Click}
~r & k::send {Click Right}
^Up::WinMaximize, A  ; 最大化活动窗口
^Down::WinRestore, A ; 还原活动窗口
; +1::send,17600738747
; +2::send,1414680900@qq.com
; +3::send,411524199404182012
; ~s & f::send,17600738747
;=================================system command end==========================


;======================HotString start========================================
;第一种是输入很短的字符显示很长的字符(`n是换行的符号)
;::slf::Select * From `nWhere `nAnd `nGroup by `nOrder by `nlimit `n
;::slf:: select * from
::mybatis::MyBatis
::mysql::MySQL
;:*:spring::Spring
:*:linux::Linux
;:*:java::Java
::btw::by the way  ; 当您按下一个默认的结束符时, 用"by the way"替换掉"btw".
:*:make-tree::npx htree -i node_modules --output tree.txt --force
::tk::x-access-token
;======================HotString end==========================================


;===============================run start==========================================
;======================第一种,打开网站(ctrl+shift+?)================================
^+g:: run, https://github.com/ ;打开github
^+b:: run, https://www.bilibili.com/	;打开B站
^+t:: run, http://chenjianyin.com:9100		;todo
; ^+t:: run, http://chenjianyin.com:9100
;^+b:: run, https://www.bilibili.com/	;打开B站
;^+y:: run, https://www.youku.com/	;打开优酷

;======================第二种,启动软件(alt+shift+?)================================
!+a:: run, D:\AnotherRedis\Another Redis Desktop Manager\Another Redis Desktop Manager.exe ;打开AnotherRedisDesktopManager
!+n:: run, D:\Navicat Premium\navicat.exe ;打开Navicat Premium
!+y:: run, D:\YoudaoDict\Dict\YoudaoDict.exe ;打开有道词典
; !+p:: run, C:\Users\overmind\AppData\Local\Postman\Postman.exe ;打开postman
!+i:: run, C:\Users\overmind\scoop\apps\idea-ultimate\2020.3\bin\idea64.exe ;打开IDEA
!+b:: run, D:\BaiduNetDisk\BaiduNetdisk.exe ;打开百度网盘
!+d:: run, C:\Program Files\Docker\Docker\Docker Desktop.exe ;打开Docker Desktop
!+v:: run, D:\VScode\Microsoft VS Code\Code.exe ;打开Visual Studio Code
!+q:: run, D:\QQ\Bin\QQScLauncher.exe ;打开QQ
; ^+o:: run, C:\Users\overmind\scoop\apps\notion\current\Notion.exe
^+o:: run, C:\Users\overmind\AppData\Local\Programs\Notion\Notion.exe
^!l:: run,C:\Users\overmind\scoop\apps\listen1desktop\current\Listen1.exe
; ^+o:: run, C:\Users\overmind\AppData\Local\Programs\Notion\Notion.exe
;^+d::Run "C:\Users\overmind\Downloads" ;打开下载目录
#g:: Run Cmd.exe ;打开cmd
; space & p::run notepad ;打开notepad
;^+c::run,control ;打开控制面板
^+p::run notepad ;打开notepad
;===============================run end==========================================


;=================================windows start=================================
;百度搜索
#1::  			;win+b
	Send ^c   	;输入 ctrl+c
	sleep,100  	;等待100毫秒
	;根据选中的内容打开百度搜索
	run https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=92765401_hao_pg&wd=%clipboard%  
return

;谷歌搜索
#2::
{
 Send, ^c
 Sleep 50
 Run, http://www.google.com/search?q=%clipboard%
 Return
}
;=================================windows end=================================

;=============无敌工作神器之终极计时器===============================
; #+t:: 
; var := 0
; InputBox, time, 请输入一个时间（单位是分）
; time := time*60000
; Sleep,%time%
; loop,16
; {
; var += 180
; SoundBeep, var, 500
; }
; msgbox 时间到，啊啊啊！！！快点!!!!
; return

;=====================鼠标放在任务栏，滚动滚轮实现音量的加减======================
; ~lbutton & enter:: ;
; exitapp  
; ~WheelUp::  
; if (existclass("ahk_class Shell_TrayWnd")=1)  
; Send,{Volume_Up}  
; Return  
; ~WheelDown::  
; if (existclass("ahk_class Shell_TrayWnd")=1)  
; Send,{Volume_Down}  
; Return  
; ~MButton::  
; if (existclass("ahk_class Shell_TrayWnd")=1)  
; Send,{Volume_Mute}  
; Return  

; Existclass(class)  
; {  
; MouseGetPos,,,win  
; WinGet,winid,id,%class%  
; if win = %winid%  
; Return,1  
; Else  
; Return,0  
; }

;========颜色拾取=获取RGB色===================================
#+p::
    MouseGetPos, mouseX, mouseY
    ; 获得鼠标所在坐标，把鼠标的 X 坐标赋值给变量 mouseX ，同理 mouseY
    PixelGetColor, color, %mouseX%, %mouseY%, RGB
    ; 调用 PixelGetColor 函数，获得鼠标所在坐标的 RGB 值，并赋值给 color
    StringRight color,color,6
    ; 截取 color（第二个 color）右边的6个字符，因为获得的值是这样的：#RRGGBB，一般我们只需要 RRGGBB 部分。把截取到的值再赋给 color（第一个 color）。
    clipboard = #%color%	;把 color 的值发送到剪贴板    
    ;msgbox 当前坐标RGB颜色值的十六进制值为#%color%.
return

;========复制当前鼠标所在文件文件名(ctrl+shift+c)================================
^+c::
;请将你的鼠标放在目标文件位置，即将为你复制其文件名
mouseclick, right
send,m
send,^c
send, {enter}
tooltip,已将鼠标所在文件名复制到剪切板
sleep, 1500
tooltip,
return

;========用快捷键得到当前选中文件的路径(ctrl+shift+alt+c)================================
^+!c::
send ^c
sleep,200
clipboard=%clipboard% ;windows 复制的时候，剪贴板保存的是“路径”。只是路径不是字符串，只要转换成字符串就可以粘贴出来了
tooltip,%clipboard% ;提示文本
sleep,500
tooltip,
return

;将鼠标所在文件重命名为剪切板内容
!#+n::
clipboard = %clipboard%   ; 把任何复制的文件, HTML 或其他格式的文本转换为纯文本
send,{F8}
sleep,100
mouseclick, right
send,m
send,^v
send, {enter}
tooltip,已为你将鼠标所在文件重命名为剪切板内容
sleep, 1500
tooltip,
return

;==================无损删除当前行===============
:*:1111::
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
return

;==================无损删除当前行===============
:*:2222::
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
return

;==================无损删除当前行===============
:*:3333::
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
return

;==================键盘秘技之剪切当前行==================
:*:xxxxx::
send,{home}{shiftdown}{end}{shiftup}
send,^x
clipboard = %clipboard%   ; 把任何复制的文件, HTML 或其他格式的文本转换为纯文本
return

::yym::
FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm:ss ; 形式：晏犹眠08月16-11点-43-51短片
SendInput 晏犹眠 %CurrentDateTime% 短片
return

;第二种是输入快捷键显示一段话
;^j::
Send,Hello,大家好,我是晏犹眠 `n谢谢你观看我的视频,如果喜欢请点赞支持一下 `n我跟大家念首诗: `n处穷上策更谁如,日晏犹眠为腹虚
return

;======键盘映射========================================

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
 
;在这里设置快捷键 比如讲小键盘Numpad7 修改成a键可以添加：Numpad7::a
;Numpad7::a
;Numpad8::b
;Numpad9::c

;======重复执行======================================
+^f1::
	Sleep,300
	loop,1000 ;逗号后面的是重复执行次数,我设置了1000,不设置就一直执行
	{
	click
	Sleep,100
	if GetKeyState("f1")
	{
	break
	}
	}
return

;======Click表达式======================================
; !p::
; click, 51,1010
; return

#MaxHotkeysPerInterval 20000


; Ctrl + BackSpace 删除单词
#IF WinActive("ahk_class Notepad")
Ctrl & BackSpace::Send ^+{left}{BackSpace}
#IF

;;;;;;;;;;;;;;;;;;;;;;起始(方向键);;;;;;;;;;;;;;;;;;;;;;;;;;;
#if GetKeyState("Capslock", "P")
k:: SendInput,{Up}     ;长按CapsLock键+k键是方向上键
j:: SendInput,{down}  ;长按CapsLock键+j键是方向下键
h:: SendInput,{left}    ;长按CapsLock键+h键是左键
l:: SendInput,{right}    ;长按CapsLock键+l键是右键

i:: SendInput,{PgUp}    ;长按CapsLock键+i键是上翻页键
m:: SendInput,{PgDn}    ;长按CapsLock键+m键是下翻页键
u:: SendInput,{home}    ;长按CapsLock键+u键是home键
n:: SendInput,{end}    ;长按CapsLock键+n键是end键

;其中的`是转义符号(如下是分号键和引号键)
`;:: SendInput,{backspace}    ;长按CapsLock键+;键是end键
':: SendInput,{delete}    ;长按CapsLock键+'键是end键   
#if
;;;;;;;;;;;;;;;;;;;;;;终止;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;起始(删除一整行Alt键+d键);;;;;;;;;;;;;;;;;;;;;;;;;;;
!d::   
Send {Home}
Send +{End}  
Send {delete}       
return
;;;;;;;;;;;;;;;;;;;;;;终止;;;;;;;;;;;;;;;;;;;;;;;;;;;

;==========================循环点击示例(秒杀/抢购时使用)============================
; ^h::
; loop, 10
; {
; click
; sleep 200
; }
; return

; ===========================test=======================

; #4::
; Send "
; (
; Line 1
; Line 2
; Apples are a fruit.
; )"
; MsgBox A_AhkVersion
; return

; Numpad0 & Numpad2::
; Run "notepad.exe"
; return

; #If WinActive("Untitled - Notepad")
; #Space::
; MsgBox "You pressed WIN+SPACE in Notepad."
; return

; 任何标题不是无标题 - 记事本的窗口
#If
!q::
MsgBox "You pressed ALT+Q in any window."
return

; #If WinActive("ahk_class Notepad")
; #Space::
; MsgBox "You pressed WIN+SPACE in Notepad."
; return
; ::msg::You typed msg in Notepad

>!p::
run,https://www.bilibili.com/
return

;**********************customize******************
;======Click表达式======================================
CoordMode, Mouse
^+::
Click 1516,1016
Click 1573,844
return

~lbutton & WheelUp::
	SoundSet +2
	SoundPlay *16
return

~lbutton & WheelDown::
	SoundSet -2
	SoundPlay *16
return
