function varargout = With_pics(varargin)
% WITH_PICS MATLAB code for With_pics.fig
%      WITH_PICS, by itself, creates a new WITH_PICS or raises the existing
%      singleton*.
%
%      H = WITH_PICS returns the handle to a new WITH_PICS or the handle to
%      the existing singleton*.
%
%      WITH_PICS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WITH_PICS.M with the given input arguments.
%
%      WITH_PICS('Property','Value',...) creates a new WITH_PICS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before With_pics_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to With_pics_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help With_pics

% Last Modified by GUIDE v2.5 12-Jul-2017 15:40:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @With_pics_OpeningFcn, ...
                   'gui_OutputFcn',  @With_pics_OutputFcn, ...
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


% --- Executes just before With_pics is made visible.
function With_pics_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to With_pics (see VARARGIN)
% axes(handles.axes1)
% matlabImage = imread('C:\Users\Jawad\Documents\MATLAB\Project\APCOMS-Logo.jpg');
% image(matlabImage)
% axis off
% axis image
% Choose default command line output for With_pics
handles.output = hObject;
axes(handles.axes1)
matlabImage = imread('C:\Users\Faheem\Desktop\faheem\Mufasir\APCOMS-Logo.jpg');
image(matlabImage)
axis off
axis image
% Update handles structure
guidata(hObject, handles);


% UIWAIT makes With_pics wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = With_pics_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename, pathname, filterindex] = uigetfile( ...
{  
   '*.jpg','JPEG (*.jpg)'; ...
   }, ...
   'Choose image', ...
   'MultiSelect', 'on');
fullImageFileName = fullfile(pathname,filename);

set(handles.edit1,'String',fullImageFileName);

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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 y = get(handles.edit1,'string');
imagen=imread(y);
threshold = graythresh(imagen);
binaryimage =im2bw(imagen,threshold);
binaryim =~im2bw(imagen,0.9);
binaryim = bwareaopen(binaryim,8);
[n11,r11] = boxcount(binaryim);
req_matrix =[n11(1,1) n11(1,2) n11(1,3) n11(1,4) n11(1,5)]; 
Mean_value = mean(req_matrix,2);
req_matrixs =[req_matrix Mean_value];
[row , col] = size(binaryim);
% total_area = row*col;
% percent =(Mean_value/total_area)*100;

% figure
% imshow(~binaryim)

[B,L,N,A] = bwboundaries(binaryim); % find the boundaries of all objects

% imshow(label2rgb(L, @jet, [.5 .5 .5]));
% hold on
for k = 1:length(B)
    boundary = B{k};
    plot(boundary(:,2), boundary(:,1), 'r', 'LineWidth', 2)
end


CC = cell(1, length(B)); % pre-allocate

for k = 1:length(B)
   CC{k} = chaincode(B{k},true); % chain code for the k'th object
end

trow0 = 0;
trow1 = 0;
trow2 = 0;
trow3 = 0;
trow4 = 0;
trow5 = 0;
trow6 = 0;
trow7 = 0;

 for kqw = 1:k
val_0 = find(CC{1,kqw}.code==0);
val_1 = find(CC{1,kqw}.code==1);
val_2 = find(CC{1,kqw}.code==2);
val_3 = find(CC{1,kqw}.code==3);
val_4 = find(CC{1,kqw}.code==4);
val_5 = find(CC{1,kqw}.code==5);
val_6 = find(CC{1,kqw}.code==6);
val_7 = find(CC{1,kqw}.code==7);

[row_0 , col_0] = size(val_0);
[row_1 , col_1] = size(val_1);
[row_2 , col_2] = size(val_2);
[row_3 , col_3] = size(val_3);
[row_4 , col_4] = size(val_4);
[row_5 , col_5] = size(val_5);
[row_6 , col_6] = size(val_6);
[row_7 , col_7] = size(val_7);

trow0 = trow0+row_0;
trow1 = trow1+row_1;
trow2 = trow2+row_2;
trow3 = trow3+row_3;
trow4 = trow4+row_4;
trow5 = trow5+row_5;
trow6 = trow6+row_6;
trow7 = trow7+row_7;
 end

 trowtotal =  [trow0 trow1 trow2 trow3 trow4 trow5 trow6 trow7];
 Total_row_val = trow0+trow1+trow2+trow3+trow4+trow5+trow6+trow7;
 trowtotaln = trowtotal/Total_row_val;
 Sample = [trowtotaln req_matrixs];
 x = 0:1:7;
%  figure
%  bar(x,trowtotal,'b');
 
xdata = [0.198100181	0.076540329	0.163460623	0.068660128	0.184577659	0.076111799	0.165008094	0.067541187	96035	31176	11137	4251	1599	28840
0.134454909	0.062437951	0.216989992	0.088156377	0.130376452	0.059915748	0.215393491	0.092275081	195334	60993	20909	7793	3083	57622
0.172099308	0.066373923	0.18039029	0.085903794	0.162564677	0.066542814	0.181111913	0.085013281	149168	48282	17303	6681	2632	44813
0.20678757	0.061839589	0.165307977	0.06696689	0.204983519	0.057404067	0.167613906	0.069096483	196972	61203	20741	7664	2822	57880
0.162947299	0.04019791	0.171344105	0.126342154	0.161284362	0.041696606	0.160052557	0.136135006	117048	37540	13158	4878	1859	34897
0.160847528	0.069981944	0.196414975	0.07770454	0.150949553	0.066479584	0.201026779	0.076595097	117328	37163	13135	5066	2023	34943
0.147116586	0.065724871	0.218643992	0.076571148	0.131003392	0.066550616	0.22040707	0.073982325	156378	46608	15332	5508	2081	45181
0.152018115	0.09136961	0.172934613	0.087657866	0.144057707	0.086210519	0.180218036	0.085533534	107881	34523	12188	4646	1840	32216
];
group = {'male';'male';'male';'male';'female';'female';'female';'female'};
svmStruct = svmtrain(xdata,group,'ShowPlot',true);

Group_ident = svmclassify(svmStruct,Sample,'Showplot',true);

set(handles.edit2,'String',Group_ident);
axes(handles.axes1)
matlabImage = imread('C:\Users\Faheem\Desktop\faheem\Mufasir\APCOMS-Logo.jpg');
image(matlabImage)
axis off
axis image
