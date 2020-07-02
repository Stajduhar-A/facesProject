function test()
files = dir('black-edited/*.jpg')
N = length(files)   % total number of files 
% loop for each file 
for i = 1:N
    thisfile = files(i).name
    img = imread(thisfile)
    showOption = false
    img_scrambled = hb_imageScramble( img, 20, showOption ) % 5 by 5 scrambling
    imwrite(img_scrambled, sprintf('black-edited/scrambled/BF06%d_1100_00F.jpg', i));
end

