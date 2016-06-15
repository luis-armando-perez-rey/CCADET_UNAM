function varargout = datos_dos_puntas(varargin)
% DATOS_DOS_PUNTAS MATLAB code for datos_dos_puntas.fig
%      DATOS_DOS_PUNTAS, by itself, creates a new DATOS_DOS_PUNTAS or raises the existing
%      singleton*.
%
%      H = DATOS_DOS_PUNTAS returns the handle to a new DATOS_DOS_PUNTAS or the handle to
%      the existing singleton*.
%       
%      DATOS_DOS_PUNTAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATOS_DOS_PUNTAS.M with the given input arguments.
%
%      DATOS_DOS_PUNTAS('Property','Value',...) creates a new DATOS_DOS_PUNTAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before datos_dos_puntas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to datos_dos_puntas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help datos_dos_puntas

% Last Modified by GUIDE v2.5 14-Jun-2016 14:40:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @datos_dos_puntas_OpeningFcn, ...
                   'gui_OutputFcn',  @datos_dos_puntas_OutputFcn, ...
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


% --- Executes just before datos_dos_puntas is made visible.
function datos_dos_puntas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to datos_dos_puntas (see VARARGIN)
% Choose default command line output for datos_dos_puntas
handles.output = hObject;
axes(handles.grafica1);
imshow('dos_puntas_conexion.jpg');
% Update handles structure
guidata(hObject, handles);
initialize_gui(hObject, handles, false);

% UIWAIT makes datos_dos_puntas wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = datos_dos_puntas_OutputFcn(hObject, eventdata, handles) 
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



