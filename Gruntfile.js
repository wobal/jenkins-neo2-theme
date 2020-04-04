module.exports = function (grunt) {
    require('load-grunt-tasks')(grunt);

    var pkg = grunt.file.readJSON('package.json');

    var lessFiles = {
        "dist/neo-light.css": "less/style.less",
    };

    grunt.initConfig({
        clean: {
            dist: {
                src: ["dist/*"]
            }
        },

        less: {
            dist: {
                files: lessFiles,
                options: {
                    ieCompat: false,
                    sourceMap: true,
                    sourceMapBasepath: 'dist/',
                    modifyVars: {
                        version: '"' + pkg.version + '"'
                    },
                },
            },
        },

        postcss: {
            options: {
                map: true,
                processors: [
                    require('autoprefixer')(),
                    require('cssnano')({
                        preset: ['default', {
                            svgo: {
                                plugins: [{
                                    removeRasterImages: true,
                                    sortAttrs: true,
                                    removeStyleElement: true,
                                }],
                            },
                        }],
                    }),
                ],
            },
            dist: {
                src: 'dist/neo-*.css'
            }
        }
    });

    // Default task
    grunt.registerTask('default', ['clean', 'less', 'postcss']);
};

// vim: set ts=4 sw=4 et:
