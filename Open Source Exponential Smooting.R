#Analisis Time Series - Exponential Smoothing#

data = Jumlah.Penumpang.MRT

data = ts(data, start = c(2020,1), end = c(2021,12), frequency = 12)

ts.plot(data)

foreSingle = HoltWinters(data, beta = F, gamma = F)
foreSingle
foreSingle$SSE
plot(foreSingle)

foreDouble = HoltWinters(data, gamma = F)
foreDouble
foreDouble$SSE
plot(foreDouble)

foreTriple = HoltWinters(data)
foreTriple
foreTriple$SSE
plot(foreTriple)

allSSE <- data.frame(metode=c("Single Exponential Smoothing",
                              "Double Exponential Smoothing Hotl",
                              "Triple Exponential Smoothing Holt-winters"),
                     SSE=c(foreSingle$SSE,
                           foreDouble$SSE,
                           foreTriple$SSE))
View(allSSE)

predict(foreTriple, n.ahead = 6)

