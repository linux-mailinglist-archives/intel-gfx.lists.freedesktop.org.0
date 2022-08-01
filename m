Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AC8587425
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 00:58:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2F5A10F314;
	Mon,  1 Aug 2022 22:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 793F810EFC0;
 Mon,  1 Aug 2022 22:57:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 668FBA7E03;
 Mon,  1 Aug 2022 22:57:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3170229118260013335=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Harish Chegondi" <harish.chegondi@intel.com>
Date: Mon, 01 Aug 2022 22:57:43 -0000
Message-ID: <165939466340.14741.2261476803312323790@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220801213839.8549-1-harish.chegondi@intel.com>
In-Reply-To: <20220801213839.8549-1-harish.chegondi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Add_Wa=5F1509727124_=28rev2=29?=
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

--===============3170229118260013335==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Add Wa_1509727124 (rev2)
URL   : https://patchwork.freedesktop.org/series/106822/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11961 -> Patchwork_106822v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/index.html

Participating hosts (43 -> 40)
------------------------------

  Additional (2): fi-rkl-11600 fi-icl-u2 
  Missing    (5): fi-hsw-4200u bat-dg2-9 fi-ctg-p8600 fi-hsw-4770 bat-rpls-1 

Known issues
------------

  Here are the changes found in Patchwork_106822v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@gem_huc_copy@huc-copy.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][2] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][3] ([i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][4] ([i915#4613]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][5] ([i915#3282])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-rkl-11600:       NOTRUN -> [SKIP][6] ([i915#3012])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-icl-u2:          NOTRUN -> [INCOMPLETE][7] ([i915#4890])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [PASS][8] -> [DMESG-FAIL][9] ([i915#4494] / [i915#4957])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11961/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][10] ([i915#5982])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-rkl-11600:       NOTRUN -> [SKIP][11] ([fdo#111827]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][12] ([fdo#111827]) +7 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-rkl-11600:       NOTRUN -> [SKIP][13] ([i915#4103])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - fi-icl-u2:          NOTRUN -> [SKIP][14] ([i915#4103])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-icl-u2:          NOTRUN -> [WARN][15] ([i915#6008])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-rkl-11600:       NOTRUN -> [SKIP][16] ([fdo#109285] / [i915#4098])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
    - fi-icl-u2:          NOTRUN -> [SKIP][17] ([fdo#109285])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_page_flip:
    - fi-rkl-11600:       NOTRUN -> [SKIP][18] ([i915#1072]) +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-rkl-11600:       NOTRUN -> [SKIP][19] ([i915#3555] / [i915#4098])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-icl-u2:          NOTRUN -> [SKIP][20] ([i915#3555])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-read:
    - fi-rkl-11600:       NOTRUN -> [SKIP][21] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][22] ([fdo#109295] / [i915#3301])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][23] ([fdo#109295] / [i915#3301] / [i915#3708])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][24] ([i915#4312])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4890]: https://gitlab.freedesktop.org/drm/intel/issues/4890
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#5950]: https://gitlab.freedesktop.org/drm/intel/issues/5950
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6008]: https://gitlab.freedesktop.org/drm/intel/issues/6008
  [i915#6477]: https://gitlab.freedesktop.org/drm/intel/issues/6477


Build changes
-------------

  * Linux: CI_DRM_11961 -> Patchwork_106822v2

  CI-20190529: 20190529
  CI_DRM_11961: 7c6c0dca085a0589c6b9d56db454655def59ec48 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6606: 70465d8cc0ea657dba56b1c1e6f70df98f3db851 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106822v2: 7c6c0dca085a0589c6b9d56db454655def59ec48 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

709bf373ace6 drm/i915/dg2: Add Wa_1509727124

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/index.html

--===============3170229118260013335==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Add Wa_1509727124 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106822/">https://patchwork.freedesktop.org/series/106822/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11961 -&gt; Patchwork_106822v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/index.html</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Additional (2): fi-rkl-11600 fi-icl-u2 <br />
  Missing    (5): fi-hsw-4200u bat-dg2-9 fi-ctg-p8600 fi-hsw-4770 bat-rpls-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106822v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4890">i915#4890</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11961/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6008">i915#6008</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-rkl-11600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106822v2/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11961 -&gt; Patchwork_106822v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11961: 7c6c0dca085a0589c6b9d56db454655def59ec48 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6606: 70465d8cc0ea657dba56b1c1e6f70df98f3db851 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106822v2: 7c6c0dca085a0589c6b9d56db454655def59ec48 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>709bf373ace6 drm/i915/dg2: Add Wa_1509727124</p>

</body>
</html>

--===============3170229118260013335==--
