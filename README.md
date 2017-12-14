# chirpi: 

A headless Chirp updater for updating radios on the go. I used a $10 Raspberry Pi Zero W.

The basic idea is that you can edit your Chirp files on your desktop, save them to a cloud fileshare (I use Dropbox) and then when you get in the car (or somewhere not convenient for plugging your radio into your computer) you can boot up your chirpi and let it update your radio.

## Command Line Chirp
Chirp (https://chirp.danplanet.com) is an awesome tool for updating a number of different amateur radios. It runs on Linux, Windows and Mac.

chirpc is a command line implementation of Chirp that you'll need to downlaod from here: https://github.com/tylert/chirp.hg

## Dropbox

I keep my Chirp files in Dropbox but you could accomplish the same thing with any cloud fileshare that lets you set a public URL for sharing your files.

## Instalation and Setup

1) Download and setup chirpc (https://github.com/tylert/chirp.hg)
```
git clone https://github.com/tylert/chirp.hg.git
```
2) Download chirpi
```
git clone https://github.com/tycen/chirpi.git
```

<!--
And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc 
--> 
