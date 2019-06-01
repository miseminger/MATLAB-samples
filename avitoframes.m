savefolder = '/home/madeline/Desktop/BioMEMs/buoyancy/feb9_beads_2ml_85percenthumidity/pbsbeads_pt1/pbsbeads5';
mkdir(savefolder);
obj = VideoReader('/home/madeline/Desktop/BioMEMs/buoyancy/feb9_beads_2ml_85percenthumidity/pbsbeads_pt1/pbsbeads5.avi');
vid = read(obj);
frames = obj.NumberOfFrames;
for x = 1:14:frames
    basename = strcat('pbsbeads5_frame-',num2str(x,'%03d'),'.tif');
    fullname = fullfile(savefolder, basename);
    %imwrite(imcomplement(vid(:,:,:,x)),fullname);
    imwrite(vid(:,:,:,x),fullname);
    x = x+1;
end