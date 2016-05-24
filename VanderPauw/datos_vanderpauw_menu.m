function varargout = datos_vanderpauw_menu(varargin)
% DATOS_VANDERPAUW_MENU MATLAB code for datos_vanderpauw_menu.fig
%      DATOS_VANDERPAUW_MENU, by itself, creates a new DATOS_VANDERPAUW_MENU or raises the existing
%      singleton*.
%
%      H = DATOS_VANDERPAUW_MENU returns the handle to a new DATOS_VANDERPAUW_MENU or the handle to
%      the existing singleton*.
%
%      DATOS_VANDERPAUW_MENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATOS_VANDERPAUW_MENU.M with the given input arguments.
%
%      DATOS_VANDERPAUW_MENU('Property','Value',...) creates a new DATOS_VANDERPAUW_MENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before datos_vanderpauw_menu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to datos_vanderpauw_menu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help datos_vanderpauw_menu

% Last Modified by GUIDE v2.5 04-Mar-2016 11:45:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @datos_vanderpauw_menu_OpeningFcn, ...
                   'gui_OutputFcn',  @datos_vanderpauw_menu_OutputFcn, ...
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


% --- Executes just before datos_vanderpauw_menu is made visible.
function datos_vanderpauw_menu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to datos_vanderpauw_menu (see VARARGIN)
% Choose default command line output for datos_vanderpauw_menu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
initialize_gui(hObject, handles, false);

% UIWAIT makes datos_vanderpauw_menu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = datos_vanderpauw_menu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function corriente_Callback(hObject, eventdata, handles)
% hObject    handle to corriente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of corriente as text
%        str2double(get(hObject,'String')) returns contents of corriente as a double
corriente=str2double(get(hObject, 'String'));
if isnan(corriente)
    set(hObject, 'String', 1);
    errordlg('La entrada de corriente no es un número','Error');
    handles.metricdata.corriente=corriente;
else
    handles.metricdata.corriente=corriente;
    guidata(hObject,handles)
end


% --- Executes during object creation, after setting all properties.
function corriente_CreateFcn(hObject, eventdata, handles)
% hObject    handle to corriente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numero_medidas_Callback(hObject, eventdata, handles)
% hObject    handle to numero_medidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numero_medidas as text
%        str2double(get(hObject,'String')) returns contents of numero_medidas as a double
numero_medidas=str2double(get(hObject, 'String'));
if isnan(numero_medidas)
    set(hObject, 'String', 1);
    errordlg('La entrada de corriente no es un número','Error');
end
 handles.metricdata.numero_medidas=numero_medidas;
guidata(hObject,handles)



% --- Executes during object creation, after setting all properties.
function numero_medidas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numero_medidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in escala_corriente.
function escala_corriente_Callback(hObject, eventdata, handles)
% hObject    handle to escala_corriente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns escala_corriente contents as cell array
%        contents{get(hObject,'Value')} returns selected item from escala_corriente


% --- Executes during object creation, after setting all properties.
function escala_corriente_CreateFcn(hObject, eventdata, handles)
% hObject    handle to escala_corriente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in escala.
function escala_Callback(hObject, eventdata, handles)
% hObject    handle to escala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns escala contents as cell array
%        contents{get(hObject,'Value')} returns selected item from escala


% --- Executes during object creation, after setting all properties.
function escala_CreateFcn(hObject, eventdata, handles)
% hObject    handle to escala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in boton_medicion.
function boton_medicion_Callback(hObject, eventdata, handles)
% hObject    handle to boton_medicion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
medidas=handles.metricdata.medidas;
corriente=handles.metricdata.corriente;
escala=get(handles.escala,'Value');
numero_medidas=handles.metricdata.numero_medidas;
duracion=handles.metricdata.duracion;
if medidas==0
    errordlg('No se ha seleccionado una medida','Error');
    return;
