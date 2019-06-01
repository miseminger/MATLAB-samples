clear all

imj_file = '/media/madeline/PENGUIN/singlemeasurement_cellspeedexp.csv';  %file containing ImageJ data of single cells and beads

%uncomment the one you want to look at; if looking at Percoll, also uncomment the marked section near the end
% %10 percent ficoll
% bead_video_nums = [1,3,4,5,10,15,20,25,28,30,32];
% cell_video_nums = [1,2,5,8,10,13,15,18];
% bead_video_times = [0,1,2,3,4,5,7,14,15,16,24,25,29,36,41,47,59,63,68,70,75,87,98,100,107,109,114,120,124,127,131,172];
% cell_video_times = [0,0,1,3,10,14,24,36,39,39,41,51,52,56,65,69,73,74];
% bead_vertdata = load('/media/madeline/PENGUIN/PIVlabnew/PIVmatfiles/u_filtered_ficollbeads01.mat');
% bead_horizdata = load('/media/madeline/PENGUIN/PIVlabnew/PIVmatfiles/v_filtered_ficollbeads01.mat');
% newcell_vertdata = load('/media/madeline/PENGUIN/BatchPIV/u_filtered_newcellsinficoll01.mat');
% newcell_horizdata = load('/media/madeline/PENGUIN/BatchPIV/v_filtered_newcellsinficoll01.mat');
% imj_beads = csvread(imj_file,3,0,[3 0 13 4]);
% imj_cells = csvread(imj_file,16,0,[16 0 23 4]);
% beadv = 'u_filtered_ficollbeads';
% beadh = 'v_filtered_ficollbeads';
% newcellv = 'u_filtered_newcellsinficoll';
% newcellh = 'v_filtered_newcellsinficoll';
% 
% %12 percent ficoll
% bead_video_nums = [1,2,3,4,5,6,8,9,10,11];
% cell_video_nums = [1,3,7,9,12,16,19,21,24,26,28,29,30,31];
% bead_video_times = [0,1,2,3,9,17,29,30,43,50,57];
% cell_video_times = [0,0,2,3,4,5,6,8,10,13,14,17,19,21,23,24,27,28,29,31,32,34,35,37,38,41,43,47,49,57,59];
% bead_vertdata = load('/media/madeline/PENGUIN/PIVlabnew/PIVmatfiles/u_filtered_12ficollbeads01.mat');
% bead_horizdata = load('/media/madeline/PENGUIN/PIVlabnew/PIVmatfiles/v_filtered_12ficollbeads01.mat');
% newcell_vertdata = load('/media/madeline/PENGUIN/BatchPIV/u_filtered_new12ficollcells01.mat');
% newcell_horizdata = load('/media/madeline/PENGUIN/BatchPIV/v_filtered_new12ficollcells01.mat');
% imj_beads = csvread(imj_file,26,0,[26 0 35 4]);
% imj_cells = csvread(imj_file,39,0,[39 0 52 4]);
% beadv = 'u_filtered_12ficollbeads';
% beadh = 'v_filtered_12ficollbeads';
% newcellv = 'u_filtered_new12ficollcells';
% newcellh = 'v_filtered_new12ficollcells';

%percoll
bead_video_nums = [1,3,5,8,12,13,16,19,21,26,30,35,40];
cell_video_nums = [1,2,4,9,10,11,12];
bead_video_times = [0,1,3,8,10,11,12,12,13,16,17,19,21,23,24,26,27,28,32,36,37,38,40,43,50,54,56,59,61,63,67,68,70,74,78,81,82,83,84,85];
percoll_imjbeadtimes = transpose([0,3,10,12,12,19,21,26,32,37,54,63,78,85]);
cell_video_times = [0,1,6,10,12,13,16,18,20,21,23,32];
percoll_imjcelltimes = transpose([0,1,10,20,21,23,32,32]);
bead_vertdata = load('/media/madeline/PENGUIN/PIVlabnew/PIVmatfiles/u_filtered_percollbeads01.mat');
bead_horizdata = load('/media/madeline/PENGUIN/PIVlabnew/PIVmatfiles/v_filtered_percollbeads01.mat');
newcell_vertdata = load('/media/madeline/PENGUIN/BatchPIV/u_filtered_newcellsinpercoll01.mat');
newcell_horizdata = load('/media/madeline/PENGUIN/BatchPIV/v_filtered_newcellsinpercoll01.mat');
imj_beads = csvread(imj_file,56,0,[56 0 69 4]);
imj_cells = csvread(imj_file,73,0,[73 0 80 4]);
beadv = 'u_filtered_percollbeads';
beadh = 'v_filtered_percollbeads';
newcellv = 'u_filtered_newcellsinpercoll';
newcellh = 'v_filtered_newcellsinpercoll';


