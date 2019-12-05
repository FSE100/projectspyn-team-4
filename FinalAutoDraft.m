color = brick.ColorCode(4); 
color = brick.ColorCode(4); 
distance = brick.UltrasonicDist(3);
    while color ~= 3 %%while color isn't green
        brick.GyroCalibrate(2);
        color = brick.ColorCode(4);
        distance = brick.UltrasonicDist(3);
        brick.MoveMotor('B', 25.2);
        brick.MoveMotor('C', 25);
        if color == 5 %%if it's red
            color = brick.ColorCode(4);
            brick.StopAllMotors();
            pause(3);
            brick.MoveMotor('B', 25);
            brick.MoveMotor('C', 26);
            pause(3);
        end
        while distance < 45
           distance = brick.UltrasonicDist(3);
           color = brick.ColorCode(4);
           
           brick.StopAllMotors();
           pause(1);
           
           brick.MoveMotorAngleRel('B', 25, 180);
           brick.MoveMotorAngleRel('C', -25, 180);
           pause(3);
           
           distance = brick.UltrasonicDist(3);
           
           if distance < 45 
                brick.MoveMotorAngleRel('B', -25, 360);
                brick.MoveMotorAngleRel('C', 25, 360);
                pause (3);
                distance = brick.UltrasonicDist(3);
           end
                
        end
        
           distance = brick.UltrasonicDist(3);
           brick.StopAllMotors();
           brick.MoveMotor('B', 25.2);
           brick.MoveMotor('C', 25);
           pause(1);
    end
   

    if color == 2
        brick.StopAllMotors();
        pause(5);
        brick.MoveMotor('A', 25);
        pause(5);
        brick.MoveMotor('B', -25);
        brick.MoveMotor('C', -25.5);
        pause(5);
    end
    
    pause(4);
    brick.StopAllMotors();
