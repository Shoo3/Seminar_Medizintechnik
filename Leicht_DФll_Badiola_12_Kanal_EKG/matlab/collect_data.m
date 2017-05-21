function [ adc_val ] = collect_data(handles)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% Struct which depends on the GUI 
values_map = struct('measure_mode', [0 1 5], ...
    'gain', [0 16 32 48 64 80 96], ...
    'mode', [0 128], ...
    'data_rate', [4 5 6], ...
    'test_source', [0 16], ...
    'test_amp', [0 4], ...
    'test_freq', [0 1 3]);

% get the measurement mode ans gain
adc_val.measure_mode = values_map.measure_mode(handles.popup_measure.Value);
adc_val.gain = values_map.gain(get(handles.popup_gain, 'Value'));

% get the resultion mode
if get(handles.radio_HR, 'Value') == 1.0
   adc_val.resultion_mode = values_map.mode(2);
else
   adc_val.resultion_mode = values_map.mode(1);
end

% get the data rate
adc_val.data_rate = values_map.data_rate(get(handles.popup_DataRate, 'Value'));

% get the source of the test signal
if get(handles.radio_internGen, 'Value') == 1.0;
    adc_val.test_source = values_map.test_source(2);
else
    adc_val.test_source = values_map.test_source(1);
end

% Get the amplitude of the test signal
if get(handles.radio_ampX1, 'Value') == 1.0;
    adc_val.test_amplitude = values_map.test_amp(1);
else
    adc_val.test_amplitude = values_map.test_amp(2);
end   

% Get the frequency of the test signal ans show all values
adc_val.test_freq = values_map.test_freq(get(handles.popup_frequency, 'Value'));
end