else
    if isnan(medidas)||isnan(corriente)||isnan(numero_medidas)||isnan(duracion)
        return;
    else
        corriente=eleccion_escala_corriente(escala,corriente);
        if corriente>=0.2
            eleccion=questdlg('Las corrientes son mayores o iguales a los 0.2 Amperes las cuales pueden ser mortales y dañar el equipo. ¿Desea continuar?',...
                '¡¡¡Atención!!!','Continuar con medición','Cancelar','Cancelar');
            switch eleccion
                case 'Continuar con medición'
                     eleccion2=questdlg('¿Está seguro de querer continuar con la corriente mayor o igual a 0.2 Amperes? Esto puede ser riesgoso para la salud o el equipo, tenga precaución.',...
                         'Confirmación','Continuar','Cancelar','Cancelar');
                     switch eleccion2
                         case 'Continuar'
                               h=warndlg('Tenga cuidado con los electrodos. Espere a la segunda señal sonora.','Medicion en proceso');
                               B=funcion_vanderpauw(duracion,corriente,numero_medidas);
                               delete(h);
                         case 'Cancelar'
                             return;
                     end
                case 'Cancelar'
                     return;
            end
        else
            h=warndlg('Tenga cuidado con los electrodos. Espere a la segunda señal sonora.','Medicion en proceso');
            A=funcion_vanderpauw(duracion,corriente,numero_medidas);
            dir=fopen('datos.txt','w+')
            fprintf(dir,'Corriente(A), Voltaje(V), Corriente(A), Voltaje(V)\n\n');
            fprintf(dir,'%d %d %d %d \r\n',A);
            fclose(dir)
            B=zeros(3,2);
            B(1,1)=mean(A(:,1));
            B(2,1)=mean(A(:,2));
            B(1,2)=mean(A(:,3));
            B(2,2)=mean(A(:,4));
            B(3,1)=abs(100*std(A(:,2))/B(2,1));
            B(3,2)=abs(100*std(A(:,4))/B(2,2));
            delete(h);
        end
    end
end
switch medidas
    case 1
        set(handles.textV1,'String',B(2,1));
        set(handles.textV2,'String',B(2,2));
        set(handles.textD1,'String',B(3,1));
        set(handles.textD2,'String',B(3,2));
        set(handles.corriente_base,'String',abs(B(1,1)));
    case 2
        set(handles.textV3,'String',B(2,1));
        set(handles.textV4,'String',B(2,2));
        set(handles.textD3,'String',B(3,1));
        set(handles.textD4,'String',B(3,2));
        set(handles.corriente_base,'String',abs(B(1,1)));
    case 3
        set(handles.textV5,'String',B(2,1));
        set(handles.textV6,'String',B(2,2));
        set(handles.textD5,'String',B(3,1));
        set(handles.textD6,'String',B(3,2));
        set(handles.corriente_base,'String',abs(B(1,1)));
    case 4
        set(handles.textV7,'String',B(2,1));
        set(handles.textV8,'String',B(2,2));
        set(handles.textD7,'String',B(3,1));
        set(handles.textD8,'String',B(3,2));
        set(handles.corriente_base,'String',abs(B(1,1)));
end



% Hint: get(hObject,'Value') returns toggle state of boton_medicion

function initialize_gui(fig_handle, handles, isreset)
% If the metricdata field is present and the reset flag is false, it means
% we are we are just re-initializing a GUI by calling it from the cmd line
% while it is up. So, bail out as we dont want to reset the data.
if isfield(handles, 'metricdata') && ~isreset
    return;
end
handles.metricdata.corriente = 1;
handles.metricdata.numero_medidas  = 10;
handles.metricdata.medidas=0;
handles.metricdata.duracion=1;
handles.metricdata.espesor=1;

set(handles.corriente, 'String', handles.metricdata.corriente);
set(handles.numero_medidas,  'String', handles.metricdata.numero_medidas);
set(handles.duracion, 'String', handles.metricdata.duracion);
set(handles.espesor,'String', handles.metricdata.espesor);
imshow('VanPauw.png');

% Update handles structure
guidata(handles.figure1, handles);


