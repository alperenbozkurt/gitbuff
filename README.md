
# Git Buff

Gitbuff, Github Api kullanarak Github kullanıcılarının bazı istatislikleri göstermek amaçlı yazılmış bir uygulamadır. Uygulama her bir kullanıcının kaç satır kod yazdığını, toplam kaç yıldız aldığını, favori dilini ve gitbuffdan kaç kez profiline bakıldığını gösterir.

## Kurulum
 - Öncelikle bu depoyu klonlamalısınız.
`git clone git@github.com:alperenbozkurt/gitbuff.git`
- Bağımlılıkları yüklemelisiniz.
`bundle install`
- Veritabanını kurmalısınız.
`rake db:setup`
- `rails server` dediğiniz zaman kurulum tamamlanmış olur.

## Ön izleme
Projeyi [http://gitbuff.tk](http://gitbuff.tk) adresinden ön izleyebilirsiniz.

## Kullanılan Kütüphaneler
[Faraday gem](https://github.com/lostisland/faraday),
[semantic-ui-sass](https://github.com/doabit/semantic-ui-sass),
[Haml](https://github.com/haml/haml) ve [Sass](https://github.com/sass/sass),
[Jquery](https://github.com/jquery/jquery) ve [Rails-jquery gem](https://github.com/rails/jquery-rails),
Sayfalama için [Will_paginate gem](https://github.com/mislav/will_paginate),
[Ruby](https://github.com/ruby/ruby) ve [Rails](https://github.com/rails/rails),

## Lisans
Bu uygulama MIT Lisansı ile lisanslanmıştır.
