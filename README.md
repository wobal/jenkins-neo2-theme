# Jenkins Neo2 Theme

Beautify your Jenkins with the a modern flat theme!

<!-- Website: http://jenkins-contrib-themes.github.io/jenkins-neo2-theme -->

This started as a fork to **jenkins-neo-theme**, which itself started as a fork
to the **jenkins-material-theme**, but was developed further to work correctly
with modern versions of Jenkins.

 
## Features
* Just one  css file
* Embed minified SVG images
* Multiple ways to install

<!-- ## Screenshots
![Screen 1](screens/screen1.png)   ![Screen 2](screens/screen2.png)   ![Screen 3](screens/screen3.png)    ![Screen 4](screens/screen4.png) -->


## Installation 

### Using this GitHub page

1. Install [Jenkins Simple Theme Plugin][simple]

2. Click `Manage Jenkins`

3. Click `Configure System` and scroll down to `Theme`

4. Specify the URL for `http://tobix.github.io/jenkins-neo2-theme/dist/neo-light.css`.

5. Click `Save`


### Using your Jenkins Hosting

1. Upload the file `http://tobix.github.io/jenkins-neo2-theme/dist/neo-light.css` to your web server

2. Follow the steps of the previous method using your uploaded file as URL in step 4


### Using Stylish (only you will be able to see the awesome theme)

1. Install the [Stylish Chrome extension][stylish]

2. Copy the content of the file `http://tobix.github.io/jenkins-neo2-theme/dist/neo-light.css`

3. Go to Stylish options and click in `Write new style`

4. Paste the theme css in the code box

5. Click in `Specify` and set your jenkins domain

6. Click in `Save`

7. Go to your Jenkins website and enable the theme in the Stylish Chrome toolbar icon


## Development

CSS file are minified and compressed with Grunt. To prepare the environment:

```
npm install
grunt
```

This will generate the following file:
- dist/neo-light.css
- dist/neo-dark.css

** Note: Theme neo-dark is WIP **

## Compatibility

- Simple Theme plugin 0.3
- Jenkins 2.7
- Firefox
- Chrome
- Microsoft IE11 and Edge

If you are experiencing issues please let me know! Also, feel free to contribute!

## License

MIT License

##Thanks to

- [Jenkins neo theme][neo] for the inspiration and original work
- [Jenkins material theme][material] for the inspiration and original work
- [Simple Theme Plugin][simple] for the Simple Theme plugin
- [Google][google] for the the material design inspiration and the icons
- [Material Design Icons][material-design-icons] for some extra icons
- [Stylish][stylish] for making the test of new versions easy
- [canon-jenkins][canon-jenkins] for the base theme
- [@Heldroe][heldroe] for Firefox and Microsoft support

[neo]: https://github.com/jenkins-contrib-themes/jenkins-neo-theme
[material]: https://github.com/afonsof/jenkins-material-theme
[simple]: https://wiki.jenkins-ci.org/display/JENKINS/Simple+Theme+Plugin
[google]: https://www.google.com/design/spec/material-design/introduction.html
[material-design-icons]: https://materialdesignicons.com/
[stylish]: https://chrome.google.com/webstore/detail/stylish/fjnbnpbmkenffdnngjfgmeleoegfcffe
[canon-jenkins]: https://github.com/rackerlabs/canon-jenkins
[heldroe]: https://github.com/Heldroe
