function varargout = MatlabGui(varargin)
% MATLABGUI MATLAB code for MatlabGui.fig
%      MATLABGUI, by itself, creates a new MATLABGUI or raises the existing
%      singleton*.
%
%      H = MATLABGUI returns the handle to a new MATLABGUI or the handle to
%      the existing singleton*.
%
%      MATLABGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATLABGUI.M with the given input arguments.
%
%      MATLABGUI('Property','Value',...) creates a new MATLABGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MatlabGui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MatlabGui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MatlabGui

% Last Modified by GUIDE v2.5 20-Oct-2020 16:42:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MatlabGui_OpeningFcn, ...
                   'gui_OutputFcn',  @MatlabGui_OutputFcn, ...
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


% --- Executes just before MatlabGui is made visible.
function MatlabGui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MatlabGui (see VARARGIN)

% Choose default command line output for MatlabGui
handles.output = hObject;
axes(handles.axes1);
ss= imread('ress00.jpg');
imshow(ss);

axes(handles.axes3);
sss= imread('ress01.jpg');
imshow(sss);


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MatlabGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = MatlabGui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function KameraBul_Callback(hObject, eventdata, handles)
% hObject    handle to KameraBul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function AraBul_Callback(hObject, eventdata, handles)
% hObject    handle to AraBul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a=imaqhwinfo('winvideo');
a.DeviceIDs;
set(handles.OperatorText,'String',[['Kameralar: ' a.DeviceIDs], ...
                           ['desteklenen adaptör: ' a.AdaptorName], ...
                           ]);
                       



% --- Executes on button press in KameraSecButton.
function KameraSecButton_Callback(hObject, eventdata, handles)
% hObject    handle to KameraSecButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
x=str2num(get(handles.KameraGirTxt,'String'));
y=num2str(x);
set(handles.OperatorText,'String',[y, ' Numarali Kamera Secildi']);






function KameraGirTxt_Callback(hObject, eventdata, handles)
% hObject    handle to KameraGirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KameraGirTxt as text
%        str2double(get(hObject,'String')) returns contents of KameraGirTxt as a double


% --- Executes during object creation, after setting all properties.
function KameraGirTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KameraGirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function BoyutAraBul_Callback(hObject, eventdata, handles)
% hObject    handle to BoyutAraBul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global b;
a=imaqhwinfo('winvideo',x);
b=a.SupportedFormats;
set(handles.OperatorText,'String',b);



function BoyutGirTxt_Callback(hObject, eventdata, handles)
% hObject    handle to BoyutGirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BoyutGirTxt as text
%        str2double(get(hObject,'String')) returns contents of BoyutGirTxt as a double


% --- Executes during object creation, after setting all properties.
function BoyutGirTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BoyutGirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in KameraBoyutSecButton.
function KameraBoyutSecButton_Callback(hObject, eventdata, handles)
% hObject    handle to KameraBoyutSecButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global bb;
global s;
bb=get(handles.BoyutGirTxt,'String');
s=char(bb);
msgbox(s);
set(handles.OperatorText,'String',[s, ' Boyut Girildi']);






% --- Executes on button press in OnYuklemeBaslatButton.
function OnYuklemeBaslatButton_Callback(hObject, eventdata, handles)
% hObject    handle to OnYuklemeBaslatButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



global k;
global hImage;
global x;
global s;
axes(handles.axes1);
k=videoinput('winvideo',x,s);
set(k, 'FramesPerTrigger', Inf);
set(k, 'ReturnedColorspace', 'grayscale');
hImage=image(zeros(240,320,1),'Parent',handles.axes1);




function OperatorText_Callback(hObject, eventdata, handles)
% hObject    handle to OperatorText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OperatorText as text
%        str2double(get(hObject,'String')) returns contents of OperatorText as a double


% --- Executes on button press in KameraBaslatButton.
function KameraBaslatButton_Callback(hObject, eventdata, handles)
% hObject    handle to KameraBaslatButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global k;
global hImage;
preview(k,hImage);

% --- Executes on button press in KameraDurdurButton.
function KameraDurdurButton_Callback(hObject, eventdata, handles)
% hObject    handle to KameraDurdurButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global k;
stop(k);
closepreview(k);
flushdata(k);
clear;


% --- Executes on button press in GoruntuYakalaButton.
function GoruntuYakalaButton_Callback(hObject, eventdata, handles)
% hObject    handle to GoruntuYakalaButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
global k;
global sstart;
sstart=1;
k.FrameGrabInterval = 2;
start(k);

while (sstart) 
kk= getsnapshot(k);
L=medfilt2(kk,[3 3]);
roi = [30 100 240 120];
ocrResults = ocr (L, roi,'CharacterSet','0123456789ERTYUIOPASDFGHJKLZCVBNM','TextLayout','Word');
Iocr = insertText(L,roi(1:2),ocrResults.Text,'AnchorPoint',...
                                              'CenterBottom','FontSize',12);
              Iocr=insertShape(Iocr,'Rectangle',roi,'Color',[255,0,0],'LineWidth',3);

          imshow(Iocr);
   hold on
end










%{
while (sstart) 
IslenecekGoruntu = getsnapshot(k);
axes(handles.axes1);
L=im2bw(IslenecekGoruntu);
L=~L;
LL=ocr(L);
bboxx = locateText(LL, '16', 'IgnoreCase', true);
sonuc = insertShape(LL, 'FilledRectangle',bboxx,'Color','green');
imshow(sonuc);
hold on

end

%}

% --- Executes on button press in GoruntuDurdurButton.
function GoruntuDurdurButton_Callback(hObject, eventdata, handles)
% hObject    handle to GoruntuDurdurButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global sstart;
sstart=0;
