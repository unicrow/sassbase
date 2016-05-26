module.exports = (grunt)->

  # Project configuration.
  grunt.initConfig {
    # Using the BrowserSync Server for your static .html files.
    copy:
      main:
        files: [
          # makes all src relative to cwd
          { src: 'css/*.*', dest: 'dist/', expand: true, cwd: 'src/' }
          { src: 'js/**/*.*', dest: 'dist/', expand: true, cwd: 'src/' }
        ]
    browserSync:
      default_options:
        bsFiles:
          src: [
            "dist/css/*.css"
            "dist/**/*.html"
          ]
        options:
          watchTask: true,
          server: # Disable when you are using own webserver
            baseDir: "dist/"
          # proxy: "yourvhost.dev" Enable when you are using own webserver
    includereplace:
      dist:
        options:
          includesDir: 'src/inc/',
        files: [
          { src: ['**/*.html', '!inc/*.html'], dest: 'dist/', expand: true, cwd: 'src/' }
        ]
    sass:
      dist:
        files:
          # destination         // source file
          "dist/css/main.css" : "src/sass/main.scss"
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
      html:
        files: "src/*.html"
        tasks: ['includereplace']
  }

  # These plugins provide necessary tasks.
  grunt.loadNpmTasks 'grunt-browser-sync'
  grunt.loadNpmTasks 'grunt-include-replace'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  # Default task.
  grunt.registerTask('default', ['browserSync', 'includereplace', 'copy', 'watch'])
  grunt.registerTask('copyfiles', ['copy'])
