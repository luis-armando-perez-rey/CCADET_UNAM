function varargout = datos_cuatro_puntas(varargin)
% DATOS_CUATRO_PUNTAS MATLAB code for datos_cuatro_puntas.fig
%      DATOS_CUATRO_PUNTAS, by itself, creates a new DATOS_CUATRO_PUNTAS or raises the existing
%      singleton*.
%
%      H = DATOS_CUATRO_PUNTAS returns the handle to a new DATOS_CUATRO_PUNTAS or the handle to
%      the existing singleton*.
%       
%      DATOS_CUATRO_PUNTAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATOS_CUATRO_PUNTAS.M with the given input arguments.
%
%      DATOS_CUATRO_PUNTAS('Property','Value',...) creates a new DATOS_CUATRO_PUNTAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before datos_cuatro_puntas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to datos_cuatro_puntas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help datos_cuatro_puntas

% Last Modified by GUIDE v2.5 07-Mar-2016 12:46:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @datos_cuatro_puntas_OpeningFcn, ...
                   'gui_OutputFcn',  @datos_cuatro_puntas_OutputFcn, ...
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


% --- Executes just before datos_cuatro_puntas is made visible.
function datos_cuatro_puntas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to datos_cuatro_puntas (see VARARGIN)
% Choose default command line output for datos_cuatro_puntas
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
initialize_gui(hObject, handles, false);

% UIWAIT makes datos_cuatro_puntas wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = datos_cuatro_puntas_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function corriente_inicial_Callback(hObject, eventdata, handles)
% hObject    handle to corriente_inicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of corriente_inicial as text
%        str2double(get(hObject,'String')) returns contents of corriente_inicial as a double
corriente_inicial=str2double(get(hObject, 'String'));
if isnan(corriente_inicial)
    set(hObject, 'String', -1);
    errordlg('La entrada de corriente inicial no es un número','Error');
end
handles.metricdata.corriente_inicial=corriente_inicial;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function corriente_inicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to corriente_inicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function corriente_final_Callback(hObject, eventdata, handles)
% hObject    handle to corriente_final (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of corriente_final as text
%        str2double(get(hObject,'String')) returns contents of corriente_final as a double
corriente_final=str2double(get(hObject, 'String'));
if isnan(corriente_final)
    set(hObject, 'String', 1);
    errordlg('La entrada de corriente final no es un número','Error');
end
handles.metricdata.corriente_final=corriente_final;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function corriente_final_CreateFcn(hObject, eventdata, handles)
% hObject    handle to corriente_final (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num_paso_Callback(hObject, eventdata, handles)
% hObject    handle to num_paso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num_paso as text
%        str2double(get(hObject,'String')) returns contents of num_paso as a double

num_paso=str2double(get(hObject, 'String'));
if isnan(num_paso)
    set(hObject, 'String', 10);
    errordlg('La entrada de número de pasos no es un número','Error');
    handles.metricdata.num_paso=num_paso;
else
    handles.metricdata.num_paso=num_paso;
    guidata(hObject,handles)
end


% --- Executes during object creation, after setting all properties.
function num_paso_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_paso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in escala_corriente_final.
function escala_corriente_final_Callback(hObject, eventdata, handles)
% hObject    handle to escala_corriente_final (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns escala_corriente_final contents as cell array
%        contents{get(hObject,'Value')} returns selected item from escala_corriente_final


% --- Executes during object creation, after setting all properties.
function escala_corriente_final_CreateFcn(hObject, eventdata, handles)
% hObject    handle to escala_corriente_final (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in escala_corriente_inicial.
function escala_corriente_inicial_Callback(hObject, eventdata, handles)
% hObject    handle to escala_corriente_inicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns escala_corriente_inicial contents as cell array
%        contents{get(hObject,'Value')} returns selected item from escala_corriente_inicial


% --- Executes during object creation, after setting all properties.
function escala_corriente_inicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to escala_corriente_inicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in escala_tiempo.
function escala_tiempo_Callback(hObject, eventdata, handles)
% hObject    handle to escala_tiempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns escala_tiempo contents as cell array
%        contents{get(hObject,'Value')} returns selected item from escala_tiempo


% --- Executes during object creation, after setting all properties.
function escala_tiempo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to escala_tiempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject)
imshow('cuatro_puntas_conexion.jpg')
% Hint: place code in OpeningFcn to populate axes1
% --- Executes on button press in Medir.
function Medir_Callback(hObject, eventdata, handles)
% hObject    handle to Medir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
escala_i_0=get(handles.escala_corriente_inicial,'Value');
escala_i_f=get(handles.escala_corriente_final,'Value');
escala_duracion=get(handles.escala_tiempo,'Value');
switch escala_i_0
    case 1
        i_0=handles.metricdata.corriente_inicial*1e-9;
    case 2
        i_0=handles.metricdata.corriente_inicial*1e-6;
    case 3
        i_0=handles.metricdata.corriente_inicial*1e-3;
end
switch escala_i_f
    case 1
        i_f=handles.metricdata.corriente_final*1e-9;
    case 2
        i_f=handles.metricdata.corriente_final*1e-6;
    case 3
        i_f=handles.metricdata.corriente_final*1e-3;
end
switch escala_duracion
    case 1
        duracion=handles.metricdata.duracion_paso;
    case 2
        duracion=handles.metricdata.duracion_paso*1e-3;
end
pasos=handles.metricdata.num_paso;
%fprintf('Corriente inicial %d,Corriente Final%d,Duracion %d,Pasos %d',i_0,i_f,duracion,pasos);
if [isnan(i_0)|isnan(i_f)|isnan(pasos)|isnan(duracion)]
else
    [A] = cuatro_puntas1(i_0,i_f,pasos,duracion)
end



function duracion_paso_Callback(hObject, eventdata, handles)
% hObject    handle to duracion_paso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of duracion_paso as text
%        str2double(get(hObject,'String')) returns contents of duracion_paso as a double
duracion_paso=str2double(get(hObject, 'String'));
if isnan(duracion_paso)
    set(hObject, 'String', 0.2);
    errordlg('La entrada de duración de paso no es un número','Error');
end
handles.metricdata.duracion_paso=duracion_paso;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function duracion_paso_CreateFcn(hObject, eventdata, handles)
% hObject    handle to duracion_paso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function initialize_gui(fig_handle, handles, isreset)
% If the metricdata field is present and the reset flag is false, it means
% we are we are just re-initializing a GUI by calling it from the cmd line
% while it is up. So, bail out as we dont want to reset the data.
if isfield(handles, 'metricdata') && ~isreset
    return;
end
handles.metricdata.corriente_inicial = -1;
handles.metricdata.corriente_final  = 1;
handles.metricdata.duracion_paso=0.2;
handles.metricdata.num_paso=10;

set(handles.corriente_inicial, 'String', handles.metricdata.corriente_inicial);
set(handles.corriente_final,  'String', handles.metricdata.corriente_final);
set(handles.duracion_paso, 'String', handles.metricdata.duracion_paso);
set(handles.num_paso, 'String', handles.metricdata.num_paso);

% Update handles structure
guidata(handles.figure1, handles);


% --- Executes on key press with focus on escala_corriente_inicial and none of its controls.
function escala_corriente_inicial_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to escala_corriente_inicial (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function imagen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imagen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject)
imshow('cuatro_puntas_conexion.jpg')
% Hint: place code in OpeningFcn to populate imagen



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
