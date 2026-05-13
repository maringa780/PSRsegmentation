function BW=multiROIs(haxes,type,color)
if type==1
h = drawfreehand(haxes,'Closed',type,'Deletable',0,'FaceSelectable',0,'InteractionsAllowed','none','Multiclick',1);
h.Color=color;
BW2 = createMask(h);
hxy=h.Position;
assignin('base','hxy',hxy)
while ~isempty(h.Position)
h = drawfreehand(haxes,'Closed',type,'Deletable',0,'FaceSelectable',0,'InteractionsAllowed','none','Multiclick',1);
 if ~isempty(h.Position) %wait(h)
h.Color=color;
BW2=BW2+createMask(h);
 end
end

elseif type==0
h = drawfreehand(haxes,'Closed',type,'Deletable',0,'FaceSelectable',0,'InteractionsAllowed','none','Multiclick',1);
h.Color=color;
BW = createMask(h);
BW2=zeros(size(BW));

xy = h.Position; assignin('base','xy',xy)
[cx,cy,~] = improfile(BW2,xy(:,1),xy(:,2));

xy=round([cx,cy]); xy(xy<=0)=nan; xy=xy(~any(isnan(xy),2),:);%remove negative
cx=xy(:,1);cy=xy(:,2);
cx(cx>size(BW,2))=nan;  cy(cy>size(BW,1))=nan; xy=[cx,cy]; 
xy=xy(~any(isnan(xy),2),:);%remove outside
cx=xy(:,1);cy=xy(:,2);

out = zeros(size(BW2));
out(sub2ind(size(out),round(cy),round(cx))) = 1;
BW2=out;
while ~isempty(h.Position)
    h = drawfreehand(haxes,'Closed',type,'Deletable',0,'FaceSelectable',0,'InteractionsAllowed','none','Multiclick',1);
    if ~isempty(h.Position)
        h.Color=color;
        xy = h.Position;
[cx,cy,~] = improfile(BW2,xy(:,1),xy(:,2));

xy=round([cx,cy]); xy(xy<=0)=nan; xy=xy(~any(isnan(xy),2),:);%remove negative
cx=xy(:,1);cy=xy(:,2);
cx(cx>size(BW,2))=nan;  cy(cy>size(BW,1))=nan; xy=[cx,cy]; 
xy=xy(~any(isnan(xy),2),:);%remove outside
cx=xy(:,1);cy=xy(:,2);

out = zeros(size(BW2));
out(sub2ind(size(out),round(cy),round(cx))) = 1;
BW2=BW2+out;
    end
end
BW2=imdilate(BW2,strel('disk',1,8));
end

BW=logical(BW2);