% %pbs
% bead_video_nums = [1,2,3,4,5,6,7,10,16,17,18,19];
% cell_video_nums = [1,4,5,7,11,15,19,20,22];  %deleted the 2!  %the first one is causing issues because the .avi file has 33 frames less than the others--hence, start with video #2 (taken 35s after the end of video #1) as t=0, even though the videos look slightly different, the time to reach equilibrium will not be affected much.
% bead_video_times = [0,2,3,7,12,14,17,19,21,23,26,28,32,33,40,42,44,47,67];
% cell_video_times = [0,1,2,3,5,7,8,10,13,14,16,19,30,41,50,56,59,65,79,88,93,130];
% bead_vertdata = load('/media/madeline/PENGUIN/PIVlabnew/PIVmatfiles/u_filtered_pbsbeads01.mat');
% bead_horizdata = load('/media/madeline/PENGUIN/PIVlabnew/PIVmatfiles/v_filtered_pbsbeads01.mat');
% newcell_vertdata = load('/media/madeline/PENGUIN/BatchPIV/u_filtered_newcellsinpbs02.mat');
% newcell_horizdata = load('/media/madeline/PENGUIN/BatchPIV/v_filtered_newcellsinpbs02.mat');
% imj_beads = csvread(imj_file,84,0,[84 0 95 4]);
% imj_cells = csvread(imj_file,99,0,[99 0 107 4]);
% beadv = 'u_filtered_pbsbeads';
% beadh = 'v_filtered_pbsbeads';
% newcellv = 'u_filtered_newcellsinpbs';
% newcellh = 'v_filtered_newcellsinpbs';


%get vertical bead data

for x = bead_video_nums(2:end);		%this loads the horizontal velocity data from the .mat files to cell arrays in a struct
    beadv_base = strcat(beadv,num2str(x,'%02d'),'.mat');
    beadv_full = fullfile('/media/madeline/PENGUIN/PIVlabnew/PIVmatfiles/', beadv_base); 
    bead_vertdata(x) = load(beadv_full);    
end

for x = bead_video_nums;
    
    for i = 1:length(bead_vertdata(x).u_filtered) 	%take the middle part of each cell array (ie. the middle of the vector field)
        A(i,:) = reshape(bead_vertdata(x).u_filtered{i,:}(2:5,3:7),[1,numel(bead_vertdata(x).u_filtered{i,:}(2:5,3:7))]);
        i=i+1;
    end
    
       B(x,:) = reshape(A,[1,numel(A)]); 	%turn the middle of the cell array into a 1d array
       B(x,:) = B(x,:) * -1.57 / (14*0.04);   %velocity in um/s (positive = gravity direction); 14 = #images between
       C(x,:) = [mean(B(x,:)), 0, x];        %create a matrix in which every row, ordered by video number, contains the mean velocity, 0, and the video number.
   
end

       D = transpose(bead_video_times); 
       rowstoadd = numel(D) - length(C);
       E = [C;repmat([0 0 0],rowstoadd,1)];  %make the matrix C have as many rows as there are video numbers by adding rows of zeroes to the bottom
       E = [E D];				%concatenate C with the video times vector
       E(all(E(:,3)==0,2),:)=[];		%cut out all rows that are empty
       
       
%get horizontal bead data
for x = bead_video_nums(2:end);
    beadh_base = strcat(beadh,num2str(x,'%02d'),'.mat');
    beadh_full = fullfile('/media/madeline/PENGUIN/PIVlabnew/PIVmatfiles/', beadh_base); 
    bead_horizdata(x) = load(beadh_full);    
end

for x = bead_video_nums;
    
    for i = 1:length(bead_horizdata(x).v_filtered) 
        F(i,:) = reshape(bead_horizdata(x).v_filtered{i,:}(2:5,3:7),[1,numel(bead_horizdata(x).v_filtered{i,:}(2:5,3:7))]);
        i=i+1;
    end
    
       G(x,:) = reshape(F,[1,numel(F)]);
       G(x,:) = G(x,:) * 1.5 / (14*0.04);   %velocity in um/s (positive = gravity direction); 14 = #images between
       H(x,:) = [mean(G(x,:)), 0, x];        
   
