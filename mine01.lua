-- mine01
-- Premier test de minage par turtle

-- Orientation 0:South(Z+) 1:West(X-) 2:North(Z-) 3:East(X+)

-- Position de depart de la tortue
XOri = 754
YOri = 108
ZOri = 379
FOri = 2

--- Position de destination de la tortue
XDes = 524
YDes = 105
ZDes = 708
FDes = 3

--- Position actuelle de la tortue
XAct = 754
YAct = 108
ZAct = 379
FAct = 2

function Haut()
  -- Monte d'un bloc
  if turtle.detectUp() == false then
    turtle.up()
    YAct = YAct + 1
    return true
  else
    return false
  end
  
end

function Bas()
  -- Descend d'un bloc
  if turtle.detectDown() == false then
    turtle.down()
    YAct = YAct - 1
    return true
  else
    return false
  end
  
end

function Gauche()
  -- Tourne de 90 degres sur la gauche
  turtle.turnLeft()
  FAct = FAct - 1
  if FAct == -1 then 
    FAct = 3
  end
  
end

function Droite()
  -- Tourne de 90 degres sur la droite
  turtle.turnRight()
  FAct = Fact + 1
  if FAct == 4 then
    FAct = 0
  end
  
end

function Avance()
  -- Avance d'un bloc
  if turtle.detect() == false then
    turtle.forward()
    if FAct == 0 then
      ZAct = ZAct + 1
    end
    if FAct == 1 then
      XAct = XAct - 1
    end
    if FAct == 2 then
      ZAct = ZAct - 1
    end
    if FAct == 3 then
      XAct = XAct + 1
    end
    return true
  else
    return false
  end
  
end

function Orientation(f)
  -- modification de l'orientation vers f
  if f ~= FAct then
    repeat
      Gauche()
    until FAct == f
  end
end

function VaEn(x, y, z, f)
  -- Mouvement sur le plan horizontal
  -- Determination de l'orientation a avoir
  XEcart = x - XAct
  YEcart = y - YAct
  ZEcart = z - ZAct
  -- Traitement de l'ecart X
  if XEcart ~= 0 then
    repeat
      if XEcart < 0 then
        Orientation(1)
      end
      if XEcart > 0 then
        Orientation(3)
      end
      Avance()
      print("x:"..XAct.." y:"..YAct.." z:"..ZAct)
    until x == XAct
  end
  -- Traitement de l'ecart Z
  if ZEcart ~= 0 then
    repeat
      if ZEcart < 0 then
        Orientation(2)
      end
      if ZEcart > 0 then
        Orientation(0)
      end
      Avance()
      print("x:"..XAct.." y:"..YAct.." z:"..ZAct)
    until z == ZAct
  end
  -- Traitement de l'ecart Y
  if YEcart ~= 0 then
    repeat
      if YEcart > 0 then
        Haut()
      end
      if YEcart < 0 then
        Bas()
      end
      print("x:"..XAct.." y:"..YAct.." z:"..ZAct)
    until y == YAct
  end
  Orientation(f)
end

VaEn(754, 250, 369, 2)
VaEn(749, 116, 351, 0)
--VaEn(754, 250, 369, 2)
VaEn(754, 108, 369, 0)
--VaEn(524, 105, 708, 3)
VaEn(XOri, YOri, ZOri, FOri)
