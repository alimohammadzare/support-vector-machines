function varargout = support_vector_machines(varargin)
%_________________________________
% Ali Mohammad Zare & Omid Nasiri
%_________________________________
%
% SUPPORT_VECTOR_MACHINES M-file for support_vector_machines.fig
%      SUPPORT_VECTOR_MACHINES, by itself, creates a new SUPPORT_VECTOR_MACHINES or raises the existing
%      singleton*.
%
%      H = SUPPORT_VECTOR_MACHINES returns the handle to a new SUPPORT_VECTOR_MACHINES or the handle to
%      the existing singleton*.
%
%      SUPPORT_VECTOR_MACHINES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUPPORT_VECTOR_MACHINES.M with the given input arguments.
%
%      SUPPORT_VECTOR_MACHINES('Property','Value',...) creates a new SUPPORT_VECTOR_MACHINES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before support_vector_machines_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to support_vector_machines_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help support_vector_machines

% Last Modified by GUIDE v2.5 07-Mar-2000 12:38:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @support_vector_machines_OpeningFcn, ...
                   'gui_OutputFcn',  @support_vector_machines_OutputFcn, ...
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


% --- Executes just before support_vector_machines is made visible.
function support_vector_machines_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to support_vector_machines (see VARARGIN)

% Choose default command line output for support_vector_machines
handles.output = hObject;
set(handles.text2,'visible','on')
set(handles.text4,'visible','off')
set(handles.text5,'visible','off')
set(handles.edit2,'visible','on')
set(handles.edit3,'visible','off')
set(handles.edit4,'visible','off')
set(handles.edit5,'visible','off')
set(handles.pushbutton_PLOT2D,'Enable','off')
set(handles.pushbutton_PREDICT,'Enable','off')
set(handles.pushbutton_CALCULATE,'Enable','off')
set(handles.text33,'Enable','off')
set(handles.edit31,'Enable','off')
set(handles.text25,'visible','off')
set(handles.text26,'visible','off')
set(handles.edit33,'string',pwd);% namaiesh path 
set(handles.text13,'string',date);%namaiesh date
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes support_vector_machines wait for user response (see UIRESUME)
% uiwait(handles.figure1);
    dovom=0;
    sevom=0;
    chaharom=0;
    C=str2num(get(handles.edit2,'string'));

% --- Outputs from this function are returned to the command line.
function varargout = support_vector_machines_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton4.
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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_PLOT2D.
function pushbutton_PLOT2D_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_PLOT2D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text36,'string','Plotting...')
set(handles.pushbutton_PLOT2D,'string','Please wait')
alpha=handles.alpha;
b0=handles.b0;
Xtrain=handles.Xtrain;
Ytrain=handles.Ytrain;
kernel=handles.kernel;
dovom=handles.dovom;
sevom=handles.sevom;
chaharom=handles.chaharom;
[h] = svcplot(Xtrain,Ytrain,kernel,alpha,b0,dovom,sevom,chaharom);
hold off
set(handles.text36,'string','End of plotting')
set(handles.pushbutton_PLOT2D,'string','Plot 2D')



% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox1 contents as cell array
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


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=get(handles.listbox2,'value');
set(handles.listbox3,'value',d)
set(handles.listbox4,'value',d)
% Hints: contents = get(hObject,'String') returns listbox2 contents as cell array
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

function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text36,'string','choose your .txt file')
set(handles.pushbutton_PLOT2D,'Enable','off')
set(handles.pushbutton_PREDICT,'Enable','off')
set(handles.text33,'Enable','off')
set(handles.edit31,'Enable','off')
[file path]=uigetfile('*.txt', 'Open');
handles.negahdar=[path file];
guidata(hObject, handles);
if file==0
    set(handles.pushbutton_CALCULATE,'Enable','off')
    set(handles.text36,'string','choose your .txt file')
    set(handles.edit32,'string','')
     set(handles.listbox1,'string','')
      set(handles.listbox2,'string','')
       set(handles.listbox3,'string','')
        set(handles.text18,'string','')
         set(handles.text19,'string','')
          set(handles.text200,'string','')
           set(handles.text201,'string','')
           set(handles.listbox4,'string','')
           set(handles.text37,'Enable','off')
           set(handles.listbox4,'Enable','off')
else
   
    set(handles.text36,'string','your file loaded')
    set(handles.edit32,'string',file)
    set(handles.pushbutton_CALCULATE,'Enable','on')
    set(handles.listbox1,'string','')
      set(handles.listbox2,'string','')
       set(handles.listbox3,'string','')
        set(handles.text18,'string','')
         set(handles.text19,'string','')
          set(handles.text200,'string','')
           set(handles.text201,'string','')
           set(handles.listbox4,'string','')
           set(handles.text37,'Enable','off')
           set(handles.listbox4,'Enable','off')
           file=handles.negahdar;
           X=textread(file);
           n=size(X);
           if(n(2)==3)%this mean that data are 2-Dimensioanl
              set(handles.checkbox2,'Enable','on')
           else
               set(handles.checkbox2,'value',0)
               pause(0.01);
               set(handles.checkbox2,'Enable','off')
           end
