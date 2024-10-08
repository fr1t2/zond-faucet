#!/bin/bash

/home/fr1t2/ZOND/beacon/beacon-chain \
	--datadir=/home/fr1t2/ZOND/beacon/beacondata \
	--min-sync-peers=1 \
	--genesis-state=/home/fr1t2/ZOND/gzond/gzonddata/genesis.ssz \
	--chain-config-file=/home/fr1t2/ZOND/gzond/gzonddata/config.yml \
	--config-file=/home/fr1t2/ZOND/gzond/gzonddata/config.yml \
	--chain-id=32382 \
	--execution-endpoint=http://localhost:8551 \
	--accept-terms-of-use \
	--jwt-secret=/home/fr1t2/ZOND/gzond/gzonddata/gzond/jwtsecret \
	--contract-deployment-block=0 \
	--minimum-peers-per-subnet=0 \
	--p2p-static-id \
	--bootstrap-node "enr:-MK4QB1-CQAEPXFwD0D_tS08YXWPsKuaWdCzentML2JhAJnvXUR4lSPHCRXHCjudviKciwBmbPirHjyL_kmI0T1ti6qGAY0sF6hgh2F0dG5ldHOIAAAAAAAAAACEZXRoMpDeYa1-IAAAk___________gmlkgnY0gmlwhC1MJ0KJc2VjcDI1NmsxoQN_5eo8D8pFGWUX1SMAT7kMbY2a9Ryb6Bu2oAW8s28kyYhzeW5jbmV0cwCDdGNwgjLIg3VkcIIu4A" \
	--bootstrap-node "enr:-MK4QOiaZeOWRnUyxfJv0lTbvjh-Re4zfDBW7vNWl9wIW7n8OWzMmxhy8IVHgRF7QZrkm7OGShDogEYUtdg8Bt1nIqaGAY0sFwP7h2F0dG5ldHOIAAAAAAAAAACEZXRoMpDeYa1-IAAAk___________gmlkgnY0gmlwhC0g6p2Jc2VjcDI1NmsxoQK6I2IsSSRwnOtpsnzhgACTRfYZqUQ1aTsw-K4qMR_2BohzeW5jbmV0cwCDdGNwgjLIg3VkcIIu4A"

