

# input: vector of features, means for each feature, standard deviations for each feature
# returns: probability of this combination of features
# assumptions: features are normally distributed and independent
anom_prob <- function(vals, means, sigmas){
  prob = 1
  for (n in 1:length(vals)){
    prob = prob * (1/(sqrt(2*pi)*sigmas[n]))*exp(-((vals[n]-means[n])^2)/(2*sigmas[n]^2))	# product of prob. density function output for each feature
  }
  return(prob)
}
