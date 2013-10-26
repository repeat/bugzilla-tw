# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# This Source Code Form is "Incompatible With Secondary Licenses", as
# defined by the Mozilla Public License, v. 2.0.

# This file contains a single hash named %strings, which is used by the
# installation code to display strings before Template-Toolkit can safely
# be loaded.
#
# Each string supports a very simple substitution system, where you can
# have variables named like ##this## and they'll be replaced by the string
# variable with that name.
#
# Please keep the strings in alphabetical order by their name.

%strings = (
    any => '任何',
    apachectl_failed => <<END,
警告：無法檢查 Apache 的設定。當你並非以 ##root## 執行
checksetup.pl 時，這有可能會發生。若要查看所遭遇到的問題，
執行： ##command##
END
    bad_executable => '並非有效的執行檔： ##bin##',
    blacklisted => '(被列入黑名單)',
    bz_schema_exists_before_220 => <<'END',
你正從 2.20 以前的版本升級，但是 bz_schema table 已經存在。
這代表你並沒有先 drop 已經存在的 Bugzilla 資料庫，就把 mysqldump
回存到 Bugzilla 資料庫。當你需要回存 Bugzilla 資料庫的備份時，
你必須先 drop 整個資料庫。

請 drop 你的 Bugzilla 資料庫，並從一個不包含 bz_schema table 的備份回存。
如果因為某些原因你無法這樣做，那麼你可以使用最後的手段：連到你的 MySQL
資料庫後， drop bz_schema table 。
END
    checking_for => '檢查',
    checking_dbd => '檢查可用的 perl DBD 模組...',
    checking_optional => '下列 perl 模組是選用的：',
    checking_modules => '檢查 perl 模組中...',
    chmod_failed => '##path##: 變更權限失敗： ##error##',
    chown_failed => '##path##: 變更擁有者失敗： ##error##',
    commands_dbd => <<EOT,
你必須執行以下指令之一（視你使用的資料庫而定）：
EOT
    commands_optional => '安裝選用模組的指令：',
    commands_required => <<EOT,
安裝必備模組的指令（你「必須」執行所有的指令後，重新執行
checksetup.pl ）：
EOT
    continue_without_answers => <<'END',
在互動模式（不會有一個 'answers' 檔案）重新執行 checksetup.pl
以繼續。
END
    cpan_bugzilla_home =>
        "警告：使用 Bugzilla 的目錄做為 CPAN home 資料夾。",
    db_enum_setup  => "設定標準的下拉式欄位選項：",
    db_schema_init => "初始化 bz_schema...",
    db_table_new   => "增加新的 table ##table##...",
    db_table_setup => "建立 table 中...",
    done => '完成。',
    enter_or_ctrl_c => "Press Enter to continue or Ctrl-C to exit...",
    error_localconfig_read => <<'END',
讀取 ##localconfig## 檔案時發生錯誤。錯誤的訊息是：

##error##

請在 localconfig 檔中修正此錯誤。
或者對 localconfig 檔更名，然後重新執行 checksetup.pl ，
讓它重新建立新的 localconfig 檔案：

  $ mv -f localconfig localconfig.old
  $ ./checksetup.pl
END
    extension_must_return_name => <<END,
##file## 回傳了 ##returned## ，但這不是個有效的附加元件名稱。
附加元件必須要回傳它們的名稱，而不是 <code>1</code> 或數字。
詳情請參閱 Bugzilla::Extension 。
END
    feature_auth_ldap => 'LDAP 認證',
    feature_auth_radius => 'RADIUS 認證',
    feature_graphical_reports => '圖表式報告',
    feature_html_desc => '在產品／群組描述中使用較多的 HTML',
    feature_inbound_email => 'Inbound Email',
    feature_jobqueue => '信件佇列',
    feature_jsonrpc => 'JSON-RPC 介面',
    feature_jsonrpc_faster => '讓 JSON-RPC 較快',
    feature_new_charts => '新圖表',
    feature_old_charts => '舊圖表',
    feature_mod_perl => 'mod_perl',
    feature_moving => '在不同機器間搬移 Bugs',
    feature_patch_viewer => 'Patch Viewer',
    feature_smtp_auth => 'SMTP 認證',
    feature_smtp_ssl => 'SMTP 的 SSL 支援',
    feature_updates => '自動更新通知',
    feature_xmlrpc => 'XML-RPC 介面',
    feature_detect_charset    => '自動偵測文字附件的字元編碼',
    feature_typesniffer       => '對附件的 MIME 類別做探測(sniff)',

    file_remove => '移除 ##name## 中...',
    file_rename => '將 ##from## 更名為 ##to## 中...',
    header => "* 這是在 ##os_name## ##os_ver## ，\n"
            . "* Perl ##perl_ver## 上執行的 Bugzilla ##bz_ver## 。",
    install_all => <<EOT,

如要試著使用單一指令自動安裝所有必備及選用的模組，執行：

  ##perl## install-module.pl --all

EOT
    install_data_too_long => <<EOT,
警告：在 ##table##.##column## 欄位中的某些資料比新的長度限制 ##max_length## 字元還要長。
需要修正的資料，以欄位名稱 ##id_column## 以及需要修正的欄位值 ##column## 的格式，
列出如下：

EOT
    install_module => '安裝 ##module## 版本 ##version## 中...',
    installation_failed => '*** 安裝已中止。請閱讀上述訊息。 ***',
    install_no_compiler => <<END,
錯誤：
錯誤：使用 install-module.pl 必須先安裝一種編譯器，例如
gcc 。
END
    install_no_make => <<END,
錯誤：使用 install-module.pl 必須先安裝 "make" 。
END
    lc_new_vars => <<'END',
此版本的 Buzilla 包含一些你也許想要改變及套用到本地設定的參數。
自從你上次執行 checksetup.pl 以後，以下參數對 ##localconfig##
而言是新的：

##new_vars##

請編輯 ##localconfig## 並重新執行 checksetup.pl 以完成安裝。
END
    lc_old_vars => <<'END',
##localconfig## 中的以下參數已不再使用，並已被搬到
##old_file## 中： ##vars##
END
    localconfig_create_htaccess => <<'END',
如果你使用 Apache 做為你的網頁伺服器， Bugzilla 可以替你建立
.htaccess 檔案，它可以讓此檔案 (localconfig) 和其他的機密檔案
無法透過網路讀取。

設定為 1 時， checksetup.pl 將會檢查是否有 .htaccess 檔案。
若無，則會建立 .htaccess 檔案。

設定為 0 時， checksetup.pl 將不會建立 .htaccess 檔案。
END
    localconfig_cvsbin => <<'END',
如果你想要使用 Patch Viewer 的 CVS 整合介面，請輸入可執行
"cvs" 的完整路徑。
END
    localconfig_db_check => <<'END',
checksetup.pl 是否應該嘗試檢查你的資料庫設定是否正確？
有些資料庫伺服器/Perl 模組/moonphase 的組合會讓此功能無法運作，
因此你可以嘗試設定此參數為 0 ，讓 checksetup.pl 可以執行。
END
    localconfig_db_driver => <<'END',
使用哪一種 SQL 資料庫。預設值是 mysql 。
支援的資料庫列表可以藉由列出 Bugzilla/DB 目錄維護 －－
每個模組都對應到一種支援的資料庫，而模組的檔名（在 ".pm" 之前）
都對應到此參數的一個有效的值。
END
    localconfig_db_host => <<'END',
此資料庫伺服器所在的 DNS hostname 或 IP 位址。
END
    localconfig_db_name => <<'END',
資料庫的名稱。對 Oracle 而言，是資料庫的 SID 。對 SQLite 而言，
是 DB 檔案的名稱（或路徑）。
END
    localconfig_db_pass => <<'END',
在此輸入資料庫的密碼。通常建議對你的 bugailla 資料庫使用者指定密碼。
如果你輸入了含有縮寫符號 (') 或反斜線 (\) 的密碼，你需要使用 '\'
字元做 escape 。 (\') 或 (\)
（不用這些字元的話簡單地多。）
END
    localconfig_db_port => <<'END',
有時資料庫伺服器會使用非標準的 port 。如果有這種情況的話，在此參數指定該
port 的數字。設定為 0 代表「使用預設的 port 」。
END
    localconfig_db_sock => <<'END',
MySQL 才需要輸入的：輸入 unix socket for MySQL 的路徑。
如不輸入，那麼會使用 MySQL 的預設值。大概會是你要的。
END
    localconfig_db_user => "用來連接資料庫的使用者",
    localconfig_diffpath => <<'END',
如果要讓「兩個 patch 之間的 diff 」功能有效，需要知道 "diff" bin
在哪個目錄。（只有在使用 Patch Viewer 功能時才需要設定。）
END
    localconfig_index_html => <<'END',
大部份的網頁伺服器允許你使用 index.cgi 做為目錄索引，並且也已經
事先設定好了。如果你的沒有，那麼你會需要一個 index.html 檔案，
以避免重導到 index.cgi 。設定 $index_html 為 1 時，
checksetup.pl 會在 index.html 不存在時，替你建立一個。
注意： checksetup.pl 不會取代已存在的檔案，所以如果你希望
       checksetup.pl 替你建立 index.html 時，你必須先確認
       index.html 檔案不存在。
END
    localconfig_interdiffbin => <<'END',
如果你想要使用 Patch Viewer 的「兩個 patch 之間的 diff 」功能，
請指定 "interdiff" 可執行的完整路徑。
END
    localconfig_site_wide_secret => <<'END',
此密鑰用來建立及驗證加密的 token 。這些 token 用在 Bugzilla 的
一些安全性相關的功能中，以保護 Bugzilla 避免特定的攻擊。
預設是一組亂數字串。把這組密鑰保管好是很重要的。
此字串也必須要很長。
END
    localconfig_use_suexec => <<'END',
如果 Bugzilla 在 Apache SuexecUserGroup 環境下執行，請設定為 1 。

如果你的網頁伺服器有使用 cPanel 、 Plesk 或者類似的控制軟體，
或是你的 Bugzilla 是在 shared hosting 的環境下，那你大概就是在
Apache SuexecUserGroup 環境下。

如果是 Windows box ，忽略此設定，因為它無效。

如果設定為 0 ， checksetup.pl 會設定正常網頁伺服器環境下，
適當的檔案權限。

如果設定為 1 ， checksetup.p 會設定適合的檔案權限，讓 Bugzilla 在
SuexecUserGroup 環境下可以正常運作。
END
    localconfig_webservergroup => <<'END',
執行網頁伺服器的群組名稱。在 Red Hat 下通常是 "apache" 。在
Debian/Ubuntu 下通常是 "www-data" 。

如果你把下面的 use_suexec 參數打開的話，那麼是轉換過後的網頁伺服器的
的群組名稱，以執行 cgi 檔案。

如果是 Windows 上，忽略此設定，因為它無效。

如果你沒有權限可以存取 script 執行的目錄，設定為 "" 。
如果設定為 "" ，那麼你所安裝的 Bugzilla 將會“非常”不安全，
因為有些檔案將可以隨意讀取／寫入，所以只要有權限進入機器的人
就可以隨便做什麼。你只應該在測試安裝，而且無法設定為其他值時，
才設定成 "" 。※※！！已經警告過你了！！※※

如果設定為 "" 以外的值，你必須要以該指定群組中的成員，或是
##root## ，才能執行 checksetup.pl 。
END
    max_allowed_packet => <<EOT,
警告：你必須在你的 MySQL 設定裡將 max_allowed_packet 參數設定為
##needed## 。現在它設定為 ##current## 。
你可以在 MySQL 設定檔中的 [mysqld] 段落中找到此參數。
EOT
    min_version_required => "最低版本需求： ",

# Note: When translating these "modules" messages, don't change the formatting
# if possible, because there is hardcoded formatting in
# Bugzilla::Install::Requirements to match the box formatting.
    modules_message_apache => <<END,
***********************************************************************
* APACHE 模組                                                         *
***********************************************************************
* 一般來說，當 Bugzilla 升級時，所有 Bugzilla 使用者必須清除他們瀏    *
* 覽器中的庫存，否則 Bugzilla 會故障。如果你在 Apache 設定中啟用特    *
* 定的模組（通常叫 httpd.conf 或 apache2.conf ）的話，當你升級        *
* Bugzilla 的時候， Bugzilla 的使用者就不需要清除瀏覽器中的庫存。     *
* 你需要要啟用的模組有：                                              *
*                                                                     *
END
    modules_message_db => <<EOT,
***********************************************************************
* 存取資料庫                                                          *
***********************************************************************
* 為了要存取資料庫， Bugzilla 需要在你所執行的資料庫中安裝正確的      *
* "DBD" 模組。請在以下指令中找出正確的指令，以在資料庫中安裝適當      *
* 的模組。                                                            *
EOT
    modules_message_optional => <<EOT,
***********************************************************************
* 選用的模組                                                          *
***********************************************************************
* 有些 Perl 模組並非安裝 Bugzilla 所必備，然而安裝最新版本的某些      *
* 模組可以讓你擁有額外的功能。                                        *
*                                                                     *
* 你不一定要安裝的選用模組，以及它們所啟用的功能名稱列表如下。        *
* 在列表的下方則是安裝每一模組所使用的指令。                          *
EOT
    modules_message_required => <<EOT,
***********************************************************************
* 必備的模組                                                          *
***********************************************************************
* Bugzilla 要求你安裝某些 Perl 模組。原因可能是你並未安裝這些模組，   *
* 或是版本過舊，需要更新。下方是安裝這些模組所需要用的指令。          *
EOT

    module_found => "找到版本 v##ver##",
    module_not_found => "沒有找到",
    module_ok => 'OK',
    module_unknown_version => "找到未知的版本",
    mysql_innodb_disabled => <<'END',
你所安裝的 MySQL 已停用 InnoDB 。
Bugzilla 需要 InnoDB 啟用才能使用。
請啟用後重新執行 checksetup.pl 。
END
    mysql_index_renaming => <<'END',
即將對舊的索引進行更名。更名完成所需要的時間估計是
##minutes## 分鐘。一旦開始就不能中斷。如果你想要取
消，請現在按 Ctrl-C ...
（等 45 秒 ...）
END
    mysql_utf8_conversion => <<'END',
警告：我們將把你所儲存的資料格式轉成 UTF-8 。這將會允許 Bugzilla 正確地
      儲存及排序國際字元。然而，如果你的資料庫中有任何非 UTF-8 的資料，
      這些資料※※將會被刪除※※。所以，在你繼續執行 checksetup.pl 前，
      如果你有任何非 UTF-8 的資料（或是你不確定），你應該馬上按 Ctrl-C
      中斷 checksetup.pl ，並執行 contrib/recode.pl 讓所有在資料庫中的
      資料轉成 UTF-8 。你在繼續之前也應該先備份。將會影響資料庫中的所有
      table ，即使它們和 Bugzilla 無關。

      如果你曾經使用過比 Bugzilla 2.22 版本舊的 Bugzilla ，我們※強烈※
      建議你※現在※停止 checksetup.pl 並執行 contrib/recode.pl 。
END
    no_checksetup_from_cgi => <<END,
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
          "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <title>無法從網頁伺服器執行 checksetup.pl</title>
  </head>

  <body>
    <h1>無法從網頁伺服器執行 checksetup.pl</h1>
    <p>
      你<b>不能</b>從瀏覽器執行此程式。要安裝或升級
      Bugzilla ，從命令列（例如 Linux 上的
      <tt>bash</tt> 、 <tt>ssh</tt> 或 Windows 上的
      <tt>cmd.exe</tt> 執行此程式），並依照所給予的指示進行。
    </p>

    <p>
      如要獲得更多關於如何安裝 Bugzilla 的資訊，請至官方
      Bugzilla 網站
      <a href="http://www.bugzilla.org/docs/">閱讀文件</a>。
    </p>
  </body>
</html>
END
    patchutils_missing => <<'END',
額外選項備註：如果你想要使用 Bugzilla 的「兩個 patch 之間的 diff 」功能
（它需要 PatchReader 這個 Perl 模組），你應該從以下網址安裝 patchutils
：

    http://cyberelk.net/tim/patchutils/
END
    no_such_module => "在 CPAN 上找不到叫 ##module## 的 Perl 模組。",
    template_precompile   => "預先編譯模版中...",
    template_removal_failed => <<END,
警告：無法移除目錄 '##template_cache##' 。
      已將它更名為 '##deleteme##' 。如要釋放磁碟空間，
      請手動刪除。
END
    template_removing_dir => "刪除存在的已編譯模版中...",
    update_cf_invalid_name =>
        "移除自訂欄位 '##field##' 中，因為它有無效的名稱...",
    update_flags_bad_name => <<'END',
"##flag##" 不是有效的旗標名稱。請把它更名為不含空白或逗號 (,)
的名稱。
END
    update_nomail_bad => <<'END',
警告：以下使用者列在 ##data##/nomail 中，但是這裡沒有帳號。
不符的部份已移至 ##data##/nomail.bad 中：
END
    update_summary_truncate_comment =>
        "摘要欄位中的原始值長於 255 字元，因此在升級中被截斷了。"
        . "原本的摘要是：\n\n##summary##",
    update_summary_truncated => <<'END',
警告：你有一些 bugs 的摘要長於 255 字元。已將這些 bugs 的摘要截斷至
255 字元，而原本過長的摘要已複製一份至意見中。受到影響的 bug 編號是：
END
    update_quips => <<'END',
智語現在儲存在資料庫中，而不是存在外部檔案。原先儲存在
##data##/comments 的智語已被複製到資料庫中，並將該檔案更名為
##data##/comments.bak 。你只要確認智語有搬移成功，即可將該檔
案刪除。
END
    update_queries_to_tags => "填入新的 'tag' table 中：",
    webdot_bad_htaccess => <<END,
警告：依賴關係圖表的圖無法存取。
刪除 ##dir##/.htaccess 後重新執行 checksetup.pl 。
END
);

1;
