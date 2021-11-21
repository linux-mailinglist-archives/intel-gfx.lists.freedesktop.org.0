Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED18458413
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Nov 2021 15:24:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 261E26E049;
	Sun, 21 Nov 2021 14:24:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E7B7E6E049;
 Sun, 21 Nov 2021 14:24:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0596A0169;
 Sun, 21 Nov 2021 14:24:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2260805846516790103=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Sun, 21 Nov 2021 14:24:28 -0000
Message-ID: <163750466888.15792.17149309173512912822@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211121133416.36012-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211121133416.36012-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_preparation_for_multi_gt_patches_=28rev2=29?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2260805846516790103==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More preparation for multi gt patches (rev2)
URL   : https://patchwork.freedesktop.org/series/97020/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10908 -> Patchwork_21647
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21647 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21647, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/index.html

Participating hosts (41 -> 32)
------------------------------

  Additional (2): fi-kbl-soraka fi-tgl-1115g4 
  Missing    (11): bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-skl-guc fi-bsw-cyan bat-adlp-6 fi-ctg-p8600 fi-kbl-x1275 bat-jsl-2 fi-bsw-nick bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21647:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-bwr-2160:        [PASS][1] -> [TIMEOUT][2] +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bwr-2160/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bwr-2160/igt@core_auth@basic-auth.html
    - fi-bdw-5557u:       [PASS][3] -> [TIMEOUT][4] +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bdw-5557u/igt@core_auth@basic-auth.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bdw-5557u/igt@core_auth@basic-auth.html
    - fi-kbl-guc:         [PASS][5] -> [TIMEOUT][6] +10 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-guc/igt@core_auth@basic-auth.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-guc/igt@core_auth@basic-auth.html
    - fi-bdw-gvtdvm:      [PASS][7] -> [TIMEOUT][8] +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bdw-gvtdvm/igt@core_auth@basic-auth.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bdw-gvtdvm/igt@core_auth@basic-auth.html
    - fi-kbl-7500u:       [PASS][9] -> [TIMEOUT][10] +10 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-7500u/igt@core_auth@basic-auth.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-7500u/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - fi-elk-e7500:       [PASS][11] -> [TIMEOUT][12] +10 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-elk-e7500/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@info:
    - fi-snb-2600:        [PASS][13] -> [TIMEOUT][14] +10 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-snb-2600/igt@fbdev@info.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-snb-2600/igt@fbdev@info.html

  * igt@fbdev@nullptr:
    - fi-snb-2520m:       [PASS][15] -> [TIMEOUT][16] +10 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-snb-2520m/igt@fbdev@nullptr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-snb-2520m/igt@fbdev@nullptr.html

  * igt@gem_basic@bad-close:
    - fi-cfl-8700k:       [PASS][17] -> [TIMEOUT][18] +10 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-cfl-8700k/igt@gem_basic@bad-close.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-cfl-8700k/igt@gem_basic@bad-close.html
    - fi-cfl-8109u:       [PASS][19] -> [TIMEOUT][20] +10 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-cfl-8109u/igt@gem_basic@bad-close.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-cfl-8109u/igt@gem_basic@bad-close.html
    - fi-kbl-soraka:      NOTRUN -> [TIMEOUT][21] +9 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-soraka/igt@gem_basic@bad-close.html

  * igt@gem_basic@create-close:
    - fi-skl-6700k2:      [PASS][22] -> [TIMEOUT][23] +10 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-skl-6700k2/igt@gem_basic@create-close.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-skl-6700k2/igt@gem_basic@create-close.html
    - fi-tgl-1115g4:      NOTRUN -> [TIMEOUT][24] +10 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-tgl-1115g4/igt@gem_basic@create-close.html

  * igt@gem_basic@create-fd-close:
    - fi-hsw-4770:        [PASS][25] -> [TIMEOUT][26] +10 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-hsw-4770/igt@gem_basic@create-fd-close.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-hsw-4770/igt@gem_basic@create-fd-close.html
    - fi-cfl-guc:         [PASS][27] -> [TIMEOUT][28] +10 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-cfl-guc/igt@gem_basic@create-fd-close.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-cfl-guc/igt@gem_basic@create-fd-close.html
    - fi-blb-e6850:       [PASS][29] -> [TIMEOUT][30] +10 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-blb-e6850/igt@gem_basic@create-fd-close.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-blb-e6850/igt@gem_basic@create-fd-close.html
    - fi-kbl-7567u:       [PASS][31] -> [TIMEOUT][32] +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-7567u/igt@gem_basic@create-fd-close.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-7567u/igt@gem_basic@create-fd-close.html
    - fi-apl-guc:         [PASS][33] -> [TIMEOUT][34] +9 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-apl-guc/igt@gem_basic@create-fd-close.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-apl-guc/igt@gem_basic@create-fd-close.html

  * igt@gem_busy@busy@all:
    - fi-ilk-650:         [PASS][35] -> [TIMEOUT][36] +10 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-ilk-650/igt@gem_busy@busy@all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-ilk-650/igt@gem_busy@busy@all.html
    - fi-bsw-kefka:       [PASS][37] -> [TIMEOUT][38] +9 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bsw-kefka/igt@gem_busy@busy@all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bsw-kefka/igt@gem_busy@busy@all.html

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][39] -> [TIMEOUT][40] +10 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-tgl-u2:          [PASS][41] -> [TIMEOUT][42] +10 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-tgl-u2/igt@gem_close_race@basic-process.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-tgl-u2/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-skl-6600u:       [PASS][43] -> [TIMEOUT][44] +10 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-skl-6600u/igt@gem_close_race@basic-threads.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-skl-6600u/igt@gem_close_race@basic-threads.html
    - fi-rkl-11600:       [PASS][45] -> [TIMEOUT][46] +10 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-rkl-11600/igt@gem_close_race@basic-threads.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-rkl-11600/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic:
    - fi-bsw-n3050:       [PASS][47] -> [TIMEOUT][48] +9 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bsw-n3050/igt@gem_ctx_create@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bsw-n3050/igt@gem_ctx_create@basic.html

  * igt@gem_ctx_create@basic-files:
    - fi-bdw-samus:       [PASS][49] -> [TIMEOUT][50] +10 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bdw-samus/igt@gem_ctx_create@basic-files.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bdw-samus/igt@gem_ctx_create@basic-files.html
    - fi-kbl-8809g:       [PASS][51] -> [TIMEOUT][52] +9 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html
    - fi-cml-u2:          [PASS][53] -> [TIMEOUT][54] +10 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-cml-u2/igt@gem_ctx_create@basic-files.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-cml-u2/igt@gem_ctx_create@basic-files.html
    - fi-rkl-guc:         [PASS][55] -> [TIMEOUT][56] +10 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-rkl-guc/igt@gem_ctx_create@basic-files.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-rkl-guc/igt@gem_ctx_create@basic-files.html

  
