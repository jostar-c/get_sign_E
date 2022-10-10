maxE=0;
sumE=0;
p1=100;
p2=100;
p3=100;
for num1=1:6
    for num2=12:16
        sumE=0;
        for k=1:100
            sum=0;
          	correct=0;
            for i=1:5
                [score,sign]=get_random_sign();
                find=zeros(1,90);
                find1=zeros(1,90);
                sumfind=0;
                for j1=1:90
                    if sumfind<num1&&score(j1)<2.5
                        sum=sum+1;
                        find1(j1)=find1(j1)+1;
                     	if sign(1,j1)==0
                            correct=correct+1;
                            sumfind=sumfind+1;
                            find(j1)=find(j1)+1;
                        end
                    end
             	end
                for j1=2:20
                    sumfind=0;
                    for j2=1:90
                        if find1(j2)-find(j2)<=4&&sumfind<num1&&find(j2)~=0
                            if find(j2)==1
                                if randi(100)<=p1
                                sum=sum+1;
                                find1(j2)=find1(j2)+1;
                                if sign(j1,j2)==0
                                    correct=correct+1;
                                    sumfind=sumfind+1;
                                    find(j2)=find(j2)+1;
                                end 
                                end
                            elseif find(j2)==2
                                if randi(100)<=p2
                                sum=sum+1;
                                find1(j2)=find1(j2)+1;
                                if sign(j1,j2)==0
                                    correct=correct+1;
                                    sumfind=sumfind+1;
                                    find(j2)=find(j2)+1;
                                end
                                end
                            elseif find(j2)==3
                                if randi(100)<=p3
                                sum=sum+1;
                                find1(j2)=find1(j2)+1;
                                if sign(j1,j2)==0
                                    correct=correct+1;
                                    sumfind=sumfind+1;
                                    find(j2)=find(j2)+1;
                                end
                                end
                            elseif find(j2)<num2
                                sum=sum+1;
                                find1(j2)=find1(j2)+1;
                                if sign(j1,j2)==0
                                    correct=correct+1;
                                    sumfind=sumfind+1;
                                    find(j2)=find(j2)+1;
                                end 
                            end
                        end
                    end
                end
            end
            sumE=sumE+correct/sum;
       	end
        if sumE>maxE
        	maxE=sumE;
            finalnum1=num1;finalnum2=num2;
        end
    end
end