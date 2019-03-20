Github username: vohuong1004
public repository: 45515840-THQ1
file name: 45515840-THQ1
#Question 1
Coupon=C
Face value=F
e=2.71828
The number of coupon payments=n
y=c(y(0.5),y(1),y(1.5),...,y(n))
j=seq(0.5,n,by=0.5)
P=sum(C*e^-(y*j))+F*e^-(y(n)*n)
#Question 3
(a)
dataset=read.csv(file.choose())
dataset
(b)
dataset=na.omit(dataset)
dataset
(c)
plot(dataset$time,dataset$gdp,main = "Singapore GDP growth",xlab = "Time",ylab = "GDP(%)")
(d)

(e)
pairs(dataset[,-(1:2)])
(f)
lm(dataset$exp~dataset$gdp)
summary(lm(dataset$exp~dataset$gdp))
According to the result which represents the relationship between export growth rate and GDP,  we have the simple linear regression:
  predicted GDP = -0.9336+1.5092x (x:export growth rate)
In addition F(1, 108) = 43.66, p = 1.524e-09 and exp assumes 28.13% of the variability in GDP
(g)
G=lm(dataset$exp+dataset$epg+dataset$hpr+dataset$gdpus+dataset$oil+dataset$crd~dataset$gdp)
summary(G)
The result indicates that GDP could be predicted based on many variables as exp, epg, hpr, gdpus, oil, crd . 
F(1, 108) = 1.141, p = 0.2879 and 6 variables assume 0.1287% the variability in GDP.
(h)
q=quantile(dataset$gdp,0.05)
state=rep("crisis",nrow(dataset))
state[dataset$gdp>q]="normal"
state=as.factor(state)
state
dataset=data.frame(dataset,state)
glm(dataset$bci[1:72]~dataset$state[1:72])
