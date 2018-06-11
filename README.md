# Discourse

[Discourse](https://www.discourse.org/) is the next-generation community forum platform. Discourse has a thoroughly modern design and is written in JavaScript. Page loads are very fast and new content is loaded as the user scrolls down the page. Discourse allows you to create categories, tag posts, manage notifications, create user profiles, and includes features to let communities govern themselves by voting out trolls and spammers. Discourse is built for mobile from the ground up and support high-res devices.


## Installing the Chart

To install the chart, run the following:

```bash
$ helm install --name [deployment name]
```

## Uninstalling the Chart

To uninstall:

```bash
$ helm delete [deployment name]
```

To purge:

```bash
$ helm delete --purge [deployment name]
```

## Image Storage.

Images are stored under the persistent volume.


## TODO

* Make the app more resilient, i.e. have more than 1 replica. That will require switching the Volume to be shared one.
* Enable email
* Finalise architecture for Deployments, i.e. a number of replicas for Discourse vs. Sidekiq
* Use AWS S3 buckets for image uploads. At the moment, there is no reliable way to enable that during the deployment.
