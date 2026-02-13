function Out = Rotate(In, Theta)
% Rotate an image (grayscale or RGB) by Theta degrees using reverse mapping

    % Convert degrees → radians
    theta = Theta * pi / 180;

    % Check if image is RGB or grayscale
    isRGB = (ndims(In) == 3);

    if isRGB
        [H, W, C] = size(In);
        Out = zeros(H, W, C, 'like', In);
    else
        [H, W] = size(In);
        Out = zeros(H, W, 'like', In);
    end

    % Centre of the image
    cx = W/2;
    cy = H/2;

    % Rotation matrix
    R = [ cos(theta)  -sin(theta);
          sin(theta)   cos(theta) ];

    % Inverse rotation (reverse mapping)
    Rinv = inv(R);

    % Loop over every pixel in the output image
    for y = 1:H
        for x = 1:W

            % Shift so centre is origin
            p = [x - cx; y - cy];

            % Reverse map to source coordinates
            src = Rinv * p;

            % Shift back
            xs = src(1) + cx;
            ys = src(2) + cy;

            % Nearest neighbour
            xs = round(xs);
            ys = round(ys);

            % Check bounds
            if xs >= 1 && xs <= W && ys >= 1 && ys <= H
                if isRGB
                    Out(y, x, :) = In(ys, xs, :);
                else
                    Out(y, x) = In(ys, xs);
                end
            else
                % Out-of-bounds → black
                if isRGB
                    Out(y, x, :) = 0;
                else
                    Out(y, x) = 0;
                end
            end
        end
    end
end
