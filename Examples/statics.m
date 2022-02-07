%% Initialize Linkage
TestLink = Link();
TestLinkage = Linkage(TestLink);

%% Get Dataset


for i = 1:8:80
    for j = 1:8:80
        xyz = [];
        for k = 1:8:80
            [q,u,list] = TestLinkage.statics([i j k]);
            xyz = [xyz; i,j,k,list];
%             saveas(gcf, ['image',num2str(k),'.png']);
        end
        writematrix(xyz, ['image',num2str((i-1)/8*10+(j-1)/8),'.txt'], 'Delimiter', ',');
    end
end


%% Save

writematrix(xyz, 'Dataset.txt')
