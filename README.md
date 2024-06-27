# Parametrik Olmayan İstatistiksel Yöntemler
Analiz yapılacak veriler normal dağılıma sahip olmadıklarında verilere uygulanan istatistiksel modellerdir.

2 farklı veriseti seçilip R Studio ve Python Jupyter Notebook üzerinden veriler analiz edilmiştir.

![R Studio Logo](https://upload.wikimedia.org/wikipedia/commons/d/d0/RStudio_logo_flat.svg)
![Python Logo](https://cf.appdrag.com/dashboard-openvm-clo-b2d42c/uploads/Jupyter-Notebook-EF5w-udy4.png)

Seçilen verisetlerindeki grupların normallik varsayımı `Shapiro Wilk` normallik testi ile incelenmiştir.

Verisetleri içinde bulunan gruplar arası farklılıklar:
* Wilcoxon İşaretli Sıra Sayıları Testi
* Mann Whitney U Testi
* Kruskal Wallis-H Testi
* Friedman Testi

testleri ile incelenip sonuçlara göre farklılık yaratan gruplar da `Post-Hoc` testleri ile yorumlanmıştır.