end

       I = transpose(bead_video_times); 
       rowstoadd = numel(I) - length(H);
       J = [H;repmat([0 0 0],rowstoadd,1)]; 
       J = [J I];
       J(all(J(:,3)==0,2),:)=[];

%get cell data

% for x = cell_video_nums;
%     
%     for i = 1:length(cell_data(x).u_filtered) 
%         F(i,:) = reshape(cell_data(x).u_filtered{i,:}(2:5,3:7),[1,numel(cell_data(x).u_filtered{i,:}(2:5,3:7))]);
%         i=i+1;
%     end

       
%get vertical new cell data

for x = cell_video_nums(2:end);
    newcellv_base = strcat(newcellv,num2str(x,'%02d'),'.mat');
    newcellv_full = fullfile('/media/madeline/PENGUIN/BatchPIV/', newcellv_base); 
    newcell_vertdata(x) = load(newcellv_full);    
end

for x = cell_video_nums;
    
    for i = 1:length(newcell_vertdata(x).u_filt)
        K(i,:) = reshape(newcell_vertdata(x).u_filt{i,:}(2,2:4),[1,numel(newcell_vertdata(x).u_filt{i,:}(2,2:4))]);
        i=i+1;
    end
    
       L(x,:) = reshape(K,[1,numel(K)]);
       L(x,:) = L(x,:) * -1.57 / (14*0.04);   %velocity in um/s (positive = gravity direction); 14 = #images between
       M(x,:) = [mean(L(x,:)), 0, x];         
       
      
end

       N = transpose(cell_video_times); 
       rowstoadd = numel(N) - length(M);
       O = [M;repmat([0 0 0],rowstoadd,1)]; 
       O = [O N];
       O(all(O(:,3)==0,2),:)=[];

%get horizontal cell speed matrix
for x = cell_video_nums(2:end);
    newcellh_base = strcat(newcellh,num2str(x,'%02d'),'.mat');
    newcellh_full = fullfile('/media/madeline/PENGUIN/BatchPIV/', newcellh_base); 
    newcell_horizdata(x) = load(newcellh_full);    
end

for x = cell_video_nums;
    
    for i = 1:length(newcell_horizdata(x).v_filt)
        P(i,:) = reshape(newcell_horizdata(x).v_filt{i,:}(2,2:4),[1,numel(newcell_horizdata(x).v_filt{i,:}(2,2:4))]);
        i=i+1;
    end
    
       Q(x,:) = reshape(P,[1,numel(P)]);
       Q(x,:) = Q(x,:) * 1.5 / (14*0.04);   %velocity in um/s (positive = gravity direction); 14 = #images between
       R(x,:) = [mean(Q(x,:)), 0, x];         
       
      
end

       S = transpose(cell_video_times); 
       rowstoadd = numel(S) - length(R);
       T = [R;repmat([0 0 0],rowstoadd,1)]; 
       T = [T S];
       T(all(T(:,3)==0,2),:)=[];


%get ImageJ cell data
imj_cells_seconds = imj_cells(:,5) - imj_cells(:,4);

for i = 1:length(imj_cells)
    imj_cells_horiz(i,1) = imj_cells(i,2) * sind(imj_cells(i,3)) * -1.5 / imj_cells_seconds(i,1);  %horizontal velocity in um/s
    imj_cells_vert(i,1) = imj_cells(i,2) * cosd(imj_cells(i,3)) * -1.57 / imj_cells_seconds(i,1);  %vertical velocity in um/s
    i = i+1;
end

%get ImageJ bead data
imj_beads_seconds = imj_beads(:,5) - imj_beads(:,4);

for i = 1:length(imj_beads)
    imj_beads_horiz(i,1) = imj_beads(i,2) * sind(imj_beads(i,3)) * -1.5 / imj_beads_seconds(i,1);  %horizontal velocity in um/s
    imj_beads_vert(i,1) = imj_beads(i,2) * cosd(imj_beads(i,3)) * -1.57 / imj_beads_seconds(i,1);  %vertical velocity in um/s
    i = i+1;
end


%make one figure of the horizontal velocity for cells and beads, each with PIVlab and with the manual drawing for a single particle in ImageJ, and another similar one of the vertical velocity

