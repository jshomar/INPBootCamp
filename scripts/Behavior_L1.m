% Read in data
% Change this filePath to load different experiments
filePath = '../datasets/1D/WT/HEX/20200623_N2_HEX_10000/all_matTrack_data.csv';
ASSAY = readtable(filePath);

% Before doing anything with the data, it is typically helpful to
% see how it is structured. Open the table named ASSAY. What do the
% rows and columns of the table mean? Can you tell how many worms
% were tracked during this experiment?

% It is often times easier to work with only the variables of
% interest in a table rather than working with the whole thing, so
% let's load in the variables we want into vectors below.

%assign arrays of positions using column indexing:
x = ASSAY.("x");
% y = ?

% Sometimes worms go untracked (resulting in NaN), so let's eliminate
% anywhere these values happen. The details here aren't that important,
% but if you are interested in learning more about this efficient and
% concise method of choosing only desired entries in vectors, we
% encourage you to look up "vectorization in Matlab"
y = y(~isnan(y),1); % removes all NaNs from x
x = x(~isnan(x),1); % removes all NaNs from x

% Make a histogram h of the y values with 50 bins (hint: check 'histogram'
% function in matlab)
figure
% h = ?;

% Adds an appropriate title to the histogram based on the stimulus of the
% loaded experiment. If you're interested in learning exactly how this is
% being done, feel free to read the documentation for the horzcat function
title(['Unnormalized Residence (', ASSAY.("stimulus"){1},')']);
% Add a label to the x axis and call it 'Position' (hint: check 'xlabel'
% function in matlab)
% xlabel(?);


% Now we normalize the histogram to make plot of relative residence:
% Each tracked frame (non NaN) contributes to the distribution.
% We extract parameters from histogram:
% Counts are the number of occurrences within a given bin
counts = h.Values;
% Find the mean number of counts and use it to normalize for rel_counts
% mean_counts = ?;
% rel_counts = ?;

figure
% Now use barplot to plot these relative values (hint: check 'bar' function
% in matlab)
% bar(?);

% Again we add an appropriate title here automatically based on the file
title(['Relative Residence (', ASSAY.("stimulus"){1},')']);
% Add a label to the x axis and call it 'Position'
% xlabel(?);
