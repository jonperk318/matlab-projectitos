function [H, theta, rho] = hough_lines_acc (BW, varargin)

    % Build Hough accumulator array for finding lines.
    %
    % Matlab documentation for hough(), which you are simulating:
    % http://www.mathworks.com/help/images/ref/hough.html
    %
    % Coordinate system of H
    % rows of H correspond to values of rho
    % cols of H correspond to values of theta
    %
    % Params:
    % BW: Binary (black and white) image containing edge pixels
    % RhoResolution (optional): diff between successive rho values, in pixels
    % ThetaResolution (optional): diff between successive theta values, in deg
    % 
    %
    % Returns:
    % H: accumulator array (nRho x nTheta)
    % theta: angle values, correspond to columns of H [so our binning choice]
    % rho: distance values, correspond to rows of H

    % --------------------------------------------------------------------------
    % Parse input arguments 
    % (you have not seen optional arguments before: observe how it is done)
    p = inputParser();
    addParameter (p, 'RhoResolution', 1);               % add with default value
    addParameter (p, 'ThetaResolution', 1);
    parse (p, varargin{:});                               % [populate p.Results]
    rhoStep   = p.Results.RhoResolution;
    thetaStep = p.Results.ThetaResolution;
    % --------------------------------------------------------------------------
    %% ADD YOUR CODE HERE
end
