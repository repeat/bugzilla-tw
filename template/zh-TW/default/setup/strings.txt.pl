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
    any  => '任何',
    blacklisted => '(被列入黑名單)',
    checking_for => '檢查',
    checking_dbd      => '檢查可用的 perl DBD 模組...',
    checking_optional => '下列 perl 模組是選用的：',
    checking_modules  => '檢查 perl 模組中...',
    done => '完成。',
    header => "* 這是在 ##os_name## ##os_ver##，perl ##perl_ver##上執行的 Bugzilla ##bz_ver##。",
    install_all => <<EOT,

如要試著使用單一指令自動安裝所有必需要及選用的模組，執行：

  ##perl## install-module.pl --all

EOT
    install_data_too_long => <<EOT,
警告：在 ##table##.##column## 欄位中的某些資料比新的長度限制 ##max_length## 字元還要長。
需要修正的資料，以欄位名稱 ##id_column## 以及需要修正的欄位值 ##column## 的格式，
列出如下：

EOT
    install_module => '安裝 ##module## 版本 ##version## 中...',
    max_allowed_packet => <<EOT,
警告：你必須在你的 MySQL 設定裡將 max_allowed_packet 參數設定為
##needed## 。現在它設定為 ##current## 。
你可以在 MySQL 設定檔中的 [mysqld] 段落中找到此參數。
EOT
    module_found => "找到版本 v##ver##",
    module_not_found => "沒有找到",
    module_ok => 'OK',
    module_unknown_version => "找到未知的版本",
    template_precompile   => "預先編譯模版中...",
    template_removing_dir => "刪除存在的已編譯模版中...",
);

1;
