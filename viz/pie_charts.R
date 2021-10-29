sales_by_gender = c("Female"=177,
                    "Male"=145)
percents = round(100 * sales_by_gender / sum(sales_by_gender))
labels = paste(names(sales_by_gender), percents)
labels = paste(labels, '%', sep='')
               
pie(sales_by_gender, labels, main="Bests Sellers by Female and Male")


pdf('sales_by_gender.pdf', width=5, height=5)

pie(sales_by_gender, labels, main="Bests Sellers by Female and Male")

dev.off()

sales_by_genre = c("Fiction"=159,
                   "Non-fiction"=146,
                   "Poetry"=17)
percents = round(100 * sales_by_genre / sum(sales_by_genre))
labels = paste(names(sales_by_genre), percents)
labels = paste(labels, '%', sep='')

pdf('sales_by_genre.pdf', width=5, height=5)

pie(sales_by_genre, labels, main="Bests Sellers by Type")

dev.off()

