
years <- c(2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)
values <- c(12400, 12800, 13800, 13600, 14200, 15600, 17600, 19200, 20300, 20800, 21200, 22400, 23400, 24500, 25800, 26100, 28300, 29600, 32100, 32500, 33200, 33800)
data <- data.frame(Year=years, Value=values)


model <- lm(Value ~ Year, data=data)

summary(model)


future_years <- data.frame(Year=c(2022, 2023, 2024, 2025))
predictions <- predict(model, newdata=future_years)
print(predictions)

plot(data$Year, data$Value, main="Lineer Regresyon Modeli", xlab="Yıl", ylab="Değer", pch=19)
abline(model, col="red")
