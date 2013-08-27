-- mine01
-- Premier test de minage par turtle

-- Orientation 0:South 1:West 2:North 3:East

-- Position de depart de la tortue
XOri = 754
YOri = 107
ZOri = 379
FOri = 2

--- Position de destination de la tortue
XDes = 524
YDes = 105
ZDes = 708
FDes = 3

--- Position actuelle de la tortue
XAct = 754
YAct = 107
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
  if turtle.detect() = false then
    turtle.forward
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

function VaEn(x, y, z, f)
  -- Mouvement sur le plan horizontal
  -- Determination de l'orientation a avoir

end

VaEn(754, 250, 369, 2)
