color = brick.ColorCode(4); 
distance = brick.UltrasonicDist(3);
angleRate = brick.GyroRate(2);
brick.GyroCalibrate(2); 
 

    
        
    while color ~= 2 %%while color isn't blue
        brick.GyroCalibrate(2);
        color = brick.ColorCode(4);
        distance = brick.UltrasonicDist(3);
        brick.MoveMotor('B', 25);
        brick.MoveMotor('C', 25.25);
        if color == 5 %%if it's red
            color = brick.ColorCode(4);
            brick.StopAllMotors();
            pause(3);
            brick.MoveMotor('B', 25);
            brick.MoveMotor('C', 25.25);
            pause(3);
        end
        
        if distance <= 45.0000
           distance = brick.UltrasonicDist(3);
           brick.StopAllMotors();
           brick.GyroCalibrate(2);
           angleRate = brick.GyroRate(2);
           pause(1);

           while distance <= 45.0000
              brick.GyroCalibrate(2);
              distance = brick.UltrasonicDist(3);
              angleRate = brick.GyroRate(2);
          
              brick.MoveMotor('B', -25);
              brick.MoveMotor('C', 25);
              pause(0.5);
              if angleRate >= 1 && distance <= 30 
                    brick.MoveMotor('B', 25);
                    brick.MoveMotor('C', -25);
                    pause(1.0);
                    brick.GyroCalibrate(2);
              end
               
           end
           
           brick.StopAllMotors();
           brick.MoveMotor('B', 25);
           brick.MoveMotor('C', 25.25);
           pause(1);
        end
        
        brick.MoveMotor('B', 25);
        brick.MoveMotor('C', 25.25);
        
    end
    pause(4);
    brick.StopAllMotors();
