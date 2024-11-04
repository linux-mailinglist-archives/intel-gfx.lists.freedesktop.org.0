Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8819BBFF7
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 22:24:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82B9110E4D0;
	Mon,  4 Nov 2024 21:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A54C110E103;
 Mon,  4 Nov 2024 21:24:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2149594151904842861=="
MIME-Version: 1.0
Subject: =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IFVzZSBzZ19zZXRf?=
 =?utf-8?b?YnVmKCksIHNnX2RtYV9hZGRyZXNzKCkgaGVscGVy?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sui Jingfeng" <sui.jingfeng@linux.dev>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 04 Nov 2024 21:24:17 -0000
Message-ID: <173075545766.1408940.14964988710944788384@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241104195220.655343-1-sui.jingfeng@linux.dev>
In-Reply-To: <20241104195220.655343-1-sui.jingfeng@linux.dev>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2149594151904842861==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use sg_set_buf(), sg_dma_address() helper
URL   : https://patchwork.freedesktop.org/series/140899/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15627 -> Patchwork_140899v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140899v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140899v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/index.html

Participating hosts (44 -> 44)
------------------------------

  Additional (1): bat-arls-1 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140899v1:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - bat-arls-2:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-arls-2/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-arls-2/igt@debugfs_test@read_all_entries.html
    - fi-tgl-1115g4:      [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
    - fi-cfl-guc:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
    - bat-mtlp-6:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-mtlp-6/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-mtlp-6/igt@debugfs_test@read_all_entries.html
    - bat-dg2-14:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg2-14/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg2-14/igt@debugfs_test@read_all_entries.html
    - bat-atsm-1:         [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-atsm-1/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-atsm-1/igt@debugfs_test@read_all_entries.html
    - bat-dg2-11:         [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg2-11/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg2-11/igt@debugfs_test@read_all_entries.html
    - bat-mtlp-8:         [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-mtlp-8/igt@debugfs_test@read_all_entries.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-mtlp-8/igt@debugfs_test@read_all_entries.html
    - bat-dg2-8:          [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg2-8/igt@debugfs_test@read_all_entries.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html
    - fi-kbl-guc:         [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
    - bat-arls-1:         NOTRUN -> [ABORT][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-arls-1/igt@debugfs_test@read_all_entries.html
    - fi-pnv-d510:        [PASS][22] -> [ABORT][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
    - bat-adlp-9:         [PASS][24] -> [ABORT][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-adlp-9/igt@debugfs_test@read_all_entries.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-adlp-9/igt@debugfs_test@read_all_entries.html
    - bat-rpls-4:         [PASS][26] -> [ABORT][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-rpls-4/igt@debugfs_test@read_all_entries.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-rpls-4/igt@debugfs_test@read_all_entries.html
    - bat-arlh-2:         [PASS][28] -> [ABORT][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-arlh-2/igt@debugfs_test@read_all_entries.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-arlh-2/igt@debugfs_test@read_all_entries.html
    - bat-dg2-9:          [PASS][30] -> [ABORT][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg2-9/igt@debugfs_test@read_all_entries.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg2-9/igt@debugfs_test@read_all_entries.html

  * igt@i915_hangman@error-state-basic:
    - fi-cfl-8109u:       [PASS][32] -> [ABORT][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html
    - fi-skl-6600u:       [PASS][34] -> [ABORT][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-skl-6600u/igt@i915_hangman@error-state-basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-skl-6600u/igt@i915_hangman@error-state-basic.html
    - bat-twl-2:          [PASS][36] -> [ABORT][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-twl-2/igt@i915_hangman@error-state-basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-twl-2/igt@i915_hangman@error-state-basic.html
    - fi-bsw-nick:        [PASS][38] -> [ABORT][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-bsw-nick/igt@i915_hangman@error-state-basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-bsw-nick/igt@i915_hangman@error-state-basic.html
    - fi-elk-e7500:       [PASS][40] -> [ABORT][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-elk-e7500/igt@i915_hangman@error-state-basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-elk-e7500/igt@i915_hangman@error-state-basic.html
    - bat-adlm-1:         [PASS][42] -> [ABORT][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-adlm-1/igt@i915_hangman@error-state-basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-adlm-1/igt@i915_hangman@error-state-basic.html
    - bat-arlh-3:         [PASS][44] -> [ABORT][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-arlh-3/igt@i915_hangman@error-state-basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-arlh-3/igt@i915_hangman@error-state-basic.html
    - bat-dg1-7:          [PASS][46] -> [ABORT][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg1-7/igt@i915_hangman@error-state-basic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg1-7/igt@i915_hangman@error-state-basic.html
    - fi-kbl-7567u:       [PASS][48] -> [ABORT][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html
    - bat-twl-1:          [PASS][50] -> [ABORT][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-twl-1/igt@i915_hangman@error-state-basic.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-twl-1/igt@i915_hangman@error-state-basic.html
    - bat-rplp-1:         [PASS][52] -> [ABORT][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-rplp-1/igt@i915_hangman@error-state-basic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-rplp-1/igt@i915_hangman@error-state-basic.html
    - fi-rkl-11600:       [PASS][54] -> [ABORT][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-rkl-11600/igt@i915_hangman@error-state-basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-rkl-11600/igt@i915_hangman@error-state-basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_140899v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-dg2-9:          [DMESG-WARN][56] -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg2-9/igt@i915_module_load@load.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg2-9/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - bat-apl-1:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +2 other tests pass
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-apl-1/igt@i915_module_load@reload.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-apl-1/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-apl-1:          [DMESG-WARN][60] ([i915#11621] / [i915#180] / [i915#1982]) -> [PASS][61] +1 other test pass
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-apl-1/igt@i915_pm_rpm@module-reload.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-apl-1/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-apl-1:          [DMESG-WARN][62] ([i915#11621]) -> [PASS][63] +79 other tests pass
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-apl-1/igt@i915_selftest@live@sanitycheck.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-apl-1/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_busy@basic@flip:
    - bat-apl-1:          [DMESG-WARN][64] ([i915#180] / [i915#1982]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-apl-1/igt@kms_busy@basic@flip.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-apl-1/igt@kms_busy@basic@flip.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-apl-1:          [DMESG-WARN][66] ([i915#11621] / [i915#180]) -> [PASS][67] +43 other tests pass
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982


Build changes
-------------

  * Linux: CI_DRM_15627 -> Patchwork_140899v1

  CI-20190529: 20190529
  CI_DRM_15627: 0a6cc4357ae4d824f909468ca1deed28ae5ac96f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8093: 8093
  Patchwork_140899v1: 0a6cc4357ae4d824f909468ca1deed28ae5ac96f @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/index.html

--===============2149594151904842861==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use sg_set_buf(), sg_dma_address() helper</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140899/">https://patchwork.freedesktop.org/series/140899/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15627 -&gt; Patchwork_140899v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140899v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140899v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>Additional (1): bat-arls-1 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140899v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-arls-2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-arls-2/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-mtlp-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-mtlp-6/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg2-14/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg2-14/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-atsm-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-atsm-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg2-11/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg2-11/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-mtlp-8/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-mtlp-8/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg2-8/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-arls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-arls-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-adlp-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-adlp-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-rpls-4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-rpls-4/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-arlh-2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-arlh-2/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg2-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg2-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-skl-6600u/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-skl-6600u/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-twl-2/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-twl-2/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-bsw-nick/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-bsw-nick/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-elk-e7500/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-elk-e7500/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-adlm-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-adlm-1/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-arlh-3/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-arlh-3/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg1-7/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg1-7/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-twl-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-twl-1/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-rplp-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-rplp-1/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/fi-rkl-11600/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/fi-rkl-11600/igt@i915_hangman@error-state-basic.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140899v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-dg2-9/igt@i915_module_load@load.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-dg2-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-apl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-apl-1/igt@i915_module_load@reload.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-apl-1/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-apl-1/igt@i915_pm_rpm@module-reload.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> +79 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-apl-1/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-apl-1/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15627/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140899v1/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +43 other tests pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15627 -&gt; Patchwork_140899v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15627: 0a6cc4357ae4d824f909468ca1deed28ae5ac96f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8093: 8093<br />
  Patchwork_140899v1: 0a6cc4357ae4d824f909468ca1deed28ae5ac96f @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2149594151904842861==--
