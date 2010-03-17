Bugzilla 3.4.5 繁體中文化語系檔

常見問題

Q. 是否會釋出 doc/ 的中文化語系檔？
A. 目前無此打算。

Q. Release Note 沒有中文化？
A. 參考 Mozilla Firefox 3.5 的 Release Note 的做法，改為維持原(英)文。

Q. 明明是中文化，我還是看到一堆英文？
A. 有很多的語彙保留原文會比中文化來得容易瞭解，因此大部份的 admin 權限檔案都是以中英混雜的方式譯出。
   使用者介面已儘量中文化。

Q. 我在偏好設定中的「在電子郵件中用的語言」選了 zh-TW ，但是還是有一堆英文？
A. 這是一個已知的 bug 。請參考 https://bugzilla.mozilla.org/show_bug.cgi?id=215210 ，
   這個 bug 已在 2003-08-05 回報給 Bugzilla ，不過仍未解決，且預計要到 4.0 才會改善這個問題。 Orz

Q. 我裝完語系檔，還是看到一堆英文？
A. Bugzilla 使用的技術是偵測你的瀏覽器設定。
   以 Firefox 來說，在 Firefox 選擇 工具 > 選項 > 進階 > 一般 > 語言 ，
   按「選擇 (O)...」，把「中文/台灣 [zh-tw] 」往上移到「英文/美國 [en-us] 」或「英文 [en] 」的上方即可。

Q. 那我該如何設定，讓我的使用者知道要做上述調整？
A. 可以在 Bugzilla 的管理者介面 > 參數設定 > 核心參數 > announcehtml 中直接宣告上述設定方式。

Q. 如何連絡中文化語系檔的作者？
A. 請利用 Google Code 裡的 New Issue 功能 ( http://code.google.com/p/bugzilla-tw/issues/list ) 即可。



Bugzilla 3.4.5 Chinese, traditional (zh-TW) language pack files

FAQ for non-Chinese speakers

Q. What is the difference between the bugzilla-tw project in SourceForge.net and in Google Code?
A. The SourceForge.net one seems not maintained by anyone anymore.

Q. Will there be language pack for doc/?
A. No plans for that.

Q. How to contact the localizer?
A. Please use "New Issue" in Google Code [http://code.google.com/p/bugzilla-tw/issues/list] and create one.
