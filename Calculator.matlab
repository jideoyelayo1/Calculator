classdef Calcv2 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                  matlab.ui.Figure
        TextArea                  matlab.ui.control.TextArea
        MemoryPanel               matlab.ui.container.Panel
        MCButton                  matlab.ui.control.Button
        MSButton_2                matlab.ui.control.Button
        MRButton                  matlab.ui.control.Button
        MButton                   matlab.ui.control.Button
        Memory                    matlab.ui.control.NumericEditField
        MButton_2                 matlab.ui.control.Button
        TrigPanel                 matlab.ui.container.Panel
        sinxButton                matlab.ui.control.Button
        cosxButton                matlab.ui.control.Button
        tanxButton                matlab.ui.control.Button
        sinhxButton               matlab.ui.control.Button
        coshxButton               matlab.ui.control.Button
        tanhxButton               matlab.ui.control.Button
        arcsinxButton             matlab.ui.control.Button
        arccosxButton             matlab.ui.control.Button
        arctanxButton             matlab.ui.control.Button
        arsinhxButton             matlab.ui.control.Button
        arcoshxButton             matlab.ui.control.Button
        artanhxButton             matlab.ui.control.Button
        AngleTypeSwitchLabel      matlab.ui.control.Label
        AngleTypeSwitch           matlab.ui.control.Switch
        BasicPanel                matlab.ui.container.Panel
        numberone                 matlab.ui.control.Button
        numberseven               matlab.ui.control.Button
        numbereight               matlab.ui.control.Button
        numbernine                matlab.ui.control.Button
        numberfour                matlab.ui.control.Button
        numberfive                matlab.ui.control.Button
        numbersix                 matlab.ui.control.Button
        addition                  matlab.ui.control.Button
        numberzero                matlab.ui.control.Button
        buttonEqual               matlab.ui.control.Button
        subtraction               matlab.ui.control.Button
        numbertwo                 matlab.ui.control.Button
        numberthree               matlab.ui.control.Button
        divide                    matlab.ui.control.Button
        multi                     matlab.ui.control.Button
        LeftBracket               matlab.ui.control.Button
        RightBracket              matlab.ui.control.Button
        piButton                  matlab.ui.control.Button
        buttonEqual_2             matlab.ui.control.Button
        ANSButton                 matlab.ui.control.Button
        DELButton                 matlab.ui.control.Button
        multi_2                   matlab.ui.control.Button
        GraphPanel                matlab.ui.container.Panel
        aButton                   matlab.ui.control.Button
        bButton                   matlab.ui.control.Button
        cButton                   matlab.ui.control.Button
        aoutput                   matlab.ui.control.EditField
        boutput                   matlab.ui.control.EditField
        coutput                   matlab.ui.control.EditField
        SolveQuad                 matlab.ui.control.Button
        RootOutput                matlab.ui.control.TextArea
        UIAxes                    matlab.ui.control.UIAxes
        ScientificOperationPanel  matlab.ui.container.Panel
        lnxButton                 matlab.ui.control.Button
        exButton                  matlab.ui.control.Button
        xButton_3                 matlab.ui.control.Button
        xButton                   matlab.ui.control.Button
        xButton_2                 matlab.ui.control.Button
        log10xButton              matlab.ui.control.Button
        RandButton                matlab.ui.control.Button
        angleButton               matlab.ui.control.Button
        xButton_4                 matlab.ui.control.Button
        x3Button                  matlab.ui.control.Button
        xyButton                  matlab.ui.control.Button
        x2Button                  matlab.ui.control.Button
        x13Button                 matlab.ui.control.Button
        x05Button                 matlab.ui.control.Button
        x1yButton                 matlab.ui.control.Button
        storeY                    matlab.ui.control.Button
        ClearYButton              matlab.ui.control.Button
        yValue                    matlab.ui.control.NumericEditField
        eButton                   matlab.ui.control.Button
        TextArea_2                matlab.ui.control.TextArea
        ACButton                  matlab.ui.control.Button
    end

    
    properties (Access = private)
        Property % Description
       
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: LeftBracket, RightBracket, 
        % addition, buttonEqual_2, divide, eButton, multi, multi_2, 
        % numbereight, numberfive, numberfour, numbernine, 
        % numberone, numberseven, numbersix, numberthree, 
        % numbertwo, numberzero, piButton, subtraction
        function numberonePushed(app, event)
            app.TextArea.Value = [app.TextArea.Value{1} event.Source.Text];
        end

        % Button pushed function: ACButton
        function ACButtonPushed(app, event)
            app.TextArea.Value = '';
        end

        % Button pushed function: buttonEqual
        function buttonEqualPushed(app, event)
           try
                if ~isempty(app.TextArea.Value)
                    if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))));
                    else
                    app.TextArea.Value = [app.TextArea.Value{1} event.Source.Text ...
                    num2str( eval(app.TextArea.Value{1}))];                   
                    end
                end            
                    catch
               app.TextArea.Value = 'Error!';                
           end           
        end

        % Button pushed function: sinxButton
        function sinxButtonPushed(app, event)
            mul = 1;
            if app.AngleTypeSwitch.Value == "Deg"
                mul = pi/180;
            end
         
            
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(sin(mul*eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( sin(mul* eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
           end
        end

        % Button pushed function: cosxButton
        function cosxButtonPushed(app, event)
            mul = 1;
            if app.AngleTypeSwitch.Value == "Deg"
                mul = pi/180;
            end
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(cos(mul*eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( cos(mul* eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: tanxButton
        function tanxButtonPushed(app, event)
            mul = 1;
            if app.AngleTypeSwitch.Value == "Deg"
                mul = pi/180;
            end
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(tan(mul*eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( tan(mul* eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: sinhxButton
        function sinhxButtonPushed(app, event)
            mul = 1;
            
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(sinh(mul*eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( sinh(mul* eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: coshxButton
        function coshxButtonPushed(app, event)
            mul = 1;
           
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(cosh(mul*eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( cosh(mul* eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: tanhxButton
        function tanhxButtonPushed(app, event)
            mul = 1;
            
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(tanh(mul*eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( tanh(mul* eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: arcsinxButton
        function arcsinxButtonPushed(app, event)
            mul = 1;
            if app.AngleTypeSwitch.Value == "Deg"
                mul = 180/pi;
            end
            
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(mul*asin(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( mul*asin( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: arccosxButton
        function arccosxButtonPushed(app, event)
           mul = 1;
            if app.AngleTypeSwitch.Value == "Deg"
                mul = 180/pi;
            end
            
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(mul*acos(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( mul*acos( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: arctanxButton
        function arctanxButtonPushed(app, event)
            mul = 1;
            if app.AngleTypeSwitch.Value == "Deg"
                mul = 180/pi;
            end
            
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(mul*atan(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( mul*atan( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: arsinhxButton
        function arsinhxButtonPushed(app, event)
            mul = 1;
            
            
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(asinh(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( asinh( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: arcoshxButton
        function arcoshxButtonPushed(app, event)
            mul = 1;
            
            
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(acosh(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( acosh( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: artanhxButton
        function artanhxButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(atanh(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( atanh( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: lnxButton
        function lnxButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(log(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( log( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: log10xButton
        function log10xButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(log10(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( log10( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: exButton
        function exButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(exp(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( exp( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: xButton
        function xButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(factorial(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( factorial( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: xButton_2
        function xButton_2Pushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(10^(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( 10^( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: RandButton
        function RandButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(rand + (eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( rand + ( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: xButton_3
        function xButton_3Pushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(1/(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( 1/( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: angleButton
        function angleButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(angle(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( angle( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: xButton_4
        function xButton_4Pushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(abs(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')))) );
                else
                    app.TextArea.Value = num2str( abs( eval(app.TextArea.Value{1})));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: ANSButton
        function ANSButtonPushed(app, event)
          
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str(-1*eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))) );
                else
                    app.TextArea.Value = num2str( eval(app.TextArea.Value{1}) * -1);                    
                end
            catch
              app.TextArea.Value = 'Error!';
           end
        end

        % Button pushed function: storeY
        function storeYButtonPushed(app, event)
            
            try
                if contains(app.TextArea.Value,'=')
                    app.yValue.Value = eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')) );
                else
                    app.yValue.Value = eval(app.TextArea.Value{1});                    
                end
           catch
               app.TextArea.Value = 'Error! - This can not be stored';
            end
        end

        % Button pushed function: ClearYButton
        function ClearYButtonPushed(app, event)
            app.yValue.Value = 1;
        end

        % Button pushed function: x2Button
        function x2ButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str((eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))))^2 );
                else
                    app.TextArea.Value = num2str( ( eval(app.TextArea.Value{1}))^2);                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: x05Button
        function x05ButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str((eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))))^0.5 );
                else
                    app.TextArea.Value = num2str( ( eval(app.TextArea.Value{1}))^0.5);                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: x13Button
        function x13ButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str((eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))))^(1/3) );
                else
                    app.TextArea.Value = num2str( ( eval(app.TextArea.Value{1}))^(1/3));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: x1yButton
        function x1yButtonPushed(app, event)
          
            try
                y = app.yValue.Value;
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str((eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))))^(1/y) );
                else
                    app.TextArea.Value = num2str( ( eval(app.TextArea.Value{1}))^(1/y));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: xyButton
        function xyButtonPushed(app, event)
            try
                y = app.yValue.Value;
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str((eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))))^(y) );
                else
                    app.TextArea.Value = num2str( ( eval(app.TextArea.Value{1}))^(y));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: x3Button
        function x3ButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = num2str((eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))))^(3) );
                else
                    app.TextArea.Value = num2str( ( eval(app.TextArea.Value{1}))^(3));                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: MCButton
        function MCButtonPushed(app, event)
            app.Memory.Value = 0;
        end

        % Button pushed function: MSButton_2
        function MSButton_2Pushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.Memory.Value = eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'=')) );
                else
                    app.Memory.Value = eval(app.TextArea.Value{1});                    
                end
           catch
               app.TextArea.Value = 'Error! - This can not be stored';
           end
        end

        % Button pushed function: MButton
        function MButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')                    
                    app.TextArea.Value = [num2str(eval(eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))) + app.Memory.Value)];
                    
                else
                    app.TextArea.Value = [num2str(eval(app.TextArea.Value{1}) + app.Memory.Value)];                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: MButton_2
        function MButton_2Pushed(app, event)
            try
                if contains(app.TextArea.Value,'=')                    
                    app.TextArea.Value = [num2str(eval(eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))) - app.Memory.Value)];
                    
                else
                    app.TextArea.Value = [num2str(eval(app.TextArea.Value{1}) - app.Memory.Value)];                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: MRButton
        function MRButtonPushed(app, event)

            try
                if contains(app.TextArea.Value,'=')                    
                    app.TextArea.Value = [num2str(eval(eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))) * app.Memory.Value)];
                    
                else
                    app.TextArea.Value = [num2str(eval(app.TextArea.Value{1}) * app.Memory.Value)];                    
                end
            catch
              app.TextArea.Value = 'Error!';
            end
        end

        % Button pushed function: aButton
        function aButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.aoutput.Value = num2str(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))) );
                else
                    app.aoutput.Value = num2str(eval(app.TextArea.Value{1}));                    
                end
            catch
              app.TextArea.Value = 'Error! - This can not be stored';
           end
        end

        % Button pushed function: bButton
        function bButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.boutput.Value = num2str(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))) );
                else
                    app.boutput.Value = num2str(eval(app.TextArea.Value{1}));                   
                end
           catch
               app.TextArea.Value = 'Error! - This can not be stored';
           end
        end

        % Button pushed function: cButton
        function cButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.coutput.Value = num2str(eval( eraseBetween(app.TextArea.Value{1},1,strfind(app.TextArea.Value{1},'='))) );
                else
                    app.coutput.Value = num2str(eval(app.TextArea.Value{1}));                    
                end
           catch
               app.TextArea.Value = 'Error! - This can not be stored';
           end
        end

        % Button pushed function: SolveQuad
        function SolveQuadButtonPushed(app, event)
                try
                a = str2double(app.aoutput.Value);
                b = str2double(app.boutput.Value);
                c = str2double(app.coutput.Value);
                
            if a ~= 0
                
                p = [a b c];
                ru = roots(p);
                if ru(1) == ru(2)
                    app.RootOutput.Value =  "The repeated root is: " + string(ru(1));
                else
                    app.RootOutput.Value =  "Root 1 is: " + string(ru(1)) + " and Root 2 is: " + string(ru(2));
                end
                try
                x = -10:0.1:10;
                y = a*x.^2 + b*x + c;                                
                plot(app.UIAxes,x,y,'k');
                catch
                    app.TextArea.Value = 'Can not draw this graph!';
                end
                
            elseif b ~= 0
                p = [b c];
                ru = roots(p);
                x = -10:0.1:10;
                y = b*x + c;                                
                plot(app.UIAxes,x,y,'k');
                app.RootOutput.Value =  "The root is: " + string(ru);
            else
                app.RootOutput.Value = "Roots can not be calculated";                
            end
            
                catch
                    app.TextArea.Value = 'Error!';
                end
            
            
            
        end

        % Button pushed function: DELButton
        function DELButtonPushed(app, event)
            try
                if contains(app.TextArea.Value,'=')
                    app.TextArea.Value = app.TextArea.Value{1}(1:strfind(app.TextArea.Value{1},'=') - 1);                
                elseif ~isempty(app.TextArea.Value)
                    app.TextArea.Value = app.TextArea.Value{1}(1:end -1);                                   
                end
           catch
               %app.TextArea.Value = 'Error!';
           end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 971 840];
            app.UIFigure.Name = 'MATLAB App';

            % Create TextArea
            app.TextArea = uitextarea(app.UIFigure);
            app.TextArea.HorizontalAlignment = 'right';
            app.TextArea.FontSize = 60;
            app.TextArea.FontWeight = 'bold';
            app.TextArea.Position = [70 723 637 86];
            app.TextArea.Value = {'0'};

            % Create MemoryPanel
            app.MemoryPanel = uipanel(app.UIFigure);
            app.MemoryPanel.Title = 'Memory';
            app.MemoryPanel.Position = [714 674 243 140];

            % Create MCButton
            app.MCButton = uibutton(app.MemoryPanel, 'push');
            app.MCButton.ButtonPushedFcn = createCallbackFcn(app, @MCButtonPushed, true);
            app.MCButton.FontWeight = 'bold';
            app.MCButton.Position = [10 89 100 22];
            app.MCButton.Text = 'MC';

            % Create MSButton_2
            app.MSButton_2 = uibutton(app.MemoryPanel, 'push');
            app.MSButton_2.ButtonPushedFcn = createCallbackFcn(app, @MSButton_2Pushed, true);
            app.MSButton_2.BackgroundColor = [1 1 0];
            app.MSButton_2.FontWeight = 'bold';
            app.MSButton_2.Position = [135 89 100 22];
            app.MSButton_2.Text = 'MS';

            % Create MRButton
            app.MRButton = uibutton(app.MemoryPanel, 'push');
            app.MRButton.ButtonPushedFcn = createCallbackFcn(app, @MRButtonPushed, true);
            app.MRButton.FontWeight = 'bold';
            app.MRButton.Position = [10 55 100 22];
            app.MRButton.Text = 'MR';

            % Create MButton
            app.MButton = uibutton(app.MemoryPanel, 'push');
            app.MButton.ButtonPushedFcn = createCallbackFcn(app, @MButtonPushed, true);
            app.MButton.FontWeight = 'bold';
            app.MButton.Position = [135 54 100 22];
            app.MButton.Text = 'M+';

            % Create Memory
            app.Memory = uieditfield(app.MemoryPanel, 'numeric');
            app.Memory.FontSize = 20;
            app.Memory.FontWeight = 'bold';
            app.Memory.Position = [13 9 100 25];

            % Create MButton_2
            app.MButton_2 = uibutton(app.MemoryPanel, 'push');
            app.MButton_2.ButtonPushedFcn = createCallbackFcn(app, @MButton_2Pushed, true);
            app.MButton_2.FontWeight = 'bold';
            app.MButton_2.Position = [135 10 100 22];
            app.MButton_2.Text = 'M-';

            % Create TrigPanel
            app.TrigPanel = uipanel(app.UIFigure);
            app.TrigPanel.Title = 'Trig';
            app.TrigPanel.Position = [586 383 364 248];

            % Create sinxButton
            app.sinxButton = uibutton(app.TrigPanel, 'push');
            app.sinxButton.ButtonPushedFcn = createCallbackFcn(app, @sinxButtonPushed, true);
            app.sinxButton.Position = [10 193 100 22];
            app.sinxButton.Text = 'sin(x)';

            % Create cosxButton
            app.cosxButton = uibutton(app.TrigPanel, 'push');
            app.cosxButton.ButtonPushedFcn = createCallbackFcn(app, @cosxButtonPushed, true);
            app.cosxButton.Position = [126 193 100 22];
            app.cosxButton.Text = 'cos(x)';

            % Create tanxButton
            app.tanxButton = uibutton(app.TrigPanel, 'push');
            app.tanxButton.ButtonPushedFcn = createCallbackFcn(app, @tanxButtonPushed, true);
            app.tanxButton.Position = [240 193 100 22];
            app.tanxButton.Text = 'tan(x)';

            % Create sinhxButton
            app.sinhxButton = uibutton(app.TrigPanel, 'push');
            app.sinhxButton.ButtonPushedFcn = createCallbackFcn(app, @sinhxButtonPushed, true);
            app.sinhxButton.Position = [10 157 100 22];
            app.sinhxButton.Text = 'sinh(x)';

            % Create coshxButton
            app.coshxButton = uibutton(app.TrigPanel, 'push');
            app.coshxButton.ButtonPushedFcn = createCallbackFcn(app, @coshxButtonPushed, true);
            app.coshxButton.Position = [126 157 100 22];
            app.coshxButton.Text = 'cosh(x)';

            % Create tanhxButton
            app.tanhxButton = uibutton(app.TrigPanel, 'push');
            app.tanhxButton.ButtonPushedFcn = createCallbackFcn(app, @tanhxButtonPushed, true);
            app.tanhxButton.Position = [240 157 100 22];
            app.tanhxButton.Text = 'tanh(x)';

            % Create arcsinxButton
            app.arcsinxButton = uibutton(app.TrigPanel, 'push');
            app.arcsinxButton.ButtonPushedFcn = createCallbackFcn(app, @arcsinxButtonPushed, true);
            app.arcsinxButton.Position = [10 40 100 22];
            app.arcsinxButton.Text = 'arcsin(x)';

            % Create arccosxButton
            app.arccosxButton = uibutton(app.TrigPanel, 'push');
            app.arccosxButton.ButtonPushedFcn = createCallbackFcn(app, @arccosxButtonPushed, true);
            app.arccosxButton.Position = [126 40 100 22];
            app.arccosxButton.Text = 'arccos(x)';

            % Create arctanxButton
            app.arctanxButton = uibutton(app.TrigPanel, 'push');
            app.arctanxButton.ButtonPushedFcn = createCallbackFcn(app, @arctanxButtonPushed, true);
            app.arctanxButton.Position = [240 40 100 22];
            app.arctanxButton.Text = 'arctan(x)';

            % Create arsinhxButton
            app.arsinhxButton = uibutton(app.TrigPanel, 'push');
            app.arsinhxButton.ButtonPushedFcn = createCallbackFcn(app, @arsinhxButtonPushed, true);
            app.arsinhxButton.Position = [10 2 100 22];
            app.arsinhxButton.Text = 'arsinh(x)';

            % Create arcoshxButton
            app.arcoshxButton = uibutton(app.TrigPanel, 'push');
            app.arcoshxButton.ButtonPushedFcn = createCallbackFcn(app, @arcoshxButtonPushed, true);
            app.arcoshxButton.Position = [126 2 100 22];
            app.arcoshxButton.Text = 'arcosh(x)';

            % Create artanhxButton
            app.artanhxButton = uibutton(app.TrigPanel, 'push');
            app.artanhxButton.ButtonPushedFcn = createCallbackFcn(app, @artanhxButtonPushed, true);
            app.artanhxButton.Position = [240 2 100 22];
            app.artanhxButton.Text = 'artanh(x)';

            % Create AngleTypeSwitchLabel
            app.AngleTypeSwitchLabel = uilabel(app.TrigPanel);
            app.AngleTypeSwitchLabel.HorizontalAlignment = 'center';
            app.AngleTypeSwitchLabel.Position = [149 80 62 22];
            app.AngleTypeSwitchLabel.Text = 'AngleType';

            % Create AngleTypeSwitch
            app.AngleTypeSwitch = uiswitch(app.TrigPanel, 'slider');
            app.AngleTypeSwitch.Items = {'Rad', 'Deg'};
            app.AngleTypeSwitch.Position = [156 117 45 20];
            app.AngleTypeSwitch.Value = 'Rad';

            % Create BasicPanel
            app.BasicPanel = uipanel(app.UIFigure);
            app.BasicPanel.Title = 'Basic';
            app.BasicPanel.BackgroundColor = [1 1 1];
            app.BasicPanel.Position = [70 422 504 281];

            % Create numberone
            app.numberone = uibutton(app.BasicPanel, 'push');
            app.numberone.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.numberone.Position = [15 226 100 22];
            app.numberone.Text = '1';

            % Create numberseven
            app.numberseven = uibutton(app.BasicPanel, 'push');
            app.numberseven.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.numberseven.Position = [15 111 100 22];
            app.numberseven.Text = '7';

            % Create numbereight
            app.numbereight = uibutton(app.BasicPanel, 'push');
            app.numbereight.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.numbereight.Position = [147 111 100 22];
            app.numbereight.Text = '8';

            % Create numbernine
            app.numbernine = uibutton(app.BasicPanel, 'push');
            app.numbernine.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.numbernine.Position = [267 111 100 22];
            app.numbernine.Text = '9';

            % Create numberfour
            app.numberfour = uibutton(app.BasicPanel, 'push');
            app.numberfour.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.numberfour.Position = [15 169 100 22];
            app.numberfour.Text = '4';

            % Create numberfive
            app.numberfive = uibutton(app.BasicPanel, 'push');
            app.numberfive.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.numberfive.Position = [147 169 100 22];
            app.numberfive.Text = '5';

            % Create numbersix
            app.numbersix = uibutton(app.BasicPanel, 'push');
            app.numbersix.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.numbersix.Position = [267 169 100 22];
            app.numbersix.Text = '6';

            % Create addition
            app.addition = uibutton(app.BasicPanel, 'push');
            app.addition.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.addition.BackgroundColor = [0 0 0];
            app.addition.FontSize = 14;
            app.addition.FontWeight = 'bold';
            app.addition.FontColor = [1 1 1];
            app.addition.Position = [392 188 100 24];
            app.addition.Text = '+';

            % Create numberzero
            app.numberzero = uibutton(app.BasicPanel, 'push');
            app.numberzero.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.numberzero.Position = [147 57 100 22];
            app.numberzero.Text = '0';

            % Create buttonEqual
            app.buttonEqual = uibutton(app.BasicPanel, 'push');
            app.buttonEqual.ButtonPushedFcn = createCallbackFcn(app, @buttonEqualPushed, true);
            app.buttonEqual.BackgroundColor = [0 0 0];
            app.buttonEqual.FontSize = 14;
            app.buttonEqual.FontWeight = 'bold';
            app.buttonEqual.FontColor = [1 1 1];
            app.buttonEqual.Position = [392 8 100 24];
            app.buttonEqual.Text = '=';

            % Create subtraction
            app.subtraction = uibutton(app.BasicPanel, 'push');
            app.subtraction.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.subtraction.BackgroundColor = [0 0 0];
            app.subtraction.FontSize = 14;
            app.subtraction.FontWeight = 'bold';
            app.subtraction.FontColor = [1 1 1];
            app.subtraction.Position = [392 152 100 24];
            app.subtraction.Text = '-';

            % Create numbertwo
            app.numbertwo = uibutton(app.BasicPanel, 'push');
            app.numbertwo.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.numbertwo.Position = [147 226 100 22];
            app.numbertwo.Text = '2';

            % Create numberthree
            app.numberthree = uibutton(app.BasicPanel, 'push');
            app.numberthree.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.numberthree.Position = [267 226 100 22];
            app.numberthree.Text = '3';

            % Create divide
            app.divide = uibutton(app.BasicPanel, 'push');
            app.divide.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.divide.BackgroundColor = [0 0 0];
            app.divide.FontSize = 14;
            app.divide.FontWeight = 'bold';
            app.divide.FontColor = [1 1 1];
            app.divide.Position = [392 116 100 24];
            app.divide.Text = '/';

            % Create multi
            app.multi = uibutton(app.BasicPanel, 'push');
            app.multi.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.multi.BackgroundColor = [0 0 0];
            app.multi.FontSize = 14;
            app.multi.FontWeight = 'bold';
            app.multi.FontColor = [1 1 1];
            app.multi.Position = [392 76 100 24];
            app.multi.Text = '*';

            % Create LeftBracket
            app.LeftBracket = uibutton(app.BasicPanel, 'push');
            app.LeftBracket.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.LeftBracket.BackgroundColor = [0 0 0];
            app.LeftBracket.FontColor = [1 1 1];
            app.LeftBracket.Position = [15 57 100 22];
            app.LeftBracket.Text = '(';

            % Create RightBracket
            app.RightBracket = uibutton(app.BasicPanel, 'push');
            app.RightBracket.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.RightBracket.BackgroundColor = [0 0 0];
            app.RightBracket.FontColor = [1 1 1];
            app.RightBracket.Position = [267 57 100 22];
            app.RightBracket.Text = ')';

            % Create piButton
            app.piButton = uibutton(app.BasicPanel, 'push');
            app.piButton.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.piButton.Position = [267 14 100 22];
            app.piButton.Text = 'pi';

            % Create buttonEqual_2
            app.buttonEqual_2 = uibutton(app.BasicPanel, 'push');
            app.buttonEqual_2.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.buttonEqual_2.Position = [15 14 100 22];
            app.buttonEqual_2.Text = 'i';

            % Create ANSButton
            app.ANSButton = uibutton(app.BasicPanel, 'push');
            app.ANSButton.ButtonPushedFcn = createCallbackFcn(app, @ANSButtonPushed, true);
            app.ANSButton.Position = [147 14 100 22];
            app.ANSButton.Text = '+/- ANS';

            % Create DELButton
            app.DELButton = uibutton(app.BasicPanel, 'push');
            app.DELButton.ButtonPushedFcn = createCallbackFcn(app, @DELButtonPushed, true);
            app.DELButton.BackgroundColor = [1 0.4118 0.1608];
            app.DELButton.FontSize = 20;
            app.DELButton.FontWeight = 'bold';
            app.DELButton.Position = [392 221 100 32];
            app.DELButton.Text = 'DEL';

            % Create multi_2
            app.multi_2 = uibutton(app.BasicPanel, 'push');
            app.multi_2.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.multi_2.BackgroundColor = [0 0 0];
            app.multi_2.FontSize = 14;
            app.multi_2.FontWeight = 'bold';
            app.multi_2.FontColor = [1 1 1];
            app.multi_2.Position = [392 39 100 24];
            app.multi_2.Text = '.';

            % Create GraphPanel
            app.GraphPanel = uipanel(app.UIFigure);
            app.GraphPanel.Title = 'Graph';
            app.GraphPanel.Position = [70 -9 504 410];

            % Create aButton
            app.aButton = uibutton(app.GraphPanel, 'push');
            app.aButton.ButtonPushedFcn = createCallbackFcn(app, @aButtonPushed, true);
            app.aButton.BackgroundColor = [0 0 0];
            app.aButton.FontColor = [1 1 0];
            app.aButton.Position = [21 94 100 22];
            app.aButton.Text = 'a=';

            % Create bButton
            app.bButton = uibutton(app.GraphPanel, 'push');
            app.bButton.ButtonPushedFcn = createCallbackFcn(app, @bButtonPushed, true);
            app.bButton.BackgroundColor = [0 0 0];
            app.bButton.FontColor = [1 1 0];
            app.bButton.Position = [21 57 100 22];
            app.bButton.Text = 'b=';

            % Create cButton
            app.cButton = uibutton(app.GraphPanel, 'push');
            app.cButton.ButtonPushedFcn = createCallbackFcn(app, @cButtonPushed, true);
            app.cButton.BackgroundColor = [0 0 0];
            app.cButton.FontColor = [1 1 0];
            app.cButton.Position = [21 16 100 22];
            app.cButton.Text = 'c=';

            % Create aoutput
            app.aoutput = uieditfield(app.GraphPanel, 'text');
            app.aoutput.HorizontalAlignment = 'right';
            app.aoutput.Position = [156 94 100 22];
            app.aoutput.Value = '0';

            % Create boutput
            app.boutput = uieditfield(app.GraphPanel, 'text');
            app.boutput.HorizontalAlignment = 'right';
            app.boutput.Position = [156 57 100 22];
            app.boutput.Value = '0';

            % Create coutput
            app.coutput = uieditfield(app.GraphPanel, 'text');
            app.coutput.HorizontalAlignment = 'right';
            app.coutput.Position = [156 16 100 22];
            app.coutput.Value = '0';

            % Create SolveQuad
            app.SolveQuad = uibutton(app.GraphPanel, 'push');
            app.SolveQuad.ButtonPushedFcn = createCallbackFcn(app, @SolveQuadButtonPushed, true);
            app.SolveQuad.BackgroundColor = [0 0 0];
            app.SolveQuad.FontSize = 24;
            app.SolveQuad.FontWeight = 'bold';
            app.SolveQuad.FontColor = [1 1 1];
            app.SolveQuad.Position = [336 89 100 36];
            app.SolveQuad.Text = 'Solve';

            % Create RootOutput
            app.RootOutput = uitextarea(app.GraphPanel);
            app.RootOutput.HorizontalAlignment = 'center';
            app.RootOutput.FontWeight = 'bold';
            app.RootOutput.Position = [294 1 183 80];
            app.RootOutput.Value = {'find the roots of a linear or quadratic. where'; 'y = ax^2+bx+c'; 'or'; 'y = bx + c;'};

            % Create UIAxes
            app.UIAxes = uiaxes(app.GraphPanel);
            title(app.UIAxes, 'Graph')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [1 124 503 269];

            % Create ScientificOperationPanel
            app.ScientificOperationPanel = uipanel(app.UIFigure);
            app.ScientificOperationPanel.Title = 'Scientific Operation';
            app.ScientificOperationPanel.Position = [580 6 370 307];

            % Create lnxButton
            app.lnxButton = uibutton(app.ScientificOperationPanel, 'push');
            app.lnxButton.ButtonPushedFcn = createCallbackFcn(app, @lnxButtonPushed, true);
            app.lnxButton.Position = [10 255 100 22];
            app.lnxButton.Text = 'ln(x)';

            % Create exButton
            app.exButton = uibutton(app.ScientificOperationPanel, 'push');
            app.exButton.ButtonPushedFcn = createCallbackFcn(app, @exButtonPushed, true);
            app.exButton.Position = [126 255 100 22];
            app.exButton.Text = 'e^x';

            % Create xButton_3
            app.xButton_3 = uibutton(app.ScientificOperationPanel, 'push');
            app.xButton_3.ButtonPushedFcn = createCallbackFcn(app, @xButton_3Pushed, true);
            app.xButton_3.Position = [252 255 100 22];
            app.xButton_3.Text = '1/x';

            % Create xButton
            app.xButton = uibutton(app.ScientificOperationPanel, 'push');
            app.xButton.ButtonPushedFcn = createCallbackFcn(app, @xButtonPushed, true);
            app.xButton.Position = [123 193 100 22];
            app.xButton.Text = 'x!';

            % Create xButton_2
            app.xButton_2 = uibutton(app.ScientificOperationPanel, 'push');
            app.xButton_2.ButtonPushedFcn = createCallbackFcn(app, @xButton_2Pushed, true);
            app.xButton_2.Position = [248 193 100 22];
            app.xButton_2.Text = '10^x';

            % Create log10xButton
            app.log10xButton = uibutton(app.ScientificOperationPanel, 'push');
            app.log10xButton.ButtonPushedFcn = createCallbackFcn(app, @log10xButtonPushed, true);
            app.log10xButton.Position = [6 193 100 22];
            app.log10xButton.Text = 'log10(x)';

            % Create RandButton
            app.RandButton = uibutton(app.ScientificOperationPanel, 'push');
            app.RandButton.ButtonPushedFcn = createCallbackFcn(app, @RandButtonPushed, true);
            app.RandButton.Position = [126 158 100 22];
            app.RandButton.Text = 'Rand';

            % Create angleButton
            app.angleButton = uibutton(app.ScientificOperationPanel, 'push');
            app.angleButton.ButtonPushedFcn = createCallbackFcn(app, @angleButtonPushed, true);
            app.angleButton.Position = [10 158 100 22];
            app.angleButton.Text = 'angle';

            % Create xButton_4
            app.xButton_4 = uibutton(app.ScientificOperationPanel, 'push');
            app.xButton_4.ButtonPushedFcn = createCallbackFcn(app, @xButton_4Pushed, true);
            app.xButton_4.Position = [253 158 100 22];
            app.xButton_4.Text = '|x|';

            % Create x3Button
            app.x3Button = uibutton(app.ScientificOperationPanel, 'push');
            app.x3Button.ButtonPushedFcn = createCallbackFcn(app, @x3ButtonPushed, true);
            app.x3Button.Position = [127 58 100 22];
            app.x3Button.Text = 'x^3';

            % Create xyButton
            app.xyButton = uibutton(app.ScientificOperationPanel, 'push');
            app.xyButton.ButtonPushedFcn = createCallbackFcn(app, @xyButtonPushed, true);
            app.xyButton.Position = [252 58 100 22];
            app.xyButton.Text = 'x^y';

            % Create x2Button
            app.x2Button = uibutton(app.ScientificOperationPanel, 'push');
            app.x2Button.ButtonPushedFcn = createCallbackFcn(app, @x2ButtonPushed, true);
            app.x2Button.Position = [10 58 100 22];
            app.x2Button.Text = 'x^2';

            % Create x13Button
            app.x13Button = uibutton(app.ScientificOperationPanel, 'push');
            app.x13Button.ButtonPushedFcn = createCallbackFcn(app, @x13ButtonPushed, true);
            app.x13Button.Position = [126 11 100 22];
            app.x13Button.Text = 'x^1/3';

            % Create x05Button
            app.x05Button = uibutton(app.ScientificOperationPanel, 'push');
            app.x05Button.ButtonPushedFcn = createCallbackFcn(app, @x05ButtonPushed, true);
            app.x05Button.Position = [10 11 100 22];
            app.x05Button.Text = 'x^0.5';

            % Create x1yButton
            app.x1yButton = uibutton(app.ScientificOperationPanel, 'push');
            app.x1yButton.ButtonPushedFcn = createCallbackFcn(app, @x1yButtonPushed, true);
            app.x1yButton.Position = [253 11 100 22];
            app.x1yButton.Text = 'x^1/y';

            % Create storeY
            app.storeY = uibutton(app.ScientificOperationPanel, 'push');
            app.storeY.ButtonPushedFcn = createCallbackFcn(app, @storeYButtonPushed, true);
            app.storeY.BackgroundColor = [1 1 0];
            app.storeY.FontSize = 24;
            app.storeY.FontWeight = 'bold';
            app.storeY.Position = [37 96 46 36];
            app.storeY.Text = 'y=';

            % Create ClearYButton
            app.ClearYButton = uibutton(app.ScientificOperationPanel, 'push');
            app.ClearYButton.ButtonPushedFcn = createCallbackFcn(app, @ClearYButtonPushed, true);
            app.ClearYButton.FontSize = 20;
            app.ClearYButton.FontWeight = 'bold';
            app.ClearYButton.Position = [257 96 95 36];
            app.ClearYButton.Text = 'Clear Y';

            % Create yValue
            app.yValue = uieditfield(app.ScientificOperationPanel, 'numeric');
            app.yValue.FontSize = 20;
            app.yValue.FontWeight = 'bold';
            app.yValue.Position = [126 100 100 25];
            app.yValue.Value = 1;

            % Create eButton
            app.eButton = uibutton(app.ScientificOperationPanel, 'push');
            app.eButton.ButtonPushedFcn = createCallbackFcn(app, @numberonePushed, true);
            app.eButton.Position = [158 224 100 22];
            app.eButton.Text = 'e';

            % Create TextArea_2
            app.TextArea_2 = uitextarea(app.ScientificOperationPanel);
            app.TextArea_2.HorizontalAlignment = 'center';
            app.TextArea_2.FontSize = 16;
            app.TextArea_2.FontWeight = 'bold';
            app.TextArea_2.Position = [82 223 69 25];
            app.TextArea_2.Value = {'EE =>'};

            % Create ACButton
            app.ACButton = uibutton(app.UIFigure, 'push');
            app.ACButton.ButtonPushedFcn = createCallbackFcn(app, @ACButtonPushed, true);
            app.ACButton.BackgroundColor = [1 0.4118 0.1608];
            app.ACButton.FontSize = 36;
            app.ACButton.FontWeight = 'bold';
            app.ACButton.Position = [592 648 112 58];
            app.ACButton.Text = 'AC';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Calcv2

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
