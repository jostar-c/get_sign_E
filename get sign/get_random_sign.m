function [score,sign]=get_random_sign()
    score=normrnd(2.5,0.5,[1,90]);
    sign=ones(20,90);
    sum80=randi([5,8]);
    x=randperm(90);
    x1=x;
    max=90;
    j=1;
    for i=1:max
        if score(x1(j))>=2.5
            x1(j)=[];
            max=max+1;
        else j=j+1;
        end
    end
    for i=1:sum80
        y=randperm(20);
        for j=1:16
            sign(y(j),x1(i))=0;
        end
        x=x(~ismember(x,x1(i)));
    end
    for i=1:20
        y=randperm(90-sum80);
        for j=1:randi([0,3])
            sign(i,x(y(j)))=0;
        end
    end
end