# Mall-Customer-KMeans-Clustering
R code implementing K-Means clustering on mall customer data, using the Elbow Method for optimal cluster selection and cluster visualization

This project applies the **K-Means clustering algorithm**, an unsupervised machine learning technique, to group mall customers based on their **Annual Income** and **Spending Score**. The **Elbow Method** is used to determine the optimal number of clusters, and the clusters are visualized using a cluster plot.

## Project Overview

In this project, we:
- Use the **Elbow Method** to identify the ideal number of clusters.
- Apply the **K-Means algorithm** to segment the customers into distinct groups.
- Visualize the clusters using the **`clusplot`** function from the `cluster` package.

## Key Features

- **Optimal Clusters**: The Elbow Method helps determine the optimal number of clusters.
- **K-Means Clustering**: Segments customers into clusters based on Annual Income and Spending Score.
- **Cluster Visualization**: Visual representation of customer clusters using a scatter plot.

## Dataset

The dataset used is the **Mall_Customers.csv**, which contains information about mall customers, including:
- **CustomerID**: Unique identifier for each customer.
- **Gender**: Customer gender.
- **Age**: Age of the customer.
- **Annual Income**: Annual income of the customer (in thousands of dollars).
- **Spending Score**: A score assigned by the mall based on customer behavior and spending.

## Project Structure

- **Mall_Customers.csv**: The dataset containing mall customer information.
- **kmeans_clustering.R**: R script implementing K-Means clustering.
- **cluster.csv**: Output file containing the cluster assignments for each customer.

## Requirements

- R (version 3.6 or higher)
- R libraries:
  - `ggplot2`
  - `cluster`

You can install the necessary libraries using the following R commands:

```r
install.packages("ggplot2")
install.packages("cluster")
