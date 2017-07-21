function reshaped = convert_data(data)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    % Convert 3x8bit into 32bit integer
    data(1:3:end) = bitshift(data(1:3:end), 16);
    data(2:3:end) = bitshift(data(2:3:end), 8);
    final_data = data(1:3:end) + data(2:3:end) + data(3:3:end);
    
    % Two bit complement. Check if number is smaller than zero
    logical = final_data >= 8388608;
    
    % Create 
    final_data = (bitand(bitcmp(final_data, 'uint32'), 16777215, 'uint32') + 1)*(-1).*logical ...
        + final_data.*not(logical);
    
    final_data = final_data*2.4/(2^23 + 1);
    
    reshaped = reshape(final_data, [9,34]);


end

