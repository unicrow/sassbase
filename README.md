# Sass Base of Unicrow Project

## Dahili Teknolojiler
* Bourbon — http://bourbon.io
* Neat — http://neat.bourbon.io
* Bower — https://bower.io
* Node — https://nodejs.org/en/ // Brew ile Kurun 2.2
* Grunt — http://gruntjs.com


## 1. Sistem Kurulumları (Mac için)

Aşağıdaki paketler siz de varsa kurmanıza gerek yok. Deneme için **Terminal**'e örneğin **"node"** yazabilirsiniz.

### 1.1 Brew Kurulumu
**Homebrew Hakkında :** http://brew.sh/index_tr.html
* `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### 1.2 Node Kurulumu
Brew ile kurulum için önce **1.1** adımını gerçekleştirin.
* `brew install node`

### 1.3 Grunt Kurulumu
Brew ile kurulum için önce **1.1** adımını gerçekleştirin.
* `sudo npm install -g grunt-cli`

### 1.4 Bower Kurulumu
Brew ile kurulum için önce **1.2** adımını gerçekleştirin.
* `npm install -g bower`


## 2. Çalışma Dizin Ayaları

0. Repoyu proje adı ile indirin
  0. `git clone git@github.com:unicrow/sassbase.git proje_adi` (3.1)
  0. `git clone --branch=bower git@github.com:unicrow/sassbase.git proje_adi` (3.2)
  0. `git clone --branch=include git@github.com:unicrow/sassbase.git proje_adi` (Önerilir) (3.3)
0. `cd proje_adi` ile proje dizinine girin.
0. `git remote set-url origin git@`**yeni.projenizin.url** kısmını düzenleyin
0. `npm install` ile gerekli node paketlerin kurulumunu başlatın. (Node kurulu değilse 1.2 Kurulumuna Bakın)
0. `grunt` sistemi çalıştırın.
0. `http://localhost:3000` üzerinde kontrol edebilirsiniz.


## 3. Proje Türleri

- 3.1 **master** Basit bir proje başlangıcı için bu branch'ı kullanın.
  - `git clone git@github.com:unicrow/sassbase.git proje_adi`
- 3.2 **bower** Projede *Bower* kullanılacaksa bu branch'ı kullanın.
  - `git clone --branch=bower git@github.com:unicrow/sassbase.git proje_adi`
- 3.3 **include** Projede *Bower* ve *Include* yapısı kullanılacaksa bu branch'ı kullanın. (Önerilir)
  - `git clone --branch=include git@github.com:unicrow/sassbase.git proje_adi`



