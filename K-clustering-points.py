import json
import numpy
import random

with open("crime.json") as json_file:
    json_data = json.load(json_file)

points = [ ]
for crime in json_data["data"]:
#for n in range(0, 500):                  
#    crime = json_data["data"][n]
    lat = float(crime[17])
    lng = float(crime[18])
    points.append((lat, lng))

def make_clusters(points,centroids):
	clusters = {}
	for item in points:
		optimalCentroid = min([(i[0], numpy.linalg.norm(item-centroids[i[0]])) \
			for i in enumerate(centroids)], key=lambda t:t[1])[0]
		try:
			clusters[optimalCentroid].append(item)
		except KeyError:
			clusters[optimalCentroid] = [item]
	return clusters

def recompute_centroids(centroid, clusters):
	newCentroid = []
	keys = sorted(clusters.keys())
	for k in keys:
		newCentroid.append(np.mean(clusters[k], axis = 0))
	return newCentroid

def has_converged(centroids, lastCentroids):
	return (set([tuple(a) for a in centroids]) == set([tuple(a) for a in lastCentroids]))

def compute_centroids (points, numClust):
	points = np.array(points)
	lastCentroid = random.sample(points, numClust)
	centroids = random.sample(points, numClust)
	while not has_converged(centroids, lastCentroid):
		lastCentroid = centroids
		clusters = make_clusters (points, centroids)
		centroids = recompute_centroids(lastCentroid, clusters)
	return (centroids, clusters)

result = compute_centroids(points, 20)
centroids = result[0]
clusters = result[1]

#get number of centroids in block, get cluster.length at same number, add total crimes
#check centroids
ttl = 0
for n in range (0,len(centroids)):
    ttl = ttl + len(clusters[n])
    print n, ": ", centroids[n], len(clusters[n])

print "total:", ttl

#print to file
f = open("test.csv", "w") 
f.write("lat,long,value\n")
for n in range (0,len(centroids)):
    f.write("%f,%f,%d\n" % (centroids[n][1], centroids[n][0], len(clusters[n])))
f.close()
