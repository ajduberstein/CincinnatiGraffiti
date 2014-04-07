library(ggmap)
map = get_map(location = 'Cincinnati, OH', zoom = 13)
f = read.csv('graffiti.csv',header=T) 
mapPointsDA <- ggmap(map) + geom_point(aes(x = f$lon, y = f$lat, data = f$street, alpha = .5))
mapPointsDA