% --------------------------------------------------------------------
function uipanel2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected object is changed in uipanel2.
function uipanel2_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel2 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
    case 'medida1'
        handles.metricdata.medidas=1;
        imshow('Medicion_1.png');
        guidata(hObject,handles);
    case 'medida2'        
        handles.metricdata.medidas=2;
        imshow('Medicion_2.png')
        guidata(hObject,handles);
    case 'medida3'
        handles.metricdata.medidas=3;
        imshow('Medicion_3.png')
        guidata(hObject,handles);
    case 'medida4'
        handles.metricdata.medidas=4;
        imshow('Medicion_4.png')
        guidata(hObject,handles);
        
    guidata(hObject,handles)
end


% --- Executes during object creation, after setting all properties.
function uipanel2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function duracion_Callback(hObject, eventdata, handles)
% hObject    handle to duracion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of duracion as text
%        str2double(get(hObject,'String')) returns contents of duracion as a double
duracion=str2double(get(hObject, 'String'));
if isnan(duracion)
    set(hObject, 'String', 1);
    errordlg('La entrada de duración no es un número','Error');
end
 handles.metricdata.duracion=duracion;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function duracion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to duracion (see GCBO)
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
espesor=str2double(get(hObject, 'String'));
if isnan(espesor)
    set(hObject, 'String', 1);
    errordlg('La entrada de espesor no es un número','Error');
end
 handles.metricdata.espesor=espesor;
guidata(hObject,handles)



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


% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)
% hObject    handle to calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
espesor=handles.metricdata.espesor;
if isnan(espesor)
    return;
else
    V=ones(8,1);
    rho=ones(2,1);
    sigma=ones(2,1);
    I=str2double(get(handles.corriente_base,'String'));
    V(1)=str2double(get(handles.textV1,'String'));
    V(2)=str2double(get(handles.textV2,'String'));
    V(3)=str2double(get(handles.textV3,'String'));
    V(4)=str2double(get(handles.textV4,'String'));
    V(5)=str2double(get(handles.textV5,'String'));
    V(6)=str2double(get(handles.textV6,'String'));
    V(7)=str2double(get(handles.textV7,'String'));
    V(8)=str2double(get(handles.textV8,'String'));
    Q1=abs(V(2)-V(1))/abs(V(4)-V(3));
    Q2=abs(V(6)-V(5))/abs(V(8)-V(7));
    F1=factor_correccion(Q1);
    F2=factor_correccion(Q2);
    rho(1)=abs((F1*espesor*pi()*(V(1)+V(3)-V(2)-V(4)))/(log(2)*4*I));
    rho(2)=abs((F2*espesor*pi()*(V(5)+V(7)-V(6)-V(8)))/(log(2)*4*I));
    fprintf('Rho %d,%d',rho(1),rho(2));
    fprintf('Sigma %d,%d',sigma(1),sigma(2));
    sigma(1)=1/rho(1);
    sigma(2)=1/rho(2);
    fprintf('Rho %d,%d',rho(1),rho(2));
    fprintf('Sigma %d,%d',sigma(1),sigma(2));
    rho_final=mean(rho);
    sigma_final=1/rho_final;
    set(handles.textrho,'String',rho_final);
    set(handles.textsigma,'String',sigma_final);
    set(handles.textDrho,'String',100*std(rho)/rho_final);
    set(handles.textDsigma,'String',100*std(sigma)/sigma_final);
    set(handles.textQ1,'String',Q1);
    set(handles.textQ2,'String',Q2);
end

% Hint: get(hObject,'Value') returns toggle state of calcular


% --- Executes on button press in togglebutton4.
function togglebutton4_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton4


