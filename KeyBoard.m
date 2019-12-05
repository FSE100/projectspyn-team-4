global key
InitKeyboard(); 

while 1
    pause(0.1); 
    switch key
        case 'uparrow'
            disp('Up Arrow Pressed!'); 
            brick.MoveMotor('B', 25);
            brick.MoveMotor('C', 50); 
            
        case 'downarrow'
            disp('Down Arrow Pressed!'); 
            brick.MoveMotor('B', -25);
            brick.MoveMotor('C', -25); 
            
        case 'leftarrow'
            disp('Left Arrow Pressed!'); 
            brick.MoveMotor('B', -25);
            brick.MoveMotor('C', 25); 
            
        case 'rightarrow'
            disp('Right Arrow Pressed!');
            brick.MoveMotor('B', 25);
            brick.MoveMotor('C', -25);
            
        case 0
            disp('No Key Pressed!');
            brick.StopAllMotors(); 
            
        case 'w'
            disp ('Motor Down!');
            brick.MoveMotor('A', -25);
            
        case 'u' 
            disp('Motor Up!');
            brick.MoveMotor('A', 50); 
            
        case 'q'
            break;
    end
end