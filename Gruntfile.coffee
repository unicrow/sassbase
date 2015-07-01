module.exports = (grunt)->

  # Project configuration.
  grunt.initConfig {
    # Using the BrowserSync Server for your static .html files.
    browserSync:
      default_options:
        bsFiles:
          src: [
            "css/*.css"
            "*.html"
          ]
        options:
          watchTask: true,
          server: # Disable when you are using own webserver
            baseDir: "./"
          # proxy: "yourvhost.dev" Enable when you are using own webserver
    sass:
      dist:
        files:
          # destination         // source file
          "css/main.css" : "sass/main.scss"
        options:
          style: 'compressed'
          # loadPath: require('node-bourbon').with('other/path', 'another/path')
          # - or -
          loadPath: require('node-bourbon').includePaths # Bourbon Neat kullanılacaksa bu satır yorumlanıp alt kısmındaki satırı yorumsuz hale getirin
          # loadPath: require('node-neat').includePaths
    watch:
      sass:
        files: "sass/*.scss"
        tasks: ['sass']
      js:
          files: ['js/main.js']
  }

  # These plugins provide necessary tasks.
  grunt.loadNpmTasks 'grunt-browser-sync'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  # Default task.
  grunt.registerTask('default', ['browserSync', 'watch'])
