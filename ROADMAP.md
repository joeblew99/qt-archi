# roadmap

Qt can do it all it seems.

based on: https://github.com/therecipe/qt

What are the deal breakers ?
- Device Builds
- Widgets
- GRPC.
- Embedded Bolt and bleve


## Device Builds
- Use widget/application as a test.

- Need to get very basic demo deploying to:
    - Android
        - 
    - IOS
        - https://github.com/therecipe/qt/issues/145
            - qtsetup fails to find iPhone SDK.
    - Mac
        - works !
    - Windows
    - ChromeOS



## Widgets
- QML layouts to make sure it has enough for us.
- QTWeb, because we will have to fall back to web UI some time.
    - How can we leverage GRPC for comms ? 
- How do they look on different devices ?
- How do they handle different screen sizes on mobile (landscape / portait) ?

## look
- The Black look with the colour highlights looks pretty cool to me.

## GRPC
- GRPC
    - uses little bandwidth resources
    - uses little cpu resources
    - hence is also very low latency
    - developer productivity is high.
    - tools ing is amazing.
- tracing to open tracing
    - https://github.com/grpc-ecosystem/grpc-opentracing
- telemetry to Prometheus
    - https://github.com/grpc-ecosystem/go-grpc-prometheus
- structured logging
    - logrus
- exposure to web using the grpc- gateway. This is an easy way to reuse your GRPC service to have a REST / JSON API, with Swagger.
    - https://github.com/grpc-ecosystem/grpc-gateway
- exposure to web using the proto.js (JS), with the new grpc-bus (golang). This is a way to reuse your GRPC Service to have a web socket based communication with the browser.
    - https://github.com/paralin/grpc-bus


## DB
- boltdb & bleve
- bolt is embedded
- bleve is not embedded
    - GRPC API for bleve ? 
- boltDB types feed into bleve for auto indexing.
- Qt UI showing off  bleve facets & free text

https://git.autistici.org/ai/webtools/blob/master/cmd/sitesearch/sitesearch.go
- nice site search

## i18n
- User, Developers & Translators can change Language at run time.
    - Choose if they want to get strings from File OR Server 
        - Server is a public server
            - Has a File in memory backing, not DB
        - File is local
- Sync needs to work in real time.
    - Each string meta info of:
        - MachineResult
        - MachineDateTime
        - MachineOverride
        - UserResult
        - UserName
        - UserDateTime
        - MergeDateTime
    - This meta data allows the file to be mergable.
    - Git Merge will not work, and instead we need to compare the local copy (in Git tree) with the one from the File Server 
        - The MargeDateTime is the decider of what string wins.

- https://doc.getqor.com/plugins/i18n.html
    - https://github.com/qor/i18n
        - looks like a good approach

- https://github.com/therecipe/qt/tree/master/internal/examples/quick/translate
    - Has example here to use

## KV Backend
- Make one as a MicroService. 
- Use GRPC
- Make a real BoltDB store for it.
- Then inside the MS, Later i can make it instead talk to a real KV server
    - The Microservice is perfect because its emergent and so i can put in many Health Insurance gateways that subscribe via NATS.
    - Just convert the Types to xDT
    - Write code to call KV Server API inside.

