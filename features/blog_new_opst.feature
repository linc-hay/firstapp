# language: ja
フィーチャ: 会員として新しい記事を投稿できる、なぜなら会員は自分の言葉で発信したいからだ

  背景:                   # /var/www/application/current/features/blog_new_post.feature:3
    前提 "会員" としてログインしている

  シナリオ: 新しい記事を投稿できる     # /var/www/application/current/features/blog_new_post.feature:5
    もし 以下の内容で記事を投稿する
      | タイトル | はじめてのブログ |
      | 本文   | はじめまして   |
    ならば 新しい記事が登録されていること

  シナリオ: タイトルなしでは新しい記事は投稿できない # /var/www/application/current/features/blog_new_post.feature:10
    もし 以下の内容で記事を投稿する
      | タイトル |        |
      | 本文   | はじめまして |
    ならば 新しい記事が登録できないこと

