function varargout = observeGUI(varargin)
% OBSERVEGUI MATLAB code for observeGUI.fig
%      OBSERVEGUI, by itself, creates a new OBSERVEGUI or raises the existing
%      singleton*.
%
%      H = OBSERVEGUI returns the handle to a new OBSERVEGUI or the handle to
%      the existing singleton*.
%
%      OBSERVEGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OBSERVEGUI.M with the given input arguments.
%
%      OBSERVEGUI('Property','Value',...) creates a new OBSERVEGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before observeGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to observeGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help observeGUI

% Last Modified by GUIDE v2.5 31-Jul-2018 21:03:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @observeGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @observeGUI_OutputFcn, ...
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


% --- Executes just before observeGUI is made visible.
function observeGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to observeGUI (see VARARGIN)

% Choose default command line output for observeGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes observeGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global img_no
img_no = 0;

% --- Outputs from this function are returned to the command line.
function varargout = observeGUI_OutputFcn(hObject, eventdata, handles) 
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
global img_no
img_no = img_no+1;
test_set_x_orig = evalin('base','test_set_x_orig');
test_set_y = evalin('base','test_set_y');
Y_prediction_test = evalin('base','Y_prediction_test');
 imshow(permute(test_set_x_orig(:,:,:,img_no),[3 2 1]));
 title("Image No: "+ num2str(img_no)+" Actual: "+num2str(test_set_y(1,img_no))+" Predicted: "+ num2str(Y_prediction_test(1,img_no)));
