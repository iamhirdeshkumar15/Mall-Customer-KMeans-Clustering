# K-means algorithm ------ unsupervised learning
unsuper <- read.csv(file.choose())  # Load dataset via a file picker (user selects file)
unsuper <- unsuper[4:5]  # Select the 4th and 5th columns of the dataset (likely features like 'Annual Income' and 'Spending Score')

# Using the elbow method to find the optimal number of clusters
set.seed(6)  # Set a seed for reproducibility
wcss <- vector()  # Initialize an empty vector to store WCSS (Within-Cluster Sum of Squares)

# Loop over 1 to 10 clusters, calculating WCSS for each number of clusters
for (i in 1:10) 
  wcss[i] = sum(kmeans(unsuper, i)$withinss)  # Calculate WCSS for each k (number of clusters)

# Plot the WCSS for each number of clusters to identify the "elbow" point
plot(1:10,
     wcss, type = 'b',  # Create a line and point plot
     main = paste('The Elbow Method'),  # Title of the plot
     xlab = 'Number of Clusters',  # X-axis label (number of clusters)
     ylab = 'WCSS')  # Y-axis label (Within-Cluster Sum of Squares)

# Fitting K-means to the dataset with a specified number of clusters (6 in this case)
set.seed(29)  # Set another seed for reproducibility of clustering
kmeans = kmeans(x = unsuper, centers = 6, iter.max = 500)  # Apply K-means algorithm with 6 clusters and a max of 500 iterations
kmeans  # Print the K-means result to view cluster centers and other info

# Store the cluster assignments (which cluster each observation belongs to)
y_kmeans <- kmeans$cluster  
y_kmeans  # Print the cluster assignments for all data points

# Save the cluster assignments in a CSV file for future use
write.csv(y_kmeans, "cluster.csv")  # Save cluster results to 'cluster.csv' in the working directory

# Install the 'cluster' package (if not already installed)
install.packages("cluster")  # This line installs the 'cluster' package for visualization purposes
library(cluster)  # Load the 'cluster' library

# Plot the clusters using the 'clusplot' function from the 'cluster' package
clusplot(unsuper,  # Data used for clustering (4th and 5th columns of the dataset)
         y_kmeans,  # Cluster assignments
         lines = 0,  # No lines connecting points
         shade = TRUE,  # Use shading to differentiate clusters
         color = TRUE,  # Color the clusters for visual distinction
         labels = 2,  # Label the points based on their cluster
         plotchar = FALSE,  # Don't use different plot characters for clusters
         span = TRUE,  # Add ellipses around clusters to indicate cluster spread
         main = paste('Clusters'),  # Title of the cluster plot
         xlab = 'Annual',  # X-axis label (likely representing Annual Income)
         ylab = 'Spending Score')  # Y-axis label (likely representing Spending Score)
