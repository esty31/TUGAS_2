function varargout = GuiTugas2(varargin)
% GUITUGAS2 MATLAB code for GuiTugas2.fig
%      GUITUGAS2, by itself, creates a new GUITUGAS2 or raises the existing
%      singleton*.
%
%      H = GUITUGAS2 returns the handle to a new GUITUGAS2 or the handle to
%      the existing singleton*.
%
%      GUITUGAS2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITUGAS2.M with the given input arguments.
%
%      GUITUGAS2('Property','Value',...) creates a new GUITUGAS2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuiTugas2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuiTugas2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiTugas2

% Last Modified by GUIDE v2.5 13-Oct-2021 18:22:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiTugas2_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiTugas2_OutputFcn, ...
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


% --- Executes just before GuiTugas2 is made visible.
function GuiTugas2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuiTugas2 (see VARARGIN)

% Choose default command line output for GuiTugas2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiTugas2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GuiTugas2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
a = imread('esty.jpg');
imshow(a)
title('Gambar Asli')

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2)
a = imread('esty.jpg');
I_gey = (a(:,:,1)+a(:,:,2)+a(:,:,3))/3;
imshow(I_gey)
title('Rumus Rata-rata')

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes3)
a = imread('esty.jpg');
I_greyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
tBrig = 75;
I_brig = I_greyKom + tBrig;
imshow(I_brig)

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes4)
a = imread('esty.jpg');
I_greyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
tCon = 100;
I_Con = I_greyKom + tCon;
imshow(I_Con)

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes5)
a = imread('esty.jpg');
I_bw = im2bw(a,0.5);
imshow(I_bw)

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete (handles.figure1)
