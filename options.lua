cmd = torch.CmdLine('_')
cmd:text()
cmd:text('Options:')
cmd:option('-seed', 1, 'fixed input seed for repeatable experiments')
cmd:option('-threads', 1, 'number of threads')
cmd:option('-optimization', 'SGD', 'optimization method: SGD | ASGD | CG | LBFGS')
cmd:option('-learningRate', 1e-2, 'learning rate at t=0')
cmd:option('-batchSize', 1, 'mini-batch size (1 = pure stochastic)')
cmd:option('-batchSizeTest', 1, 'mini-batch size (1 = pure stochastic)')
cmd:option('-learningRateDecay', 0, 'weight decay (SGD only)')
cmd:option('-momentum', 0, 'momentum (SGD only)')
cmd:option('-decayRMSProp', 0.95, 'decay for rmsprop')
cmd:option('-lrRMSProp', 1e-4, 'learning rate for rmsprop')
cmd:option('-momentumRMSProp', 0.9, 'momentum for rmsprop')
cmd:option('-epsilonRMSProp', 1e-4, 'epsilon for rmsprop')
cmd:option('-t0', 1, 'start averaging at t0 (ASGD only), in nb of epochs')
cmd:option('-maxIter', 2, 'maximum nb of iterations for CG and LBFGS')
cmd:option('-type', 'float', 'type: double | float | cuda')
cmd:option('-trainFile', 'train', 'input training file')
cmd:option('-validFile', 'valid', 'input validation file')
cmd:option('-testFile', 'test', 'input test file')
cmd:option('-embeddingFile', 'embedding', 'input embedding file')
cmd:option('-embeddingDim', 100, 'input word embedding dimension')
cmd:option('-contConvWidth', 2, 'continuous convolution filter width')
cmd:option('-wordHiddenDim', 200, 'first hidden layer output dimension')
cmd:option('-numFilters', 1000, 'CNN filters amount')
cmd:option('-hiddenDim', 1000, 'second hidden layer output dimension')
cmd:option('-numLabels', 311, 'label quantity')
cmd:option('-epoch', 200, 'maximum epoch')
cmd:option('-L1reg', 0, 'L1 regularization coefficient')
cmd:option('-L2reg', 1e-4, 'L2 regularization coefficient')
cmd:option('-trainMaxLength', 150, 'maximum length for training')
cmd:option('-testMaxLength', 150, 'maximum length for valid/test')
cmd:option('-trainMinLength', 40, 'maximum length for training')
cmd:option('-testMinLength', 40, 'maximum length for valid/test')
cmd:option('-gradClip', 0.3, 'gradient clamp')
cmd:option('-gpuID', 1, 'GPU ID')
cmd:option('-outputprefix', 'none', 'output file prefix')
cmd:option('-prevtime', 0, 'time start point')
cmd:option('-usefbcunn', false, 'use fbcunn')
cmd:option('-usecudnn', false, 'use cudnn')
cmd:option('-nesterov', false, 'use nesterov')
cmd:option('-saveMode', 'last', 'last|every')
cmd:option('-LSTMhiddenSize', 500, 'lstm hidden state size')
cmd:option('-RNNhiddenSize', 500, 'rnn hidden state size')
cmd:option('-GRUhiddenSize', 500, 'gru hidden state size')
cmd:option('-LSTMmode', 5, 'lstm mode, 4: cudnn and using last state')
cmd:option('-dropout', 0, 'dropout probability')
cmd:option('-model', 1, 'used model')
cmd:option('-lastReLU', false, 'use ReLU at last layer')
cmd:option('-rnnReLU', false, 'use ReLU for rnn')
cmd:option('-rnnTanh', false, 'use Tanh for rnn')
cmd:option('-criterionWeight', 0.7, 'criterionWeight for nll')
cmd:option('-twoCriterion', false, 'use two criterions')
cmd:option('-useACN', false, 'use AddConstantNeg')
cmd:option('-conv1Norm', false, 'add normalize layer after 1st cnn')
cmd:option('-conv2Norm', false, 'add normalize layer after 2nd cnn')
cmd:option('-conv3Norm', false, 'add normalize layer after 3rd cnn')
cmd:option('-conv4Norm', false, 'add normalize layer after 4th cnn')
cmd:option('-conv5Norm', false, 'add normalize layer after 5th cnn')
cmd:option('-conv6Norm', false, 'add normalize layer after 6th cnn')
cmd:option('-conv7Norm', false, 'add normalize layer after 7th cnn')
cmd:option('-conv8Norm', false, 'add normalize layer after 8th cnn')
cmd:option('-conv9Norm', false, 'add normalize layer after 9th cnn')
cmd:option('-normTrans', false, 'add transpose before normalization')
cmd:option('-topk', 1, 'optk value')
cmd:option('-TMP', false, 'use TemporalMaxPooling')
cmd:option('-loadBin', false, 'load binary data tensors')
cmd:option('-saveBin', false, 'save binary data tensors')
cmd:option('-valid', false, 'run valid')
cmd:option('-test', false, 'run test')
cmd:option('-padidx', 0, 'word idx used for padding')
cmd:text()
opt = cmd:parse(arg or {})
