# unstable-fabric-docs

Automated doc builds from the latest master branch of hyperledger/fabric

The docs on the gh-pages branch are built from a Hyperledger Fabric mirror using the following script in an IBM Cloud [Delivery Pipeline](https://cloud.ibm.com/docs/services/ContinuousDelivery?topic=ContinuousDelivery-deliverypipeline_about#deliverypipeline_about).

```
source <(curl -sSL "https://raw.githubusercontent.com/hyperledgendary/unstable-fabric-docs/master/scripts/build-unstable-docs.sh")
```
