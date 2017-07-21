function varargout = proveGUI(varargin)
    % PROVEGUI MATLAB code for proveGUI.fig
    %      PROVEGUI, by itself, creates a new PROVEGUI or raises the existing
    %      singleton*.
    %
    %      H = PROVEGUI returns the handle to a new PROVEGUI or the handle to
    %      the existing singleton*.
    %
    %      PROVEGUI('CALLBACK',hObject,eventData,handles,...) calls the local
    %      function named CALLBACK in PROVEGUI.M with the given input arguments.
    %
    %      PROVEGUI('Property','Value',...) creates a new PROVEGUI or raises the
    %      existing singleton*.  Starting from the left, property value pairs are
    %      applied to the GUI before proveGUI_OpeningFcn gets called.  An
    %      unrecognized property name or invalid value makes property application
    %      stop.  All inputs are passed to proveGUI_OpeningFcn via varargin.
    %
    %      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
    %      instance to run (singleton)".
    %
    % See also: GUIDE, GUIDATA, GUIHANDLES

    % Edit the above text to modify the response to help proveGUI

    % Last Modified by GUIDE v2.5 03-Feb-2017 10:27:22

    % Begin initialization code - DO NOT EDIT
    gui_Singleton = 1;
    gui_State = struct('gui_Name',       mfilename, ...
                       'gui_Singleton',  gui_Singleton, ...
                       'gui_OpeningFcn', @proveGUI_OpeningFcn, ...
                       'gui_OutputFcn',  @proveGUI_OutputFcn, ...
                       'gui_LayoutFcn',  [] , ...
                       'gui_Callback',   []);
    if nargin && ischar(varargin{1})
        gui_State.gui_Callback = str2func(varargin{1});
    end

    if nargout
        [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
    else
        gui_mainfcn(gui_State, varargin{:});
    end
    % End initialization code - DO NOT EDIT

function proveGUI_OpeningFcn(hObject, eventdata, handles, varargin)
    %% --- Executes just before proveGUI is made visible.
    % Set up axes
    cla(handles.axes0);
    cla(handles.axes1);
    cla(handles.axes2);
    cla(handles.axes3);
    %% Bufferzisze
    handles.bufsize = 34;

    handles.plot1 = animatedline(handles.axes0, 'MaximumNumPoints', handles.bufsize*100);
    handles.plot2 = animatedline(handles.axes1, 'MaximumNumPoints', handles.bufsize*100);
    handles.plot3 = animatedline(handles.axes2, 'MaximumNumPoints', handles.bufsize*100);
    handles.plot4 = animatedline(handles.axes3, 'MaximumNumPoints', handles.bufsize*100);
    
    handles.axes0.XLim = [0 handles.bufsize*100];
    handles.axes1.XLim = [0 handles.bufsize*100];
    handles.axes2.XLim = [0 handles.bufsize*100];
    handles.axes3.XLim = [0 handles.bufsize*100];

    % Create new file
    handles.fileName = 'tempDatECG.dat';
    handles.fileID = fopen(handles.fileName, 'w+', 'n');
    
    handles.text_debug.String = ['Created temporary file ' handles.fileName ...
        ' .Initialize the serial objcet'];
    
    % Choose default command line output for proveGUI
    handles.output = hObject;
    
    % Update handles structure
    guidata(hObject, handles);

function figure1_DeleteFcn(hObject, eventdata, handles)
    %% --- Executes during object deletion, before destroying properties.
    data(1:25) = 0; 
    
    try
        fwrite(handles.serial_obj, [17 17 16 data])
        record(handles.serial_obj,'off');
        fclose(handles.serial_obj);
        delete(handles.serial_obj);
        clear handles.serial_obj
    catch
        disp(['Unable to delete or send data to serial object.' ... 
            'Did you initialized one or is the device still connected?']); 
    end
    
    try
        fclose(handles.fileID);
    catch
        disp('Temporary file is already closed. Thats okay... ')
    end

    guidata(hObject, handles);
    % Hint: delete(hObject) closes the figure
    delete(hObject);

function button_init_Callback(hObject, eventdata, handles)
    %% --- Executes on button press in button_init.
    % Collect data
    com_port = handles.edit_com.String;
    baudrate = handles.popup_baudrate.String;
    baudrate = str2num(baudrate{handles.popup_baudrate.Value});

    % Create serial object
    handles.serial_obj = serial(com_port, 'Baudrate', baudrate);
        
    % Set Serial object
    buffersize = 27*34;
    handles.serial_obj.InputBufferSize = buffersize;
    handles.serial_obj.BytesAvailableFcnCount = 27*handles.bufsize;
    handles.serial_obj.BytesAvailableFcnMode = 'byte';
    handles.serial_obj.BytesAvailableFcn = {@serial_aviable, hObject, handles};
   
    
    % Enable buttons
    handles.text_debug.String = ['Created serial object on port: ' com_port];
    handles.button_start.Enable = 'on';
    handles.button_stop.Enable = 'on';

    try
        fopen(handles.serial_obj);
    catch ME
        % Write error message
        handles.text_debug.ForegroundColor = [1.0 0 0];
        handles.text_debug.FontWeight = 'bold';
        handles.text_debug.String = ['>> ERROR: ' ME.identifier ...
            '| Try another port or use fclose(instrfind(''Port'',''COM8''))'];
        handles.button_start.Enable = 'off';
        handles.button_stop.Enable = 'off';
        return
    end

    handles.text_debug.ForegroundColor = [0 0 0];
    handles.text_debug.FontWeight = 'normal';
    
    guidata(hObject, handles);

function serial_aviable(obj, event, hObject, handles)
    %% Callback function to collect data from serial buffer
    persistent t;
    persistent i; 
    %persistent ecg_data;
    global matrix;
    
    if isempty(t)
        t = 0;
    end
    
    if isempty(i)
        i = 0;
    end

    %if isempty(ecg_data)
    %    ecg_data = zeros(8,60000);
    %end

    bz = handles.bufsize;

    % Get Channels
    ax1_dat = handles.popup_axis0.Value;
    ax2_dat = handles.popup_axis1.Value;
    ax3_dat = handles.popup_axis2.Value;
    ax4_dat = handles.popup_axis3.Value;

    received_data = fread(obj,  27*bz, 'uint8');
    data_converted = convert_data(received_data);
    
    % Draw points
    addpoints(handles.plot1, (0 + bz*t):(33 + bz*t), data_converted(ax1_dat+1,:));
    addpoints(handles.plot2, (0 + bz*t):(33 + bz*t), data_converted(ax2_dat+1,:));
    addpoints(handles.plot3, (0 + bz*t):(33 + bz*t), data_converted(ax3_dat+1,:));
    addpoints(handles.plot4, (0 + bz*t):(33 + bz*t), data_converted(ax4_dat+1,:));
    
    % Save values
    fwrite(handles.fileID, data_converted(2:9,:), 'double');

    t = t + 1;
    i = i + 1;
    
    if t > 100
        addpoints(handles.plot1, 0, NaN);
        addpoints(handles.plot2, 0, NaN);
        addpoints(handles.plot3, 0, NaN);
        addpoints(handles.plot4, 0, NaN);
        t = 0;
    end

    %if i > 1640
    %    assignin('base', 'ecg_data', ecg_data);
    %end
    drawnow

function button_start_Callback(hObject, eventdata, handles)
    %% --- Executes on button press in start.
    
    if handles.checkbox_table.Value
        % Use values from table
        % Get Data
        data = handles.uitable_register.Data;
        data = hex2dec(cell2mat(data)).';
    else
        adc_val = collect_data(handles);
        data(1:25) = 0;

        % Create configure data
        data(1) = adc_val.resultion_mode + adc_val.data_rate;
        data(2) = adc_val.test_source + adc_val.test_freq + adc_val.test_amplitude;
        data(3) = 128;
        data(5:12) = adc_val.measure_mode + adc_val.gain;
    end

    send_data = [17 17 1 data];
    fwrite(handles.serial_obj, send_data);
    handles.text_debug.String = ['Send data to adc: [' num2str(send_data) ']'];

function button_stop_Callback(hObject, eventdata, handles)
    %% --- Executes on button press in stop.
    data(1:25) = 0;
    fwrite(handles.serial_obj, [17 17 16 data])
    
    % Close file and save the values in workspace
    fclose(handles.fileID);
    
    % Reopen and import data
    fileID = fopen(handles.fileName, 'r', 'n');
    data = fread(fileID,Inf,'double=>double');
    [A, ~] = size(data);
    data = reshape(data, [8, A/8]);
    
    % Save file to workspace
    
    checkLabels = {'Save collected data to variable name:'};
    [hdialog, ok_pressed] = export2wsdlg({'Save collected data to variable name:'}, ...
        {'ecg_data'}, {data}, 'Save data to Workspace');
    fclose(handles.fileID);
    
    % Recreate it
    handles.fileID = fopen(handles.fileName, 'w+', 'n');
    
function popup_axis0_Callback(hObject, eventdata, handles)
    %% --- Executes on selection change in popup_axis0.
    clearpoints(handles.plot1);

function popup_axis1_Callback(hObject, eventdata, handles)
    %% --- Executes on when another popup is choosen
    clearpoints(handles.plot2);

function popup_axis2_Callback(hObject, eventdata, handles)
    %% --- Executes on selection change in popup_axis2.
    clearpoints(handles.plot3);

function popup_axis3_Callback(hObject, eventdata, handles)
    %% --- Executes on selection change in popup_axis3.
    clearpoints(handles.plot4);

function radio_HR_Callback(hObject, eventdata, handles)
    %% --- Executes on button press in radio_HR.
    set(handles.radio_LP, 'Value', 0.0);

function radio_LP_Callback(hObject, eventdata, handles)
    %% --- Executes on button press in radio_LP.
    set(handles.radio_HR, 'Value', 0.0);

function radio_internGen_Callback(hObject, eventdata, handles)
    %% --- Executes on button press in radio_internGen.
    set(handles.radio_extGen, 'Value', 0.0);

function radio_extGen_Callback(hObject, eventdata, handles)
    %% --- Executes on button press in radio_extGen.
    set(handles.radio_interunGen, 'Value', 0.0);

function radio_ampX1_Callback(~, eventdata, handles)
    %% --- Executes on button press in radio_ampX1.
    set(handles.radio_ampX2, 'Value', 0.0);

function radio_ampX2_Callback(hObject, eventdata, handles)
    %% --- Executes on button press in radio_ampX2.
    set(handles.radio_ampX1, 'Value', 0.0);

function checkbox_table_Callback(hObject, eventdata, handles)
%% --- Executes on button press in checkbox_table.
    if handles.checkbox_table.Value
        handles.uitable_register.Enable = 'on';
    else
        handles.uitable_register.Enable = 'off';
    end
    
function varargout = proveGUI_OutputFcn(hObject, eventdata, handles) 
    %% --- Outputs from this function are returned to the command line.
    % varargout  cell array for returning output args (see VARARGOUT);
    % hObject    handle to figure
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)

    % Get default command line output from handles structure
    varargout{1} = handles.output;