% figure  %vertical velocity
% 
% errorbar(E(:,4),E(:,1),E(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','red','MarkerFaceColor','red','Color','red');
% hold on
% errorbar(E(:,4),imj_beads_vert(:,1),E(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','magenta','MarkerFaceColor','magenta','Color','magenta');
% hold on
% errorbar(O(:,4),O(:,1),O(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','blue','MarkerFaceColor','blue','Color','blue');
% hold on
% errorbar(O(:,4),imj_cells_vert(:,1),O(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','cyan','MarkerFaceColor','cyan','Color','cyan');
% 
% xlabel('time (min)')
% ylabel('mean of vertical velocity (um/s)')
% legend('uPIV beads','ImageJ beads','uPIV cells','ImageJ cells')
% legend('Location','southeast')
% grid on
% 
% figure  %horizontal velocity
% errorbar(J(:,4),J(:,1),J(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','red','MarkerFaceColor','red','Color','red');
% hold on
% errorbar(J(:,4),imj_beads_horiz(:,1),J(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','magenta','MarkerFaceColor','magenta','Color','magenta');
% hold on
% errorbar(T(:,4),T(:,1),T(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','blue','MarkerFaceColor','blue','Color','blue');
% hold on
% errorbar(T(:,4),imj_cells_horiz(:,1),T(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','cyan','MarkerFaceColor','cyan','Color','cyan');
% 
% xlabel('time (min)')
% ylabel('mean of horizontal velocity (um/s)')
% legend('uPIV beads','ImageJ beads','uPIV cells','ImageJ cells')
% legend('Location','northeast')
% grid on

% use this piece of code instead if you're plotting Percoll
figure  %vertical velocity

errorbar(E(:,4),E(:,1),E(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','red','MarkerFaceColor','red','Color','red');
hold on
errorbar(percoll_imjbeadtimes,imj_beads_vert(:,1),zeros(14,1),'-s','MarkerSize',3,'MarkerEdgeColor','magenta','MarkerFaceColor','magenta','Color','magenta');
hold on
errorbar(O(:,4),O(:,1),O(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','blue','MarkerFaceColor','blue','Color','blue');
hold on
errorbar(percoll_imjcelltimes,imj_cells_vert(:,1),zeros(8,1),'-s','MarkerSize',3,'MarkerEdgeColor','cyan','MarkerFaceColor','cyan','Color','cyan');

xlabel('time (min)')
ylabel('mean of vertical velocity (um/s)')
legend('uPIV beads','ImageJ beads','uPIV cells','ImageJ cells')
legend('Location','southeast')
grid on

figure  %horizontal velocity
errorbar(J(:,4),J(:,1),J(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','red','MarkerFaceColor','red','Color','red');
hold on
errorbar(percoll_imjbeadtimes,imj_beads_horiz(:,1),zeros(14,1),'-s','MarkerSize',3,'MarkerEdgeColor','magenta','MarkerFaceColor','magenta','Color','magenta');
hold on
errorbar(T(:,4),T(:,1),T(:,2),'-s','MarkerSize',3,'MarkerEdgeColor','blue','MarkerFaceColor','blue','Color','blue');
hold on
errorbar(percoll_imjcelltimes,imj_cells_horiz(:,1),zeros(8,1),'-s','MarkerSize',3,'MarkerEdgeColor','cyan','MarkerFaceColor','cyan','Color','cyan');

xlabel('time (min)')
ylabel('mean of horizontal velocity (um/s)')
legend('uPIV beads','ImageJ beads','uPIV cells','ImageJ cells')
legend('Location','northeast')
grid on



%plot histogram for ImageJ vs. PIVlab GUI for beads in Ficoll at t=0

% ficollbeads01_manual = [17.01753708,12.67127148,14.58202781,13.16770755,15.23133691,15.62377214,12.17428165,17.12376231,11.72118802,16.07838071,15.32517917,17.41372586,22.11613903,10.6833844,11.7308677];
% ficollbeads01_pivlab = B(1,:);
% h1 = histogram(ficollbeads01_manual,'Normalization','probability')
% hold on
% h2 = histogram(ficollbeads01_pivlab,'Normalization','probability')
% h1.BinWidth = 0.5;
% h2.BinWidth = 0.5;
% xlabel('vertical velocity (um/s)')
% ylabel('fraction of data points')
% legend('ImageJ','PIVlab')