% --------------------------------------------------------------------
function menu_principal_Callback(hObject, eventdata, handles)
% hObject    handle to menu_principal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function guardar_Callback(hObject, eventdata, handles)
% hObject    handle to guardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
V=ones(8,1);
D=ones(8,1);
nombre_folder=uigetdir;
nombre_archivo=inputdlg('Diga el nombre del archivo');
path_total=strcat(nombre_folder,'\',nombre_archivo{1});
h=warndlg('Guardando los datos, espere antes de abrir el documento.','Guardar');
V(1)=str2double(get(handles.textV1,'String'));
V(2)=str2double(get(handles.textV2,'String'));
V(3)=str2double(get(handles.textV3,'String'));
V(4)=str2double(get(handles.textV4,'String'));
V(5)=str2double(get(handles.textV5,'String'));
V(6)=str2double(get(handles.textV6,'String'));
V(7)=str2double(get(handles.textV7,'String'));
V(8)=str2double(get(handles.textV8,'String'));
D(1)=str2double(get(handles.textD1,'String'));
D(2)=str2double(get(handles.textD2,'String'));
D(3)=str2double(get(handles.textD3,'String'));
D(4)=str2double(get(handles.textD4,'String'));
D(5)=str2double(get(handles.textD5,'String'));
D(6)=str2double(get(handles.textD6,'String'));
D(7)=str2double(get(handles.textD7,'String'));
D(8)=str2double(get(handles.textD8,'String'));
  xlswrite(path_total,{'V1(Volts)','Desv. Est. (%)',' ','V2(Volts)','Desv. Est. (%)';V(1),D(1),NaN,V(2),D(2)},'C3:G4');
  xlswrite(path_total,{'V3(Volts)','Desv. Est. (%)',' ','V4(Volts)','Desv. Est. (%)';V(3),D(3),NaN,V(4),D(4)},'C6:G7');
  xlswrite(path_total,{'V5(Volts)','Desv. Est. (%)',' ','V6(Volts)','Desv. Est. (%)';V(5),D(5),NaN,V(6),D(6)},'C9:G10');
  xlswrite(path_total,{'V7(Volts)','Desv. Est. (%)',' ','V8(Volts)','Desv. Est. (%)';V(7),D(7),NaN,V(8),D(8)},'C12:G13');
  xlswrite(path_total,{'Q1',' ','Q2';str2double(get(handles.textQ1,'String')),NaN,str2double(get(handles.textQ2,'String'))},'J3:L4');
  xlswrite(path_total,{'\rho','Desv. Est. (%)',' ','\sigma','Desv. Est. (%)';str2double(get(handles.textrho,'String')),str2double(get(handles.textDrho,'String')),NaN,str2double(get(handles.textsigma,'String')),str2double(get(handles.textDsigma,'String'))},'C17:G18');
  xlswrite(path_total,{'Espesor','Corriente','Duracion';handles.metricdata.espesor,str2double(get(handles.corriente_base,'String')),handles.metricdata.duracion},'C20,E21');
  delete(h);


% --- Executes on button press in reiniciar.
function reiniciar_Callback(hObject, eventdata, handles)
% hObject    handle to reiniciar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        set(handles.textV1,'String',0);
        set(handles.textV2,'String',0);
        set(handles.textD1,'String',0);
        set(handles.textD2,'String',0);
        set(handles.corriente_base,'String',0);

        set(handles.textV3,'String',0);
        set(handles.textV4,'String',0);
        set(handles.textD3,'String',0);
        set(handles.textD4,'String',0);
        set(handles.corriente_base,'String',0);

        set(handles.textV5,'String',0);
        set(handles.textV6,'String',0);
        set(handles.textD5,'String',0);
        set(handles.textD6,'String',0);
        set(handles.corriente_base,'String',0);

        set(handles.textV7,'String',0);
        set(handles.textV8,'String',0);
        set(handles.textD7,'String',0);
        set(handles.textD8,'String',0);
        set(handles.corriente_base,'String',0);
        
        set(handles.textQ1,'String',0);
        set(handles.textQ2,'String',0);
        set(handles.textrho,'String',0);
        set(handles.textsigma,'String',0);
        set(handles.textDrho,'String',0);
        set(handles.textDsigma,'String',0);
% Hint: get(hObject,'Value') returns toggle state of reiniciar
