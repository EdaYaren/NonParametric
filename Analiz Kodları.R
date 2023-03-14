
# Veri Girisi-1:

a_salam <- c(1,8,7,7,8,6,7,6)
b_salam <- c(6,7,5,6,7,7,8,5)
c_salam <- c(8,9,9,10,9,9,8,7)
d_salam <- c(7,8,8,6,8,9,7,5)
salam_cesidi <- factor(rep(c("A","B","C","D"),each=8))
uzman <- factor(rep(c("1","2","3","4","5","6","7","8"),times=4))
puan <- c(a_salam,b_salam,c_salam,d_salam)
veri1 <- data.frame(puan,salam_cesidi,uzman)

# Normallik Testi-1:

shapiro.test(a_salam)
shapiro.test(b_salam)
shapiro.test(c_salam)
shapiro.test(d_salam)

# Özet Istatistikler-1:

summary(a_salam)
summary(b_salam)
summary(c_salam)
summary(d_salam)

# Veri Girisi-2:

a_budama <- c(790,810,800,815,805,825)
b_budama <- c(820,815,810,820,815,805)
c_budama <- c(770,785,765,780,800,770)
d_budama <- c(760,770,750,770,760,765)
budama_yöntemleri <- factor(rep(c("A","B","C","D"),each=6))
ölcüm <- factor(rep(c("1","2","3","4","5","6"),times=4))
agirlik <- c(a_budama,b_budama,c_budama,d_budama)
veri2 <- data.frame(agirlik,budama_yöntemleri,ölcüm)

# Normallik Testi-2:

shapiro.test(a_budama)
shapiro.test(b_budama)
shapiro.test(c_budama)
shapiro.test(d_budama)

# Özet Istatistikler-2:

summary(a_budama)
summary(b_budama)
summary(c_budama)
summary(d_budama)

# Isaret Testi-1:

library(DescTools)
SignTest(x=a_salam,mu=7,alternative="greater")

# Wilcoxon Testi-1:

library(stats)
wilcox.test(a_salam,mu=7,alternative="greater")

# Mann-Whitney Testi-1:

wilcox.test(b_salam,d_salam,alternative="two.sided",conf.level=0.95,paired=FALSE) 

# Iki Örneklem Wilcoxon Testi-2:

wilcox.test(a_budama,c_budama,alternative="less",conf.level=0.95,paired=TRUE) 

# Kruskal-Wallis Testi-1:

library(stats)
kruskal.test(puan~salam_cesidi,data=veri1)

# Boxplot Grafigi:

library(ggplot2)
ggplot(veri1, aes(x=salam_cesidi, y=puan)) + 
  geom_boxplot(fill="purple", alpha=0.4) + 
  xlab("Salam Çesitleri") + ylab("Puanlar")

# Post-Hoc Testi-1:

library(PMCMRplus)
kwAllPairsNemenyiTest(x=puan,salam_cesidi, method="Chisq")

# Friedman Testi-2:

friedman.test(agirlik~budama_yöntemleri|ölcüm,data=veri2)

# Post-Hoc Testi-2:

frdAllPairsNemenyiTest(y=agirlik,groups=budama_yöntemleri,blocks=ölcüm)




