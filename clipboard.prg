SET LIBRARY TO 'foxtools.fll'
IF openclip(_SCREEN.HWND)
*emptyclip()
	MESSAGEBOX(countclipf())
	MESSAGEBOX(EnumClipFm(8))

*!*		FOR i=1 TO countclipf()
*!*	MESSAGEBOX(GetClipFmt(i))
*!*		ENDFOR
	IF NOT closeclip()
		MESSAGEBOX('could not close ClipBoard')
	ENDIF
	RETURN
ELSE
	MESSAGEBOX('could not open ClipBoard')
	RETURN
ENDIF