#### Warnings ####

  * igt@fbdev@write:
    - fi-kbl-7567u:       [SKIP][57] ([fdo#109271]) -> [TIMEOUT][58] +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-7567u/igt@fbdev@write.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-7567u/igt@fbdev@write.html
    - fi-bdw-gvtdvm:      [SKIP][59] ([fdo#109271]) -> [TIMEOUT][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bdw-gvtdvm/igt@fbdev@write.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bdw-gvtdvm/igt@fbdev@write.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_basic@create-fd-close:
    - {fi-ehl-2}:         [PASS][61] -> [TIMEOUT][62] +10 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-ehl-2/igt@gem_basic@create-fd-close.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-ehl-2/igt@gem_basic@create-fd-close.html
    - {fi-tgl-dsi}:       [PASS][63] -> [TIMEOUT][64] +10 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-tgl-dsi/igt@gem_basic@create-fd-close.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-tgl-dsi/igt@gem_basic@create-fd-close.html

  * igt@gem_ctx_create@basic-files:
    - {fi-jsl-1}:         [PASS][65] -> [TIMEOUT][66] +9 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-jsl-1/igt@gem_ctx_create@basic-files.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-jsl-1/igt@gem_ctx_create@basic-files.html

  
Known issues
------------

  Here are the changes found in Patchwork_21647 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@fbdev@nullptr:
    - fi-kbl-guc:         [SKIP][67] ([fdo#109271]) -> [PASS][68] +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-guc/igt@fbdev@nullptr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-guc/igt@fbdev@nullptr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271


Build changes
-------------

  * Linux: CI_DRM_10908 -> Patchwork_21647

  CI-20190529: 20190529
  CI_DRM_10908: 2b9df9dd40af61e0178fef5b88b1e8baae4194c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6285: 2e0355faad5c2e81cd6705b76e529ce526c7c9bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21647: 597e516bdab87f37cd3cf118a5f27a5c52a9bea3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

597e516bdab8 drm/i915: Use to_root_gt() to refer to the root tile
7d5233acd3dc drm/i915: Store backpointer to GT in uncore

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/index.html

--===============2260805846516790103==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>More preparation for multi gt patches (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97020/">https://patchwork.freedesktop.org/series/97020/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10908 -&gt; Patchwork_21647</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21647 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21647, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/index.html</p>
<h2>Participating hosts (41 -&gt; 32)</h2>
<p>Additional (2): fi-kbl-soraka fi-tgl-1115g4 <br />
  Missing    (11): bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-skl-guc fi-bsw-cyan bat-adlp-6 fi-ctg-p8600 fi-kbl-x1275 bat-jsl-2 fi-bsw-nick bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21647:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bwr-2160/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bwr-2160/igt@core_auth@basic-auth.html">TIMEOUT</a> +9 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bdw-5557u/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bdw-5557u/igt@core_auth@basic-auth.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-guc/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-guc/igt@core_auth@basic-auth.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bdw-gvtdvm/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bdw-gvtdvm/igt@core_auth@basic-auth.html">TIMEOUT</a> +4 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-7500u/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-7500u/igt@core_auth@basic-auth.html">TIMEOUT</a> +10 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">TIMEOUT</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-snb-2600/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-snb-2600/igt@fbdev@info.html">TIMEOUT</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-snb-2520m/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-snb-2520m/igt@fbdev@nullptr.html">TIMEOUT</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_basic@bad-close:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-cfl-8700k/igt@gem_basic@bad-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-cfl-8700k/igt@gem_basic@bad-close.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-cfl-8109u/igt@gem_basic@bad-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-cfl-8109u/igt@gem_basic@bad-close.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-soraka/igt@gem_basic@bad-close.html">TIMEOUT</a> +9 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-skl-6700k2/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-skl-6700k2/igt@gem_basic@create-close.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-tgl-1115g4/igt@gem_basic@create-close.html">TIMEOUT</a> +10 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-fd-close:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-hsw-4770/igt@gem_basic@create-fd-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-hsw-4770/igt@gem_basic@create-fd-close.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-cfl-guc/igt@gem_basic@create-fd-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-cfl-guc/igt@gem_basic@create-fd-close.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-blb-e6850/igt@gem_basic@create-fd-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-blb-e6850/igt@gem_basic@create-fd-close.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-7567u/igt@gem_basic@create-fd-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-7567u/igt@gem_basic@create-fd-close.html">TIMEOUT</a> +5 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-apl-guc/igt@gem_basic@create-fd-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-apl-guc/igt@gem_basic@create-fd-close.html">TIMEOUT</a> +9 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-ilk-650/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-ilk-650/igt@gem_busy@busy@all.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bsw-kefka/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bsw-kefka/igt@gem_busy@busy@all.html">TIMEOUT</a> +9 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-ivb-3770/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-ivb-3770/igt@gem_close_race@basic-process.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-tgl-u2/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-tgl-u2/igt@gem_close_race@basic-process.html">TIMEOUT</a> +10 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-skl-6600u/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-skl-6600u/igt@gem_close_race@basic-threads.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-rkl-11600/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-rkl-11600/igt@gem_close_race@basic-threads.html">TIMEOUT</a> +10 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bsw-n3050/igt@gem_ctx_create@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bsw-n3050/igt@gem_ctx_create@basic.html">TIMEOUT</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>
<p>fi-bdw-samus:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bdw-samus/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bdw-samus/igt@gem_ctx_create@basic-files.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html">TIMEOUT</a> +9 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-cml-u2/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-cml-u2/igt@gem_ctx_create@basic-files.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-rkl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-rkl-guc/igt@gem_ctx_create@basic-files.html">TIMEOUT</a> +10 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-7567u/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-7567u/igt@fbdev@write.html">TIMEOUT</a> +4 similar issues</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-bdw-gvtdvm/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-bdw-gvtdvm/igt@fbdev@write.html">TIMEOUT</a> +4 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_basic@create-fd-close:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-ehl-2/igt@gem_basic@create-fd-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-ehl-2/igt@gem_basic@create-fd-close.html">TIMEOUT</a> +10 similar issues</p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-tgl-dsi/igt@gem_basic@create-fd-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-tgl-dsi/igt@gem_basic@create-fd-close.html">TIMEOUT</a> +10 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-jsl-1/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-jsl-1/igt@gem_ctx_create@basic-files.html">TIMEOUT</a> +9 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21647 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@fbdev@nullptr:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/fi-kbl-guc/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21647/fi-kbl-guc/igt@fbdev@nullptr.html">PASS</a> +4 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10908 -&gt; Patchwork_21647</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10908: 2b9df9dd40af61e0178fef5b88b1e8baae4194c6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6285: 2e0355faad5c2e81cd6705b76e529ce526c7c9bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21647: 597e516bdab87f37cd3cf118a5f27a5c52a9bea3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>597e516bdab8 drm/i915: Use to_root_gt() to refer to the root tile<br />
7d5233acd3dc drm/i915: Store backpointer to GT in uncore</p>

</body>
</html>

--===============2260805846516790103==--
