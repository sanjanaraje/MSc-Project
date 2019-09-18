function loss = loss( expertPredictions,outcomes )
loss= (expertPredictions-outcomes).^2;
end