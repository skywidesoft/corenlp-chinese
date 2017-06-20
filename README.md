Docker image - Stanford CoreNLP with Chinese Model
---------------------------------------------------------

### Details
- CoreNLP
- English language model
- Chinese language model

### Build image
    docker build -t skywidesoft/corenlp-chinese .

### Push image
    docker push skywidesoft/corenlp-chinese

### Tag image
    docker tag [image-id] skywidesoft/corenlp-chinese:3.8.0
    docker push skywidesoft/corenlp-chinese:3.8.0

### Run container
    docker run --name corenlp-chinese-380 -p 9000:9000 -d skywidesoft/corenlp-chinese:3.8.0

### References
* [CoreNLP](http://stanfordnlp.github.io/CoreNLP/index.html)
* [CoreNLP Server](http://stanfordnlp.github.io/CoreNLP/corenlp-server.html)