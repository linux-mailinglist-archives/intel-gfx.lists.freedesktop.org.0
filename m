Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECBE76945D
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 13:13:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3AB610E1D2;
	Mon, 31 Jul 2023 11:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E476610E1D2;
 Mon, 31 Jul 2023 11:13:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7E66AADE0;
 Mon, 31 Jul 2023 11:13:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6404769833723555170=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Mon, 31 Jul 2023 11:13:30 -0000
Message-ID: <169080201078.10566.13547468666276322569@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230614051731.745821-1-jouni.hogander@intel.com>
In-Reply-To: <20230614051731.745821-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTW92?=
 =?utf-8?q?e_stolen_memory_handling_details_into_i915=5Fgem=5Fstolen_=28re?=
 =?utf-8?b?djMp?=
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

--===============6404769833723555170==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Move stolen memory handling details into i915_gem_stolen (rev3)
URL   : https://patchwork.freedesktop.org/series/119123/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13444 -> Patchwork_119123v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_119123v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_119123v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/index.html

Participating hosts (41 -> 41)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_119123v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-skl-guc:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/fi-skl-guc/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-skl-guc/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_119123v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_pm_rpm@basic-rte:
    - bat-adlp-9:         NOTRUN -> [ABORT][5] ([i915#7977] / [i915#8668])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-adlp-9/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][6] ([i915#1886] / [i915#7913])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         [PASS][7] -> [TIMEOUT][8] ([i915#6794] / [i915#7392])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-rpls-2/igt@i915_selftest@live@mman.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rpls-2/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][9] -> [ABORT][10] ([i915#4983] / [i915#7461] / [i915#8347] / [i915#8384])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-rpls-1/igt@i915_selftest@live@reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-2:         [PASS][11] -> [WARN][12] ([i915#8747])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][13] ([fdo#109271]) +15 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][14] ([i915#1845] / [i915#5354]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         NOTRUN -> [ABORT][15] ([i915#8434])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         NOTRUN -> [SKIP][16] ([i915#1072])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][17] ([i915#5334]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-6:         [DMESG-FAIL][19] ([i915#7059]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-6:         [DMESG-WARN][21] ([i915#6367]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-mtlp-6/igt@i915_selftest@live@slpc.html
    - bat-mtlp-8:         [DMESG-WARN][23] ([i915#6367]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-mtlp-8/igt@i915_selftest@live@slpc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-mtlp-8/igt@i915_selftest@live@slpc.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1:
    - bat-adlp-9:         [FAIL][25] ([i915#6818]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1:
    - bat-adlp-9:         [FAIL][27] ([i915#7336]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][29] ([i915#8442] / [i915#8668]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-adlp-9:         [ABORT][31] ([i915#7977] / [i915#8434] / [i915#8668]) -> [FAIL][32] ([i915#7940])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#486]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/486
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7336]: https://gitlab.freedesktop.org/drm/intel/issues/7336
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384
  [i915#8434]: https://gitlab.freedesktop.org/drm/intel/issues/8434
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747
  [i915#8879]: https://gitlab.freedesktop.org/drm/intel/issues/8879


Build changes
-------------

  * Linux: CI_DRM_13444 -> Patchwork_119123v3

  CI-20190529: 20190529
  CI_DRM_13444: 496afa97311a1c70c6e8ce5af3ccde8e8bb5ba87 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7411: 7411
  Patchwork_119123v3: 496afa97311a1c70c6e8ce5af3ccde8e8bb5ba87 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

30309defe161 drm/i915/fbc: Moved fence related code away from intel_fbc
68c382f57336 drm/i915/fbc: Make FBC check stolen at use time
39196ac56613 drm/i915: Move stolen memory handling into i915_gem_stolen

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/index.html

--===============6404769833723555170==
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
<tr><td><b>Series:</b></td><td>Move stolen memory handling details into i915_gem_stolen (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119123/">https://patchwork.freedesktop.org/series/119123/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13444 -&gt; Patchwork_119123v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_119123v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_119123v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_119123v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/fi-skl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-skl-guc/igt@i915_module_load@reload.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119123v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-adlp-9/igt@i915_pm_rpm@basic-rte.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-rpls-2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a></p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-mtlp-8/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-mtlp-8/igt@i915_selftest@live@slpc.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6818">i915#6818</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7336">i915#7336</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13444/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119123v3/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13444 -&gt; Patchwork_119123v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13444: 496afa97311a1c70c6e8ce5af3ccde8e8bb5ba87 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7411: 7411<br />
  Patchwork_119123v3: 496afa97311a1c70c6e8ce5af3ccde8e8bb5ba87 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>30309defe161 drm/i915/fbc: Moved fence related code away from intel_fbc<br />
68c382f57336 drm/i915/fbc: Make FBC check stolen at use time<br />
39196ac56613 drm/i915: Move stolen memory handling into i915_gem_stolen</p>

</body>
</html>

--===============6404769833723555170==--
