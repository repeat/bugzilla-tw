## Bugzilla 繁體中文化語系檔

### 下載
請至 github 的 [releases](https://github.com/repeat/bugzilla-tw/releases) 功能，選擇需要的版本及格式下載。

### 安裝

1. 以 .tar.gz 為例，解壓縮後會有一個 `bugzilla-tw-X.Y.Z/template/zh-TW` 的資料夾，請把 `zh-TW` 資料夾整個複製到所安裝的 Bugzilla 的 `template/` 資料夾底下即可。
2. `pax_global_header` 這個檔案是 github 自動產生的，並不會用到。

### 備註

1. Release Note 參考 Mozilla Firefox 3.5 的 Release Note 的做法，改為維持原文（英文）。
2. 有很多的語彙保留原文會比中文化來得容易瞭解，因此大部份的 admin 權限檔案都是以中英混雜的方式譯出。使用者介面已儘量中文化。
3. 安裝完語系檔後，若未正確顯示中文，請檢查瀏覽器語系設定。

---

## Bugzilla traditional Chinese (zh-TW) language pack files

### Download
Download is powered by github [releases](https://github.com/repeat/bugzilla-tw/releases) page. The version tag is same as which Bugzilla uses.

### Install

1. Take .tar.gz as an example. Untar it and there will be a folder named `bugzilla-tw-X.Y.Z/template/zh-TW/`. Simply copy this folder to where you install Bugzilla, under folder named `template`.
2. The `pax_global_header` file is generated automatically by github, but is not used.

### Maintainer
Repeat Yang

### License
Version 5.0.x is released under [Mozilla Public License 2.0](https://www.mozilla.org/MPL/2.0/).