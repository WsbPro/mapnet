function fileStr = file2string(fname)

fileStr = '';
fid = fopen(fname,'r');
tline = fgetl(fid);
while ischar(tline)
    fileStr = [fileStr ' ' tline];
    tline = fgetl(fid);
end
fclose(fid);