end

% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_6_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
tower_image=imread('tower.jpg');
image(tower_image);
axis off
% Hint: place code in OpeningFcn to populate axes1




% --- Executes on button press in pushbutton_CALCULATE.
function pushbutton_CALCULATE_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_CALCULATE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text36,'string','Please wait ...')
set(handles.pushbutton_CALCULATE,'string','Please wait')
pause(0.01);
set(handles.listbox4,'string','')
set(handles.listbox4,'Enable','off')
set(handles.text37,'Enable','off')
file=handles.negahdar;
X=textread(file);
n=size(X);

%sotoone akhare file bazi vaghtha bayad hazf shavad chon bazi vaghta hameye sotoone akhar sefr hastand
if(X(:,n(2))==zeros(n(1),1))
n(2)=n(2)-1;
X=X(:,[1:n(2)]);
end

if(n(2)==3)%this mean that data are 2-Dimensioanl
set(handles.pushbutton_PLOT2D,'Enable','on')
set(handles.pushbutton_PREDICT,'Enable','on')
set(handles.text33,'Enable','on')
set(handles.edit31,'Enable','on')
end

Ytrain=X(:,n(2));
Xtrain=X(:,[1:n(2)-1]);

if get(handles.checkbox2,'value')==1
        mat=zeros(n(1),n(2));
        Norm = sqrt(diag(Xtrain'*Xtrain));
        Normalized = Xtrain./(ones(size(Xtrain,1),1)*Norm');
        Xtrain=Normalized;
        mat(:,[1:n(2)-1])=Xtrain(:,[1:n(2)-1]);
        mat(:,n(2))=Ytrain;
        set(handles.edit31,'Enable','off')
        set(handles.pushbutton_PREDICT,'Enable','off')
        set(handles.text33,'Enable','off')
        set(handles.listbox4,'Enable','on')
        set(handles.text37,'Enable','on')
        set(handles.listbox4,'string',num2str(mat))
end


C=str2num(get(handles.edit2,'string'));

pop_1=get(handles.popupmenu1,'value');%gereftan meghdar az pop1
switch pop_1
    case 1
        kernel='linear';
        dovom=0;
        sevom=0;
        chaharom=0;
    case 2
        kernel='polynomial';
        dovom=str2num(get(handles.edit3,'string'));
        sevom=str2num(get(handles.edit4,'string'));
        chaharom=str2num(get(handles.edit5,'string'));
    case 3
        kernel='rbf';
        dovom=str2num(get(handles.edit3,'string'));    
        sevom=0;
        chaharom=0;
    case 4
        kernel='erbf';
        dovom=str2num(get(handles.edit3,'string'));    
        sevom=0;
        chaharom=0;
    case 5
       kernel='sigmoid';
       dovom=str2num(get(handles.edit3,'string'));
       sevom=str2num(get(handles.edit4,'string'));
       chaharom=0; 
    case 6
        kernel='spline';
        dovom=0;
        sevom=0;
        chaharom=0;
    case 7
        kernel='bspline';
        dovom=str2num(get(handles.edit3,'string'));
        sevom=0;
        chaharom=0;
    case 8
        kernel='anovaspline1';
        dovom=0;
        sevom=0;
        chaharom=0;
    case 9
        kernel='anovaspline2';
        dovom=0;
        sevom=0;
        chaharom=0;
    case 10
        kernel='anovaspline3';
        dovom=0;
        sevom=0;
        chaharom=0;
end

disp('support vector machines');
disp('______________________');
disp(['session:     ',datestr(now,0)]);
st = cputime;
[nsv, alpha, b0,W] = svc(Xtrain,Ytrain,kernel,C,dovom,sevom,chaharom);
handles.alpha=alpha;
handles.b0=b0;
handles.Xtrain=Xtrain;
handles.Ytrain=Ytrain;
handles.kernel=kernel;
handles.dovom=dovom;
handles.sevom=sevom;
handles.chaharom=chaharom;
guidata(hObject, handles);
time=cputime - st;
disp(['Kernel:      ',kernel])
fprintf('nobias:      %f\n',b0);
fprintf('No. of sv:   %f\n',nsv);
per=(nsv/n(1))*100;
fprintf('percent. sv: %f\n',per);
if C==inf
            tolerance=1e-5;
        else
            tolerance=C*1e-6;
end
fprintf('Tolerance:   %f\n',tolerance);

if(n(2)==3)%this mean that data are 2-Dimensioanl
   data_point=X
   if get(handles.checkbox2,'value')==1
       Normal_data_point=mat
   end
   weight_vector=W
else 
    disp('                                                    ');
    disp('--->> your data points are very long(are not 2_DIMENSSION)'); 
    disp('so we do not show data_point and weight_vectors in report . '); 
end

Alpha=alpha
disp('______________________');
fprintf('Execution time: %4.1f seconds\n',time);
disp('by : Mohammad & Omid ');
disp('**********************');
set(handles.listbox1,'string', W)
set(handles.listbox2,'string', alpha)
data=num2str(X);
set(handles.listbox3,'string',data)
set(handles.text18,'string',b0)
set(handles.text19,'string',nsv)
tol=num2str(tolerance);
set(handles.text201,'string',tol)
set(handles.text200,'string',per)
set(handles.text36,'string','Show results');
set(handles.pushbutton_CALCULATE,'string','Calculate');





% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=get(handles.listbox3,'value');
set(handles.listbox4,'value',d)
set(handles.listbox2,'value',d)
% Hints: contents = get(hObject,'String') returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in pushbutton_PREDICT.
function pushbutton_PREDICT_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_PREDICT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text36,'string','Plotting...')
set(handles.pushbutton_PREDICT,'string','Please wait')
data_pre=str2num(get(handles.edit31,'string'));
xpre=data_pre(1);
ypre=data_pre(2);
alpha=handles.alpha;
b0=handles.b0;
Xtrain=handles.Xtrain;
Ytrain=handles.Ytrain;
kernel=handles.kernel;
dovom=handles.dovom;
sevom=handles.sevom;
chaharom=handles.chaharom;
[h] = svcplot(Xtrain,Ytrain,kernel,alpha,b0,dovom,sevom,chaharom);
set(handles.text36,'string','End of plotting')
set(handles.pushbutton_PREDICT,'string','Predict')
hold on
for i=1:3   
    plot(xpre,ypre,'m.','markers',25);
    pause(0.5);
    plot(xpre,ypre,'k.','markers',25);
    pause(0.5);
end
hold off


function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in checkbox1.






function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pop_1=get(handles.popupmenu1,'value');%gereftan meghdar az pop1

switch pop_1
    case 1
        set(handles.text2,'visible','on')
        set(handles.text4,'visible','off')
        set(handles.text5,'visible','off')
        set(handles.edit2,'visible','on')
        set(handles.edit3,'visible','off')
        set(handles.edit4,'visible','off')
        set(handles.edit5,'visible','off')
        set(handles.text26,'visible','off')
        set(handles.text25,'visible','off')
        set(handles.edit2,'string','inf')
    case 2
        set(handles.text2,'visible','on')
        set(handles.text4,'visible','on')
        set(handles.text5,'visible','on')
        set(handles.edit2,'visible','on')
        set(handles.edit3,'visible','on')
        set(handles.edit4,'visible','on')
        set(handles.edit5,'visible','on')
        set(handles.text25,'visible','on')
        set(handles.text26,'visible','off')
        set(handles.edit2,'string','inf')
        set(handles.edit3,'string','5')
    case 3
        set(handles.text2,'visible','on')
        set(handles.text4,'visible','off')
        set(handles.text5,'visible','off')
        set(handles.edit4,'visible','off')
        set(handles.edit5,'visible','off')
        set(handles.edit2,'visible','on')
        set(handles.edit3,'visible','on')
        set(handles.text26,'visible','off')
        set(handles.text25,'visible','on')
        set(handles.edit2,'string','inf')
        set(handles.edit3,'string','5')
    case 4
        set(handles.text2,'visible','on')
        set(handles.text4,'visible','off')
        set(handles.text5,'visible','off')
        set(handles.edit4,'visible','off')
        set(handles.edit5,'visible','off')
        set(handles.edit2,'visible','on')
        set(handles.edit3,'visible','on')
        set(handles.text26,'visible','off')
        set(handles.text25,'visible','on')
        set(handles.edit2,'string','inf')
        set(handles.edit3,'string','5')
    case 5
        set(handles.text2,'visible','on')
        set(handles.text4,'visible','on')
        set(handles.text5,'visible','off')
        set(handles.edit5,'visible','off')
        set(handles.edit3,'visible','on')
        set(handles.edit4,'visible','on')
        set(handles.text26,'visible','on')
        set(handles.text4,'visible','off')
        set(handles.text25,'visible','on')
        set(handles.edit2,'string','10')
        set(handles.edit3,'string','5')
    case 6
        set(handles.text2,'visible','on')
        set(handles.text4,'visible','off')
        set(handles.text5,'visible','off')
        set(handles.edit2,'visible','on')
        set(handles.edit3,'visible','off')
        set(handles.edit4,'visible','off')
        set(handles.edit5,'visible','off')
        set(handles.text26,'visible','off')
        set(handles.text25,'visible','off')
        set(handles.edit2,'string','10')
    case 7
        set(handles.text2,'visible','on')
        set(handles.text4,'visible','off')
        set(handles.text5,'visible','off')
        set(handles.edit4,'visible','off')
        set(handles.edit5,'visible','off')
        set(handles.edit2,'visible','on')
        set(handles.edit3,'visible','on')
        set(handles.text26,'visible','off')
        set(handles.text25,'visible','on')
        set(handles.edit2,'string','10')
        set(handles.edit3,'string','2')
    case 8
        set(handles.text2,'visible','on')
        set(handles.text4,'visible','off')
        set(handles.text5,'visible','off')
        set(handles.edit2,'visible','on')
        set(handles.edit3,'visible','off')
        set(handles.edit4,'visible','off')
        set(handles.edit5,'visible','off')
        set(handles.text26,'visible','off')
        set(handles.text25,'visible','off')
        set(handles.edit2,'string','10')
    case 9
        set(handles.text2,'visible','on')
        set(handles.text4,'visible','off')
        set(handles.text5,'visible','off')
        set(handles.edit2,'visible','on')
        set(handles.edit3,'visible','off')
        set(handles.edit4,'visible','off')
        set(handles.edit5,'visible','off')
        set(handles.text26,'visible','off')
        set(handles.text25,'visible','off')
        set(handles.edit2,'string','10')
    case 10
        set(handles.text2,'visible','on')
        set(handles.text4,'visible','off')
        set(handles.text5,'visible','off')
        set(handles.edit2,'visible','on')
        set(handles.edit3,'visible','off')
        set(handles.edit4,'visible','off')
        set(handles.edit5,'visible','off')
        set(handles.text26,'visible','off')
        set(handles.text25,'visible','off')
        set(handles.edit2,'string','10')
end
% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on selection change in listbox4.
function listbox4_Callback(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=get(handles.listbox4,'value');
set(handles.listbox3,'value',d)
set(handles.listbox2,'value',d)
% Hints: contents = get(hObject,'String') returns listbox4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox4


% --- Executes during object creation, after setting all properties.
function listbox4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2




% --------------------------------------------------------------------
function Untitled_9_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=pwd;
[A B]=uigetfile('*.txt','Edit');
if A~=0
cd(B)
open(A)
cd(d)
end
% --------------------------------------------------------------------
function Untitled_10_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=pwd;
[C D]=uigetfile('*.fig','Edit');
if C~=0
cd(D)
open(C)
cd(d)
end
% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --------------------------------------------------------------------





function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33 as text
%        str2double(get(hObject,'String')) returns contents of edit33 as a double


% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit32.
function edit32_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text36,'string','choose your .txt file')
set(handles.pushbutton_PLOT2D,'Enable','off')
set(handles.pushbutton_PREDICT,'Enable','off')
set(handles.text33,'Enable','off')
set(handles.edit31,'Enable','off')
[file path]=uigetfile('*.txt', 'Open');
handles.negahdar=[path file];
guidata(hObject, handles);
if file==0
    set(handles.pushbutton_CALCULATE,'Enable','off')
    set(handles.text36,'string','choose your .txt file')
    set(handles.edit32,'string','')
     set(handles.listbox1,'string','')
      set(handles.listbox2,'string','')
       set(handles.listbox3,'string','')
        set(handles.text18,'string','')
         set(handles.text19,'string','')
          set(handles.text200,'string','')
           set(handles.text201,'string','')
           set(handles.listbox4,'string','')
           set(handles.text37,'Enable','off')
           set(handles.listbox4,'Enable','off')
else
   
    set(handles.text36,'string','your file loaded')
    set(handles.edit32,'string',file)
    set(handles.pushbutton_CALCULATE,'Enable','on')
    set(handles.listbox1,'string','')
      set(handles.listbox2,'string','')
       set(handles.listbox3,'string','')
        set(handles.text18,'string','')
         set(handles.text19,'string','')
          set(handles.text200,'string','')
           set(handles.text201,'string','')
           set(handles.listbox4,'string','')
           set(handles.text37,'Enable','off')
           set(handles.listbox4,'Enable','off')
           file=handles.negahdar;
           X=textread(file);
           n=size(X);
           if(n(2)==3)%this mean that data are 2-Dimensioanl
              set(handles.checkbox2,'Enable','on')
           else
               set(handles.checkbox2,'value',0)
               pause(0.01);
               set(handles.checkbox2,'Enable','off')
           end
end