function voltaje_Callback(hObject, eventdata, handles)
% hObject    handle to voltaje (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of voltaje as text
%        str2double(get(hObject,'String')) returns contents of voltaje as a double
voltaje=str2double(get(hObject, 'String'));
if isnan(voltaje)
    set(hObject, 'String', -1);
    errordlg('La entrada de voltaje no es un número','Error');
end
handles.metricdata.voltaje=voltaje;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function voltaje_CreateFcn(hObject, eventdata, handles)
% hObject    handle to voltaje (see GCBO)
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







% --- Executes on selection change in escala_voltaje.
function escala_voltaje_Callback(hObject, eventdata, handles)
% hObject    handle to escala_voltaje (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns escala_voltaje contents as cell array
%        contents{get(hObject,'Value')} returns selected item from escala_voltaje


% --- Executes during object creation, after setting all properties.
function escala_voltaje_CreateFcn(hObject, eventdata, handles)
% hObject    handle to escala_voltaje (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in 

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

%% Medición de la corriente al inyectar un voltaje
% Este botón permite la comunicación con el equipo Keithley para poder
% inyectar un voltaje y medir la corriente en la muestra. La función
% también grafica la corriente vs. el voltaje y guarda los datos producidos
% en un archivo de apoyo llamado datos.txt

%% Obtención de los parámetros iniciales para la rutina

% Obtenemos los valores del voltaje que se inyectará con su escala
% correspondiente. La escala se obtiene del objeto escala_voltaje y el
% voltaje del objeto voltaje. La escala de duración se obtiene de la misma
% forma.

escala_voltaje=get(handles.escala_voltaje,'Value'); 
escala_duracion=get(handles.escala_tiempo,'Value');
pasos=handles.metricdata.num_paso;

% Definimos el voltaje a partir de la escala y lo guardamos.
switch escala_voltaje
    case 1
        V=handles.metricdata.voltaje;
    case 2
        V=handles.metricdata.voltaje*1e-3;
    case 3
        V=handles.metricdata.voltaje*1e-6;
    case 4
        V=handles.metricdata.voltaje*1e-9;
end

% Definimos la duración del paso a partir de la escala y lo guardamos.
switch escala_duracion
    case 1
        duracion=handles.metricdata.duracion_paso;
    case 2
        duracion=handles.metricdata.duracion_paso*1e-3;
end

%% Llamado de la rutina de medición
% Se introducen los parámetros del paso anterior a nuestra función de
% comunicación.

if [isnan(V)|isnan(pasos)|isnan(duracion)]
% Si los parámetros que introdujimos no son números la función se
% corta.
    return;
else
% Si los parámetros son numéricos, se procede a la medición de la muestra.
    %Señal de advertencia para la medición.
    h=warndlg('Tenga cuidado con los electrodos. Espere a la segunda señal sonora.',...
              'Medicion en proceso'); 
    %Rutina de medición.      
    A = dos_puntas1(V,pasos,duracion); 
% Guardado de los datos en archivo de apoyo datos.txt
    dir=fopen('datos.txt','w+');
    fprintf(dir,'%2.5e %2.5e %2.5e %2.5e \r\n',A');
    fclose(dir);
    
% Graficado de los resultados.
    axes(handles.axes3); %Definimos el objeto donde graficaremos.
    cla; %Borramos lo que se encuentre en dicho objeto.
    errorbar(A(:,1),A(:,2),A(:,4),'LineWidth',1.5); %Graficamos con barras de error.
    grid on;
    ylim([min(A(:,2)) max(A(:,2))]);
    xlim([min(A(:,1)) max(A(:,1))]);
    xlabel('Voltaje(V)','FontWeight','bold');
    ylabel('Corriente(A)','FontWeight','bold');
    set(gca,'FontWeight','bold');
    delete(h);
   
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
handles.metricdata.voltaje = 10;
handles.metricdata.duracion_paso=0.2;
handles.metricdata.num_paso=10;
handles.metricdata.incancho=0.001;
handles.metricdata.inclargo=0.001;
handles.metricdata.incespesor=0.0001;


set(handles.voltaje, 'String', handles.metricdata.voltaje);
set(handles.duracion_paso, 'String', handles.metricdata.duracion_paso);
set(handles.num_paso, 'String', handles.metricdata.num_paso);
set(handles.incancho,  'String', handles.metricdata.incancho);
set(handles.inclargo, 'String', handles.metricdata.inclargo);
set(handles.incespesor, 'String', handles.metricdata.incespesor);

% Update handles structure
guidata(handles.figure1, handles);


% --- Executes on key press with focus on escala_voltaje and none of its controls.
function escala_voltaje_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to escala_voltaje (see GCBO)
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



function ancho_Callback(hObject, eventdata, handles)
% hObject    handle to ancho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ancho as text
%        str2double(get(hObject,'String')) returns contents of ancho as a double


% --- Executes during object creation, after setting all properties.
function ancho_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ancho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function largo_Callback(hObject, eventdata, handles)
% hObject    handle to largo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of largo as text
%        str2double(get(hObject,'String')) returns contents of largo as a double


% --- Executes during object creation, after setting all properties.
function largo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to largo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function espesor_Callback(hObject, eventdata, handles)
% hObject    handle to espesor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of espesor as text
%        str2double(get(hObject,'String')) returns contents of espesor as a double


% --- Executes during object creation, after setting all properties.
function espesor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to espesor (see GCBO)
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


% --- Executes on mouse press over axes background.
function axes3_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function grafica1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to grafica1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate grafica1


% --- Executes on mouse press over axes background.
function grafica1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to grafica1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)






% --------------------------------------------------------------------
function menu_principal_Callback(hObject, eventdata, handles)
% hObject    handle to menu_principal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Menu2_Callback(hObject, eventdata, handles)
% hObject    handle to Menu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in calcular2.
function calcular2_Callback(hObject, eventdata, handles)
% hObject    handle to calcular2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%% Función para calcular la resistividad y graficar aproximaciones.

% Primero recuperamos los datos del archivo datos.txt. De aquí obtendremos
% el voltaje y la corriente.
dir=fopen('datos.txt','r');
A=fscanf(dir,'%e %e %e %e',[4 Inf])';
fclose(dir);

% Ahora definimos nuestras variables a partir de los datos extraídos.
V=A(:,1); %Voltaje inyectado
I=A(:,2); %Corriente medida
dI=A(:,4); %Incertidumbre de la corriente medida
Nmedidas=length(V); %Número de medidas

%% Mínimos cuadrados
% A continuación se definen cantidades importantes para el método de
% mínimos cuadrados.
sumV=sum(V); %Suma de voltajes
sumI=sum(I); %Suma de corrientes
sumax2=sum(V.^2); %Suma de voltajes al cuadrado
sumay2=sum(I.^2); %Suma de corrientes al cuadrado
sumaxy=sum(V.*I); %Suma del producto entre voltaje y corriente.
discriminante=((Nmedidas*sumax2)-(sumV^2)); %Discriminante del sistem.
m=((Nmedidas*sumaxy)-(sumV*sumI))/discriminante; %Pendiente obtenida
b=(sumax2*sumI-sumaxy*sumV)/discriminante; %Ordenada obtenida
sI=sqrt(sum((I-m.*V-b).^2)/(Nmedidas-2)); %Incertidumbre de la corriente
dm=sqrt(Nmedidas/discriminante)*sI; %Incertidumbre de la pendiente
db=sI*sqrt(sumax2/discriminante); %Incertidumbre de la ordenada
r=(Nmedidas*sumaxy-sumV*sumI)/(sqrt(Nmedidas*sumax2-sumV^2)...
   *sqrt(Nmedidas*sumay2-sumI^2)); % Coeficiente de correlación.

%% Gráfica de ajuste y valores medidos
% Obtenemos la recta de mejor ajuste y las rectas asociadas a la
% incertidumbre.
ajuste0=b+V.*m; %Recta que mejor ajusta a los datos
ajuste1=b+V.*(m-dm); %Recta con pendiente m-dm
ajuste2=b+V.*(m+dm); %Recta con pendiente m+dm


% Posteriormente procederemos a graficar tanto los datos como las rectas
% de ajuste. 
axes(handles.axes3);
cla;
grid on;
% Grafica de las mediciones con su incertidumbre
errorbar(V,I,dI,'LineWidth',1.5);
hold on;
% Grafica de los valores y de la regresión lineal
plot(V,ajuste0,'-rx','LineWidth',1.5);
plot(V,ajuste2,':kx','LineWidth',1.5);
plot(V,ajuste1,':kx','LineWidth',1.5);
% Formato
xlim([min(V) max(V)]);
ylim([min([min(ajuste2),min(ajuste1),min(ajuste0),min(I)])...
    max([max(ajuste2),max(ajuste1),max(ajuste0),max(I)])]);
xlabel('Voltaje [V]','FontWeight','b');
ylabel('Corriente [A]','FontWeight','b');
set(gca,'FontWeight','bold');
legend('Medicion','Ajuste lineal','Límite 1','Límite 2','Location','best');

%% Cálculo de resistividad y retorno de valores
%Imprimir resultados en pantalla de resistividad,resistencia, conductividad
%y coeficiente de correlación.


% Se extraen los valores geométricos de la muestra junto con sus
% incertidumbres para el cálculo de los valores de resistividad y
% conductividad.
dw=str2double(get(handles.incancho,'String')); 
dL=str2double(get(handles.inclargo,'String'));
dt=str2double(get(handles.incespesor,'String'));
w=str2double(get(handles.ancho,'String'));
L=str2double(get(handles.largo,'String'));
t=str2double(get(handles.espesor,'String'));
rho=(1/m)*w*t/L;
drho=abs(rho*(abs(dm/m)+abs(dw/w)+abs(dt/t)+abs(dL/L)));


% Se regresan todos los valores calculados
set(handles.resistencia,'String',1/m); %Resistencia.
set(handles.incresistencia,'String',dm/m^2); %Incertidumbre de resistencia.
set(handles.resistividad,'String',rho); %Resistividad
set(handles.incresistividad,'String',drho); %Incertidumbre de resistividad.
set(handles.conductividad,'String',1/rho); %Conductividad
set(handles.incconductividad,'String',drho/rho^2); %Incertidumbre conductividad
set(handles.coefcorrel,'String',r); %Coeficiente de correlación.

% --- Executes on button press in graficar_resistividad.
function graficar_resistividad_Callback(hObject, eventdata, handles)
% hObject    handle to graficar_resistividad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%% Cálculo de resistividad en funcion del voltaje
% En caso de que las mediciones muestren que no se cuenta con un material
% óhmico, se puede calcular la resistividad en función del voltaje.

% Tomamos los datos del archivo datos.txt
dir=fopen('datos.txt','r');
A=fscanf(dir,'%e %e %e %e',[4 Inf])';
fclose(dir);

% Asignamos los valores apropiados 
V=A(:,1); %Voltaje inyectado
I=A(:,2); %Corriente medida
dV=A(:,3); %Incertidumbre de voltaje
dI=A(:,4); %Incertidumbre de corriente
dw=str2double(get(handles.incancho,'String')); %Incertidumbre de ancho
dL=str2double(get(handles.inclargo,'String')); %Incertidumbre de largo
dt=str2double(get(handles.incespesor,'String')); %Incertidumbre de espesor
w=str2double(get(handles.ancho,'String')); %Ancho
L=str2double(get(handles.largo,'String')); %Largo
t=str2double(get(handles.espesor,'String')); %Espesor
J=I./(w*t); %Densidad de corriente
E=V./L; %Campo eléctrico

% Calcularemos la resistividad a partir de la pendiente de $$E=\rhoJ$$
V2=ones(length(V)-1,1); %Definimos un vector de voltaje
rho=ones(length(V)-1,1); %Definimos un vector de resistividad
drho=ones(length(V)-1,1); %Definimos un vector de incertidumbre de resistividad
for i=1:length(V)-1
    %Se obtiene el valor de voltaje como el promedio entre los extremos de
    %cada intervalo
    V2(i)=(V(i)+V(i+1))/2; 
end
for i=1:length(V)-1
    %Se obtiene el valor de la resistividad a partir de la pendiente
    %calculada entre cada medición.
    rho(i)=(E(i+1)-E(i))/(J(i+1)-J(i));
end

for i=1:length(V)-1
    %Para la incertidumbre de la resistividad se realizan los cálculos
    %correspondientes
    dE1=abs(E(i)*((abs(dw/w)+abs(dt/t)+abs(dV(i)/V(i)))));
    dE2=abs(E(i+1)*((abs(dw/w)+abs(dt/t)+abs(dV(i+1)/V(i+1)))));
    dJ1=abs(J(i)*((abs(dw/w)+abs(dt/t)+abs(dI(i)/I(i)))));
    dJ2=abs(J(i+1)*((abs(dw/w)+abs(dt/t)+abs(dI(i+1)/I(i+1)))));
    drho(i)=rho(i)*(abs((dE1+dE2)/(E(i+1)-E(i)))+...
            abs((dJ1+dJ2)/(J(i+1)-J(i))));
end

%% Graficar resistividad $$\rho$$ vs. $$V$$
axes(handles.axes3);
cla;
% Gráfica de resistividad en función del voltaje
errorbar(V2,rho,drho,'-bx','Linewidth',1.5);

%Formato
xlabel('Voltaje (V)','FontWeight','b');
ylabel('Resistividad (Ohm*cm)','FontWeight','b');
set(gca,'FontWeight','bold');
grid on;
xlim([min(V2)-0.01*abs(max(V2)-min(V2)) max(V2)+0.01*abs(max(V2)-min(V2))])
supRho=rho+drho;
infRho=rho-drho;
intervaloy=abs(max(rho)-min(rho));
ylim([min(infRho)-0.01*intervaloy max(supRho)+0.01*intervaloy]);
legend('hide');
%Guardar los datos
B=zeros(length(V2),3); %Definimos una matriz B del tamaño apropiado.
B(:,1)=V2; %Guardamos el voltaje
B(:,2)=rho; %Guardamos la resistividad
B(:,3)=drho; %Guardamos la incertidumbre de la resistividad.
dir=fopen('datos2.txt','w+');
fprintf(dir,'%2.5e %2.5e %2.5e \r\n',B');
fclose(dir);

% --------------------------------------------------------------------
function guardar_Callback(hObject, eventdata, handles)
% hObject    handle to guardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%% Menú-- Guardado de datos
% Estas instrucciones permiten el guardado de los datos en un archivo en
% uno de las carpetas seleccionadas con un nombre dado.


%Primero se buscan los valores que se encuentran en la aplicación.
R=get(handles.resistencia,'String'); %Resistencia
dR=get(handles.incresistencia,'String'); %Incertidumbre resistencia
rho=get(handles.resistividad,'String'); %Resistividad 
drho=get(handles.incresistividad,'String'); %Incertidumbre de resistencia
sigma=get(handles.conductividad,'String'); %Conductividad
dsigma=get(handles.incconductividad,'String'); %Incertidumbre de conductividad
r=get(handles.coefcorrel,'String'); %Coef. de correlación
dir=fopen('datos.txt','r');
%Valores de las mediciones. Vease la función del botón calcular
A=fscanf(dir,'%e %e %e %e',[4 Inf])'; 
fclose(dir);
dir=fopen('datos2.txt','r');
%Valores del cálculo de resistividad vease la función del botón
%graficar_resistividad
B=fscanf(dir,'%e %e %e ',[3 Inf])'; 
fclose(dir);

% A continuación se elige la dirección donde se guardarán los datos
nombre_folder=uigetdir; %Se pide la localicación del folder
nombre_archivo=inputdlg('Diga el nombre del archivo'); %Nombre del archivo
%Se construye la dirección donde todo se guardará
path_total=strcat(nombre_folder,'\',nombre_archivo{1}); 
h=warndlg('Guardando los datos, espere antes de abrir el documento.','Guardar');

%Se escriben los datos en el archivo de tipo excel.
    xlswrite(path_total,{'Voltaje(V)','Corriente(A)','Inc. Voltaje(V)',...
        'Inc. Corriente (A)'});
    xlswrite(path_total,A,'Sheet1','A2');
    xlswrite(path_total,{'Resistencia (Ohm)','Inc. Resistencia(Ohm)';R,dR;...
        'Resistividad (Ohm*cm)','Inc. Resistividad (Ohm*cm)';rho,drho;...
        'Conductividad (S/cm)','Inc. Conductividad (S/cm)';sigma,dsigma;...
        'Coef. de Correl.',' ';r,' '},'Sheet1','F1');
    xlswrite(path_total,{'Voltaje (V)','Resistividad (Ohm*cm)',...
                        'Inc. Resistividad (Ohm*cm)'},'Sheet2');
    xlswrite(path_total,B,'Sheet2','A2');

delete(h);




function incancho_Callback(hObject, eventdata, handles)
% hObject    handle to incancho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of incancho as text
%        str2double(get(hObject,'String')) returns contents of incancho as a double


% --- Executes during object creation, after setting all properties.
function incancho_CreateFcn(hObject, eventdata, handles)
% hObject    handle to incancho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inclargo_Callback(hObject, eventdata, handles)
% hObject    handle to inclargo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inclargo as text
%        str2double(get(hObject,'String')) returns contents of inclargo as a double


% --- Executes during object creation, after setting all properties.
function inclargo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inclargo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function incespesor_Callback(hObject, eventdata, handles)
% hObject    handle to incespesor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of incespesor as text
%        str2double(get(hObject,'String')) returns contents of incespesor as a double


% --- Executes during object creation, after setting all properties.
function incespesor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to incespesor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function uipushtool1_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% A continuación se elige la dirección donde se guardarán los datos
% nombre_folder=uigetdir; %Se pide la localicación del folder
% nombre_archivo=inputdlg('Diga el nombre del archivo'); %Nombre del archivo
% %Se construye la dirección donde todo se guardará
% path_total=strcat(nombre_folder,'\',nombre_archivo{1}); 
% axes(handles.axes3)
% plot(1:10,sin(1:10));
% savefig(gca,'hola');
% axes(handles.axes3)
% ax=gca;
% ax.Units = 'pixels';
% pos = ax.Position;
% ti = ax.TightInset;
% handles
F = getframe(handles.axes3);
Image = frame2im(F,[-100 -100 1000 1000]);
imwrite(Image, 'Image.jpg')
%saveas(gcf,'hola','jpeg');
%h=warndlg('Guardando los datos, espere antes de abrir el documento.','Guardar');


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
grafica=get(handles.popupmenu6,'Value');
switch grafica
    case 1;
        dir=fopen('datos.txt','r');
        A=fscanf(dir,'%e %e %e %e',[4 Inf])';
        fclose(dir);
                % Ahora definimos nuestras variables a partir de los datos extraídos.
        V=A(:,1); %Voltaje inyectado
        I=A(:,2); %Corriente medida
        dI=A(:,4); %Incertidumbre de la corriente medida
        Nmedidas=length(V); %Número de medidas

        % Posteriormente procederemos a graficar tanto los datos como las rectas
        % de ajuste. 
        figure(1)
        cla;
        grid on;
        % Grafica de las mediciones con su incertidumbre
        errorbar(V,I,dI,'LineWidth',1.5);
        hold on;

        % Formato
        xlim([min(V) max(V)]);
        ylim([min(I) max(I)]);
        xlabel('Voltaje [V]','FontWeight','b');
        ylabel('Corriente [A]','FontWeight','b');
        set(gca,'FontWeight','bold');
        legend('Medicion','Location','best');
    case 2;
        dir=fopen('datos.txt','r');
        A=fscanf(dir,'%e %e %e %e',[4 Inf])';
        fclose(dir);

        % Ahora definimos nuestras variables a partir de los datos extraídos.
        V=A(:,1); %Voltaje inyectado
        I=A(:,2); %Corriente medida
        dI=A(:,4); %Incertidumbre de la corriente medida
        Nmedidas=length(V); %Número de medidas

        %% Mínimos cuadrados
        % A continuación se definen cantidades importantes para el método de
        % mínimos cuadrados.
        sumV=sum(V); %Suma de voltajes
        sumI=sum(I); %Suma de corrientes
        sumax2=sum(V.^2); %Suma de voltajes al cuadrado
        sumay2=sum(I.^2); %Suma de corrientes al cuadrado
        sumaxy=sum(V.*I); %Suma del producto entre voltaje y corriente.
        discriminante=((Nmedidas*sumax2)-(sumV^2)); %Discriminante del sistem.
        m=((Nmedidas*sumaxy)-(sumV*sumI))/discriminante; %Pendiente obtenida
        b=(sumax2*sumI-sumaxy*sumV)/discriminante; %Ordenada obtenida
        sI=sqrt(sum((I-m.*V-b).^2)/(Nmedidas-2)); %Incertidumbre de la corriente
        dm=sqrt(Nmedidas/discriminante)*sI; %Incertidumbre de la pendiente

        %% Gráfica de ajuste y valores medidos
        % Obtenemos la recta de mejor ajuste y las rectas asociadas a la
        % incertidumbre.
        ajuste0=b+V.*m; %Recta que mejor ajusta a los datos
        ajuste1=b+V.*(m-dm); %Recta con pendiente m-dm
        ajuste2=b+V.*(m+dm); %Recta con pendiente m+dm


        % Posteriormente procederemos a graficar tanto los datos como las rectas
        % de ajuste. 
        figure(2)
        cla;
        grid on;
        % Grafica de las mediciones con su incertidumbre
        errorbar(V,I,dI,'LineWidth',1.5);
        hold on;
        % Grafica de los valores y de la regresión lineal
        plot(V,ajuste0,'-rx','LineWidth',1.5);
        plot(V,ajuste2,':kx','LineWidth',1.5);
        plot(V,ajuste1,':kx','LineWidth',1.5);
        % Formato
        xlim([min(V) max(V)]);
        ylim([min([min(ajuste2),min(ajuste1),min(ajuste0),min(I)])...
            max([max(ajuste2),max(ajuste1),max(ajuste0),max(I)])]);
        xlabel('Voltaje [V]','FontWeight','b');
        ylabel('Corriente [A]','FontWeight','b');
        set(gca,'FontWeight','bold');
        legend('Medicion','Ajuste lineal','Límite 1','Límite 2','Location','best');
    case 3;
    dir=fopen('datos.txt','r');
    A=fscanf(dir,'%e %e %e %e',[4 Inf])';
    fclose(dir);

    % Asignamos los valores apropiados 
    V=A(:,1); %Voltaje inyectado
    I=A(:,2); %Corriente medida
    dV=A(:,3); %Incertidumbre de voltaje
    dI=A(:,4); %Incertidumbre de corriente
    dw=str2double(get(handles.incancho,'String')); %Incertidumbre de ancho
    dL=str2double(get(handles.inclargo,'String')); %Incertidumbre de largo
    dt=str2double(get(handles.incespesor,'String')); %Incertidumbre de espesor
    w=str2double(get(handles.ancho,'String')); %Ancho
    L=str2double(get(handles.largo,'String')); %Largo
    t=str2double(get(handles.espesor,'String')); %Espesor
    J=I./(w*t); %Densidad de corriente
    E=V./L; %Campo eléctrico

    % Calcularemos la resistividad a partir de la pendiente de $$E=\rhoJ$$
    V2=ones(length(V)-1,1); %Definimos un vector de voltaje
    rho=ones(length(V)-1,1); %Definimos un vector de resistividad
    drho=ones(length(V)-1,1); %Definimos un vector de incertidumbre de resistividad
    for i=1:length(V)-1
        %Se obtiene el valor de voltaje como el promedio entre los extremos de
        %cada intervalo
        V2(i)=(V(i)+V(i+1))/2; 
    end
    for i=1:length(V)-1
        %Se obtiene el valor de la resistividad a partir de la pendiente
        %calculada entre cada medición.
        rho(i)=(E(i+1)-E(i))/(J(i+1)-J(i));
    end

    for i=1:length(V)-1
        %Para la incertidumbre de la resistividad se realizan los cálculos
        %correspondientes
        dE1=abs(E(i)*((abs(dw/w)+abs(dt/t)+abs(dV(i)/V(i)))));
        dE2=abs(E(i+1)*((abs(dw/w)+abs(dt/t)+abs(dV(i+1)/V(i+1)))));
        dJ1=abs(J(i)*((abs(dw/w)+abs(dt/t)+abs(dI(i)/I(i)))));
        dJ2=abs(J(i+1)*((abs(dw/w)+abs(dt/t)+abs(dI(i+1)/I(i+1)))));
        drho(i)=rho(i)*(abs((dE1+dE2)/(E(i+1)-E(i)))+...
                abs((dJ1+dJ2)/(J(i+1)-J(i))));
          
    end

    %% Graficar resistividad $$\rho$$ vs. $$V$$
    figure(3)
    cla;
    % Gráfica de resistividad en función del voltaje
    errorbar(V2,rho,drho,'-bx','Linewidth',1.5);

    %Formato
    xlabel('Voltaje (V)','FontWeight','b');
    ylabel('Resistividad (Ohm*cm)','FontWeight','b');
    set(gca,'FontWeight','bold');
    grid on;
    xlim([min(V2)-0.01*abs(max(V2)-min(V2)) max(V2)+0.01*abs(max(V2)-min(V2))])
    supRho=rho+drho;
    infRho=rho-drho;
    intervaloy=abs(max(rho)-min(rho));
    ylim([min(infRho)-0.01*intervaloy max(supRho)+0.01*intervaloy]);
    legend('hide');
    case 4;
        dir=fopen('datos.txt','r');
    A=fscanf(dir,'%e %e %e %e',[4 Inf])';
    fclose(dir);

    % Asignamos los valores apropiados 
    V=A(:,1); %Voltaje inyectado
    I=A(:,2); %Corriente medida
    dV=A(:,3); %Incertidumbre de voltaje
    dI=A(:,4); %Incertidumbre de corriente
    dw=str2double(get(handles.incancho,'String')); %Incertidumbre de ancho
    dL=str2double(get(handles.inclargo,'String')); %Incertidumbre de largo
    dt=str2double(get(handles.incespesor,'String')); %Incertidumbre de espesor
    w=str2double(get(handles.ancho,'String')); %Ancho
    L=str2double(get(handles.largo,'String')); %Largo
    t=str2double(get(handles.espesor,'String')); %Espesor
    J=I./(w*t); %Densidad de corriente
    E=V./L; %Campo eléctrico

    % Calcularemos la resistividad a partir de la pendiente de $$E=\rhoJ$$
    V2=ones(length(V)-1,1); %Definimos un vector de voltaje
    rho=ones(length(V)-1,1); %Definimos un vector de resistividad
    drho=ones(length(V)-1,1); %Definimos un vector de incertidumbre de resistividad
    for i=1:length(V)-1
        %Se obtiene el valor de voltaje como el promedio entre los extremos de
        %cada intervalo
        V2(i)=(V(i)+V(i+1))/2; 
    end
    for i=1:length(V)-1
        %Se obtiene el valor de la resistividad a partir de la pendiente
        %calculada entre cada medición.
        rho(i)=1/((E(i+1)-E(i))/(J(i+1)-J(i)));
    end

    for i=1:length(V)-1
        %Para la incertidumbre de la resistividad se realizan los cálculos
        %correspondientes
        dE1=abs(E(i)*((abs(dw/w)+abs(dt/t)+abs(dV(i)/V(i)))));
        dE2=abs(E(i+1)*((abs(dw/w)+abs(dt/t)+abs(dV(i+1)/V(i+1)))));
        dJ1=abs(J(i)*((abs(dw/w)+abs(dt/t)+abs(dI(i)/I(i)))));
        dJ2=abs(J(i+1)*((abs(dw/w)+abs(dt/t)+abs(dI(i+1)/I(i+1)))));
        drho(i)=rho(i)*(abs((dE1+dE2)/(E(i+1)-E(i)))+...
                abs((dJ1+dJ2)/(J(i+1)-J(i))));
          
    end

    %% Graficar resistividad $$\rho$$ vs. $$V$$
    figure(3)
    cla;
    % Gráfica de resistividad en función del voltaje
    errorbar(V2,rho,drho,'-bx','Linewidth',1.5);

    %Formato
    xlabel('Voltaje (V)','FontWeight','b');
    ylabel('Conductividad (Ohm/cm)','FontWeight','b');
    set(gca,'FontWeight','bold');
    grid on;
    xlim([min(V2)-0.01*abs(max(V2)-min(V2)) max(V2)+0.01*abs(max(V2)-min(V2))])
    supRho=rho+drho;
    infRho=rho-drho;
    intervaloy=abs(max(rho)-min(rho));
    ylim([min(infRho)-0.01*intervaloy max(supRho)+0.01*intervaloy]);
    legend('hide');    
end

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
