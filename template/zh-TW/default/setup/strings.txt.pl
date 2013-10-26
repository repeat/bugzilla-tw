# The contents of this file are subject to the Mozilla Public
# License Version 1.1 (the "License"); you may not use this file
# except in compliance with the License. You may obtain a copy of
# the License at http://www.mozilla.org/MPL/
#
# Software distributed under the License is distributed on an "AS
# IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
# implied. See the License for the specific language governing
# rights and limitations under the License.
#
# The Initial Developer of the Original Code is Everything Solved.
# Portions created by Everything Solved are Copyright (C) 2007
# Everything Solved. All Rights Reserved.
#
# The Original Code is the Bugzilla Bug Tracking System.
#
# Contributor(s): Max Kanat-Alexander <mkanat@bugzilla.org>

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
    blacklisted => '(被列入黑名單)',
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
此程式）：
EOT
    done => '完成。',
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
    feature_rand_security => '改善 cookie 和 token 的安全性',
    feature_smtp_auth => 'SMTP 認證',
    feature_updates => '自動更新通知',
    feature_xmlrpc => 'XML-RPC 介面',

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
    no_such_module => "在 CPAN 上找不到叫 ##module## 的 Perl 模組。",
    template_precompile   => "預先編譯模版中...",
    template_removal_failed => <<END,
警告：無法移除目錄 '##datadir##/template' 。
      已將它更名為 '##datadir##/deleteme' 。如要釋放磁碟空間，
      請手動刪除。
END
    template_removing_dir => "刪除存在的已編譯模版中...",
);

1;
