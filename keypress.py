def anykeyevent():
    """
    Detects a key or function key pressed and returns its ascii or scancode.
    """
    import msvcrt
    if msvcrt.kbhit():
        a = ord(msvcrt.getch())
        if a == 0 or a == 224:
            b = ord(msvcrt.getch())
            x = a + (b*256)
            return x
        else:
            return a

while 1:
  x = anykeyevent()
  if x:
    print "Hex:\t%x" % x
