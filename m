Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA070508150
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 08:39:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3424010E398;
	Wed, 20 Apr 2022 06:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3098C10F0C2;
 Wed, 20 Apr 2022 06:39:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1734BA9932;
 Wed, 20 Apr 2022 06:39:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6834251708157605496=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Wed, 20 Apr 2022 06:39:02 -0000
Message-ID: <165043674208.24583.2396188308307978501@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1649871650.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes?=
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

--===============6834251708157605496==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Media freq factor and per-gt enhancements/fixes
URL   : https://patchwork.freedesktop.org/series/102665/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11523 -> Patchwork_102665v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/index.html

Participating hosts (47 -> 49)
------------------------------

  Additional (5): fi-rkl-11600 bat-dg2-8 bat-adlm-1 fi-icl-u2 fi-hsw-4770 
  Missing    (3): fi-ctg-p8600 fi-bsw-cyan fi-hsw-4200u 

Known issues
------------

  Here are the changes found in Patchwork_102665v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][1] ([i915#5127])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][2] ([fdo#109271]) +9 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-hsw-4770/igt@gem_huc_copy@huc-copy.html
    - fi-icl-u2:          NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][4] ([i915#4613]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-dg1-5:          NOTRUN -> [FAIL][5] ([i915#5701])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/bat-dg1-5/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-dg1-6:          NOTRUN -> [FAIL][6] ([i915#5701])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/bat-dg1-6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#3012])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][9] ([fdo#111827]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          NOTRUN -> [SKIP][10] ([fdo#109278]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][11] ([fdo#109285])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-hsw-4770:        NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#533])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-hsw-4770:        NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1072]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-icl-u2:          NOTRUN -> [SKIP][14] ([i915#3555])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][15] ([i915#3301])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - bat-dg1-5:          NOTRUN -> [FAIL][16] ([i915#4312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/bat-dg1-5/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][17] ([i915#4312])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-bdw-5557u/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][18] ([i915#4312])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/bat-dg1-6/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-adl-ddr5:        [DMESG-WARN][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@basic-flip-vs-dpms@a-edp1:
    - fi-tgl-u2:          [DMESG-WARN][21] ([i915#402]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][23] ([i915#4269]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@fbdev@eof:
    - fi-kbl-8809g:       [INCOMPLETE][25] ([i915#5557] / [i915#5717]) -> [INCOMPLETE][26] ([i915#5557])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-kbl-8809g/igt@fbdev@eof.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-kbl-8809g/igt@fbdev@eof.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][27] ([i915#5717]) -> [FAIL][28] ([i915#2722])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-kbl-8809g/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5171]: https://gitlab.freedesktop.org/drm/intel/issues/5171
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5181]: https://gitlab.freedesktop.org/drm/intel/issues/5181
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5275]: https://gitlab.freedesktop.org/drm/intel/issues/5275
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5557]: https://gitlab.freedesktop.org/drm/intel/issues/5557
  [i915#5606]: https://gitlab.freedesktop.org/drm/intel/issues/5606
  [i915#5607]: https://gitlab.freedesktop.org/drm/intel/issues/5607
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5634]: https://gitlab.freedesktop.org/drm/intel/issues/5634
  [i915#5701]: https://gitlab.freedesktop.org/drm/intel/issues/5701
  [i915#5703]: https://gitlab.freedesktop.org/drm/intel/issues/5703
  [i915#5717]: https://gitlab.freedesktop.org/drm/intel/issues/5717


Build changes
-------------

  * IGT: IGT_6440 -> IGTPW_6925
  * Linux: CI_DRM_11523 -> Patchwork_102665v1

  CI-20190529: 20190529
  CI_DRM_11523: 6b6803c3f43f5d0f960246b4b52f956f1a579833 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6925: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6925/index.html
  IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102665v1: d883cffbf2383a96420fd6dc099056295de24a12 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d6cf80273360 drm/i915/gt: Expose default value for media_freq_factor in per-gt sysfs
1f0f3ec25497 drm/i915/gt: Expose per-gt RPS defaults in sysfs
bb5327732fe5 drm/i915/gt: Fix memory leaks in per-gt sysfs
a4c2bfa4f705 drm/i915/gt: Add media RP0/RPn to per-gt sysfs
94c6d3942fe5 drm/i915/pcode: Add a couple of pcode helpers
504368cb6143 drm/i915/pcode: Extend pcode functions for multiple gt's
7d4e345652f1 drm/i915/gt: Add media freq factor to per-gt sysfs
0ad13f8ef932 drm/i915: Introduce has_media_ratio_mode

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/index.html

--===============6834251708157605496==
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
<tr><td><b>Series:</b></td><td>drm/i915: Media freq factor and per-gt enhancements/fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102665/">https://patchwork.freedesktop.org/series/102665/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11523 -&gt; Patchwork_102665v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/index.html</p>
<h2>Participating hosts (47 -&gt; 49)</h2>
<p>Additional (5): fi-rkl-11600 bat-dg2-8 bat-adlm-1 fi-icl-u2 fi-hsw-4770 <br />
  Missing    (3): fi-ctg-p8600 fi-bsw-cyan fi-hsw-4200u </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102665v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-hsw-4770/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/bat-dg1-5/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5701">i915#5701</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/bat-dg1-6/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5701">i915#5701</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-kbl-8809g/igt@fbdev@eof.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5557">i915#5557</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5717">i915#5717</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-kbl-8809g/igt@fbdev@eof.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5557">i915#5557</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5717">i915#5717</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v1/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6440 -&gt; IGTPW_6925</li>
<li>Linux: CI_DRM_11523 -&gt; Patchwork_102665v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11523: 6b6803c3f43f5d0f960246b4b52f956f1a579833 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6925: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6925/index.html<br />
  IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102665v1: d883cffbf2383a96420fd6dc099056295de24a12 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d6cf80273360 drm/i915/gt: Expose default value for media_freq_factor in per-gt sysfs<br />
1f0f3ec25497 drm/i915/gt: Expose per-gt RPS defaults in sysfs<br />
bb5327732fe5 drm/i915/gt: Fix memory leaks in per-gt sysfs<br />
a4c2bfa4f705 drm/i915/gt: Add media RP0/RPn to per-gt sysfs<br />
94c6d3942fe5 drm/i915/pcode: Add a couple of pcode helpers<br />
504368cb6143 drm/i915/pcode: Extend pcode functions for multiple gt's<br />
7d4e345652f1 drm/i915/gt: Add media freq factor to per-gt sysfs<br />
0ad13f8ef932 drm/i915: Introduce has_media_ratio_mode</p>

</body>
</html>

--===============6834251708157605496==--
