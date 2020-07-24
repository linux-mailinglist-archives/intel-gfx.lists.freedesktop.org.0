Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F5C22CB9B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 19:02:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24CB6E142;
	Fri, 24 Jul 2020 17:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8A6E6E0C1;
 Fri, 24 Jul 2020 17:02:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C20C1A0BCB;
 Fri, 24 Jul 2020 17:02:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Jul 2020 17:02:53 -0000
Message-ID: <159561017376.15336.4223069802512906609@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200724163757.10737-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200724163757.10737-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Delay_taking_the_spinlock_for_grabbing_from_the_buf?=
 =?utf-8?q?fer_pool?=
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
Content-Type: multipart/mixed; boundary="===============0873693638=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0873693638==
Content-Type: multipart/alternative;
 boundary="===============3656729822156461338=="

--===============3656729822156461338==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Delay taking the spinlock for grabbing from the buffer pool
URL   : https://patchwork.freedesktop.org/series/79855/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8783 -> Patchwork_18240
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18240 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18240, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18240:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_create@basic-files:
    - fi-kbl-r:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-r/igt@gem_ctx_create@basic-files.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-r/igt@gem_ctx_create@basic-files.html
    - fi-kbl-8809g:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html
    - fi-cfl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-cfl-guc/igt@gem_ctx_create@basic-files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-cfl-guc/igt@gem_ctx_create@basic-files.html
    - fi-skl-guc:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-skl-guc/igt@gem_ctx_create@basic-files.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-skl-guc/igt@gem_ctx_create@basic-files.html
    - fi-cml-s:           [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-cml-s/igt@gem_ctx_create@basic-files.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-cml-s/igt@gem_ctx_create@basic-files.html
    - fi-skl-6700k2:      [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-skl-6700k2/igt@gem_ctx_create@basic-files.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-skl-6700k2/igt@gem_ctx_create@basic-files.html
    - fi-kbl-x1275:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-x1275/igt@gem_ctx_create@basic-files.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-x1275/igt@gem_ctx_create@basic-files.html
    - fi-kbl-7500u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-7500u/igt@gem_ctx_create@basic-files.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-7500u/igt@gem_ctx_create@basic-files.html
    - fi-kbl-soraka:      [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-soraka/igt@gem_ctx_create@basic-files.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-soraka/igt@gem_ctx_create@basic-files.html
    - fi-skl-lmem:        [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-skl-lmem/igt@gem_ctx_create@basic-files.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-skl-lmem/igt@gem_ctx_create@basic-files.html
    - fi-kbl-guc:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-guc/igt@gem_ctx_create@basic-files.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-guc/igt@gem_ctx_create@basic-files.html
    - fi-cfl-8109u:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-cfl-8109u/igt@gem_ctx_create@basic-files.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-cfl-8109u/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_create@basic:
    - fi-skl-6600u:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-skl-6600u/igt@gem_exec_create@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-skl-6600u/igt@gem_exec_create@basic.html
    - fi-cml-u2:          [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-cml-u2/igt@gem_exec_create@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-cml-u2/igt@gem_exec_create@basic.html

  * igt@gem_exec_gttfill@basic:
    - fi-tgl-y:           [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-tgl-y/igt@gem_exec_gttfill@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-tgl-y/igt@gem_exec_gttfill@basic.html
    - fi-icl-y:           [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-icl-y/igt@gem_exec_gttfill@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-icl-y/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-blb-e6850:       [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-blb-e6850/igt@gem_exec_gttfill@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-blb-e6850/igt@gem_exec_gttfill@basic.html
    - fi-hsw-4770:        [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
    - fi-ivb-3770:        [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
    - fi-icl-u2:          [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-icl-u2/igt@gem_exec_gttfill@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-icl-u2/igt@gem_exec_gttfill@basic.html
    - fi-byt-j1900:       [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-byt-j1900/igt@gem_exec_gttfill@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-byt-j1900/igt@gem_exec_gttfill@basic.html
    - fi-snb-2520m:       [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
    - fi-tgl-u2:          [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-tgl-u2/igt@gem_exec_gttfill@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-tgl-u2/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@basic:
    - fi-bsw-n3050:       [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bsw-n3050/igt@gem_exec_parallel@engines@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bsw-n3050/igt@gem_exec_parallel@engines@basic.html
    - fi-bsw-kefka:       [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html
    - fi-bsw-nick:        [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bsw-nick/igt@gem_exec_parallel@engines@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bsw-nick/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-bdw-gvtdvm:      [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_create@basic-files:
    - {fi-kbl-7560u}:     [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-7560u/igt@gem_ctx_create@basic-files.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-7560u/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-dsi}:       [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-tgl-dsi/igt@gem_exec_gttfill@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-tgl-dsi/igt@gem_exec_gttfill@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_18240 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-pnv-d510:        [PASS][63] -> [INCOMPLETE][64] ([CI#80] / [i915#299])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-pnv-d510/igt@gem_close_race@basic-threads.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-pnv-d510/igt@gem_close_race@basic-threads.html
    - fi-cfl-8700k:       [PASS][65] -> [INCOMPLETE][66] ([CI#80])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-cfl-8700k/igt@gem_close_race@basic-threads.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-cfl-8700k/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic-files:
    - fi-bxt-dsi:         [PASS][67] -> [INCOMPLETE][68] ([i915#1635])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html
    - fi-apl-guc:         [PASS][69] -> [INCOMPLETE][70] ([i915#1635])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-apl-guc/igt@gem_ctx_create@basic-files.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-apl-guc/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_gttfill@basic:
    - fi-snb-2600:        [PASS][71] -> [INCOMPLETE][72] ([i915#82])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-snb-2600/igt@gem_exec_gttfill@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-snb-2600/igt@gem_exec_gttfill@basic.html
    - fi-elk-e7500:       [PASS][73] -> [INCOMPLETE][74] ([i915#66])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-elk-e7500/igt@gem_exec_gttfill@basic.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      [DMESG-WARN][75] ([i915#1982]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (47 -> 40)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8783 -> Patchwork_18240

  CI-20190529: 20190529
  CI_DRM_8783: 9780545cd4109baff8c6eb1cb1060a29b7ab919f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5746: d818f0c54e5e781ba3fb372aab8f270cf153776c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18240: 0ab11d2707e94ea4d9df80fde49667dcf726b660 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0ab11d2707e9 drm/i915/gt: Delay taking the spinlock for grabbing from the buffer pool

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/index.html

--===============3656729822156461338==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Delay taking the spinlock for grabbing from the buffer pool</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79855/">https://patchwork.freedesktop.org/series/79855/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8783 -&gt; Patchwork_18240</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18240 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18240, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18240:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-r/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-r/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-cfl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-cfl-guc/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-skl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-skl-guc/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-cml-s/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-cml-s/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-skl-6700k2/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-skl-6700k2/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-x1275/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-x1275/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-7500u/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-7500u/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-soraka/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-soraka/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-skl-lmem/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-skl-lmem/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-guc/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-cfl-8109u/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-cfl-8109u/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@basic:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-skl-6600u/igt@gem_exec_create@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-skl-6600u/igt@gem_exec_create@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-cml-u2/igt@gem_exec_create@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-cml-u2/igt@gem_exec_create@basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-tgl-y/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-tgl-y/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-icl-y/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-icl-y/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-blb-e6850/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-blb-e6850/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-hsw-4770/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-hsw-4770/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-ivb-3770/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-ivb-3770/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-icl-u2/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-icl-u2/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-byt-j1900/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-byt-j1900/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-snb-2520m/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-snb-2520m/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-tgl-u2/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-tgl-u2/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-ilk-650/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-ilk-650/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bsw-n3050/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bsw-n3050/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bsw-nick/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bsw-nick/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-7560u/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-7560u/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-tgl-dsi/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-tgl-dsi/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18240 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-pnv-d510/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-pnv-d510/igt@gem_close_race@basic-threads.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-cfl-8700k/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-cfl-8700k/igt@gem_close_race@basic-threads.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-apl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-apl-guc/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-snb-2600/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-snb-2600/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-elk-e7500/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-elk-e7500/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/66">i915#66</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8783/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18240/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 40)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8783 -&gt; Patchwork_18240</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8783: 9780545cd4109baff8c6eb1cb1060a29b7ab919f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5746: d818f0c54e5e781ba3fb372aab8f270cf153776c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18240: 0ab11d2707e94ea4d9df80fde49667dcf726b660 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0ab11d2707e9 drm/i915/gt: Delay taking the spinlock for grabbing from the buffer pool</p>

</body>
</html>

--===============3656729822156461338==--

--===============0873693638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0873693638==--
