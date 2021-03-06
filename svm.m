function varargout = svm(varargin)
%_________________________________
% Ali Mohammad Zare & Omid Nasiri
%_________________________________
%
% SVM M-file for svm.fig
%      SVM, by itself, creates a new SVM or raises the existing
%      singleton*.
%
%      H = SVM returns the handle to a new SVM or the handle to
%      the existing singleton*.
%
%      SVM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SVM.M with the given input arguments.
%
%      SVM('Property','Value',...) creates a new SVM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before svm_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to svm_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help svm

% Last Modified by GUIDE v2.5 03-Feb-2000 11:40:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @svm_OpeningFcn, ...
                   'gui_OutputFcn',  @svm_OutputFcn, ...
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


% --- Executes just before svm is made visible.
function svm_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to svm (see VARARGIN)

% Choose default command line output for svm
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes svm wait for user response (see UIRESUME)
% uiwait(handles.figure1);
clear all;
clc

% --- Outputs from this function are returned to the command line.
function varargout = svm_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
disp('                             < support vector machines >');
disp('                          < in static security assessment >');
disp('                                   < 2006 - 2007 >');
disp('  ')
disp('  ')
disp(['Host:        Matlab ',version]);
disp(['Path:        ',pwd]);
disp(['date:        ',date]);
disp('mail:        zare_alimohammad@yahoo.com');
disp('                 nasiri_O@yahoo.com');
disp('  ')
disp('  ')
set(handles.ed1,'visible','on');
pause(0.5);
set(handles.ed1,'visible','off');
set(handles.ed2,'visible','on');
pause(0.5);
set(handles.ed2,'visible','off');
set(handles.ed3,'visible','on');
pause(0.5);
set(handles.ed3,'visible','off');
set(handles.ed4,'visible','on');
pause(0.5);
set(handles.ed4,'visible','off');
set(handles.ed5,'visible','on');
pause(0.5);
set(handles.ed5,'visible','off');
set(handles.ed6,'visible','on');
pause(0.5);
set(handles.ed6,'visible','off');
set(handles.ed7,'visible','on');
pause(0.5);
set(handles.ed7,'visible','off');
close;
support_vector_machines;

function ed1_Callback(hObject, eventdata, handles)
% hObject    handle to ed1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed1 as text
%        str2double(get(hObject,'String')) returns contents of ed1 as a double


% --- Executes during object creation, after setting all properties.
function ed1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed2_Callback(hObject, eventdata, handles)
% hObject    handle to ed2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed2 as text
%        str2double(get(hObject,'String')) returns contents of ed2 as a double


% --- Executes during object creation, after setting all properties.
function ed2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed3_Callback(hObject, eventdata, handles)
% hObject    handle to ed3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed3 as text
%        str2double(get(hObject,'String')) returns contents of ed3 as a double


% --- Executes during object creation, after setting all properties.
function ed3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed4_Callback(hObject, eventdata, handles)
% hObject    handle to ed4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed4 as text
%        str2double(get(hObject,'String')) returns contents of ed4 as a double


% --- Executes during object creation, after setting all properties.
function ed4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed5_Callback(hObject, eventdata, handles)
% hObject    handle to ed5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed5 as text
%        str2double(get(hObject,'String')) returns contents of ed5 as a double


% --- Executes during object creation, after setting all properties.
function ed5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed6_Callback(hObject, eventdata, handles)
% hObject    handle to ed6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed6 as text
%        str2double(get(hObject,'String')) returns contents of ed6 as a double


% --- Executes during object creation, after setting all properties.
function ed6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed7_Callback(hObject, eventdata, handles)
% hObject    handle to ed7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed7 as text
%        str2double(get(hObject,'String')) returns contents of ed7 as a double


% --- Executes during object creation, after setting all properties.
function ed7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.


function axes5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
svm_image=imread('svm.jpg');
image(svm_image);
axis off
% Hint: place code in OpeningFcn to populate axes5


