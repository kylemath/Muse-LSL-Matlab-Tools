%% Initiate LSL Muse connection and recording
function LSL_Muse_Initiation
    % Display connecting and initializing message
    disp('Connecting Device and initializing stream...');

    % Connect to Muse
    connect_path = which('LSL_Connect.scpt');
    system(['osascript ' connect_path]);
    
end
