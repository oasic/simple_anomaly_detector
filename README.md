simple_anomaly_detector
=======================

Simple and 'naive' anomaly detection function for R.  Naive because it assumes independence between variables and simple because:
* all variables are assumed to be gaussian
* parameterized by mean and standard deviation rather than covariance matrix

How it works
-----------------
The function *anom_prob* takes a vector of features (should be real valued), a vectors of means (for each feature), and a vector of standard deviations (for each feature).  It outputs a probability of that point.  If the probability is less than a particular threshold (that you choose), then flag that instance as anomalous.

Example Usage
------------------
Below we use an instance that has only one feature with a value of 200, a mean of 200, and standard deviation of 10.  In reality, you will have many features, so the output probability will be much, much lower.

<pre><code>
source('anomaly.R')
anom_prob(c(200), c(200), c(10))
[1] 0.03989423
</code></pre>

Why?
---------------
Programming a concept helps to understand it.  This project may be too simple to be of benefit to anyone but the author.
