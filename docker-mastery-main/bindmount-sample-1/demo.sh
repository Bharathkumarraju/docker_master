bharathkumarraju@R77-NB193 bindmount-sample-1 % docker run -p 80:4000 -v $(pwd):/site bretfisher/jekyll-serve
Unable to find image 'bretfisher/jekyll-serve:latest' locally
latest: Pulling from bretfisher/jekyll-serve
df20fa9351a1: Already exists
b79bab524d4c: Pull complete
8f5dd72031b5: Pull complete
87774b8e0425: Pull complete
445c0e8670ac: Pull complete
cf940378a78b: Pull complete
083e5a96fb9b: Pull complete
18f0e9b7da82: Pull complete
172d0a51f312: Pull complete
Digest: sha256:701b6c4778cf85987b3693f7c6b4bf9b950f9973e6890a3e5ae6f5a7fde07f3a
Status: Downloaded newer image for bretfisher/jekyll-serve:latest
The dependency tzinfo (~> 1.2) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby but the dependency is only for x86-mingw32, x64-mingw32, x86-mswin32, java. To add those platforms to the

HEADS UP! i18n 1.1 changed fallbacks to exclude default locale.
But that may break your application.

If you are upgrading your Rails application from an older version of Rails:

Please check your Rails app for 'config.i18n.fallbacks = true'.
If you're using I18n (>= 1.1.0) and Rails (< 5.2.2), this should be
'config.i18n.fallbacks = [I18n.default_locale]'.
If not, fallbacks will be broken in your app by I18n 1.1.x.

If you are starting a NEW Rails application, you can ignore this notice.

For more info see:
https://github.com/svenfuchs/i18n/releases/tag/v1.1.0

Configuration file: /site/_config.yml
            Source: /site
       Destination: /site/_site
 Incremental build: disabled. Enable with --incremental
      Generating...
       Jekyll Feed: Generating feed for posts
                    done in 0.744 seconds.
 Auto-regeneration: enabled for '/site'
    Server address: http://0.0.0.0:4000/
  Server running... press ctrl-c to stop.
      Regenerating: 1 file(s) changed at 2020-11-01 23:40:28
                    demo.sh
       Jekyll Feed: Generating feed for posts
                    ...done in 1.1319601 seconds.

bharathkumarraju@R77-NB193 bindmount-sample-1 %

