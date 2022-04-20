Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC55F508267
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 09:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8328710E5FD;
	Wed, 20 Apr 2022 07:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B774810E5FD;
 Wed, 20 Apr 2022 07:40:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3460AADD8;
 Wed, 20 Apr 2022 07:40:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4657303184988613634=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Wed, 20 Apr 2022 07:40:46 -0000
Message-ID: <165044044670.24582.7017497754378915193@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1650435571.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes_=28rev?=
 =?utf-8?q?2=29?=
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

--===============4657303184988613634==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Media freq factor and per-gt enhancements/fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/102665/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11523 -> Patchwork_102665v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102665v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102665v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/index.html

Participating hosts (47 -> 45)
------------------------------

  Additional (3): bat-adlm-1 fi-rkl-11600 fi-hsw-4770 
  Missing    (5): fi-bdw-5557u fi-hsw-4200u fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102665v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@slpc:
    - bat-dg1-5:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/bat-dg1-5/igt@i915_selftest@live@slpc.html

  
Known issues
------------

  Here are the changes found in Patchwork_102665v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][2] ([i915#5127])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][3] ([fdo#109271]) +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-hsw-4770/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#3012])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - fi-tgl-u2:          [PASS][6] -> [DMESG-WARN][7] ([i915#402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-hsw-4770:        NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#533])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-hsw-4770:        NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1072]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-adl-ddr5:        [DMESG-WARN][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [DMESG-FAIL][12] ([i915#4494] / [i915#4957]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][14] ([i915#4269]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [INCOMPLETE][16] -> [DMESG-FAIL][17] ([i915#4494] / [i915#4957])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5552]: https://gitlab.freedesktop.org/drm/intel/issues/5552


Build changes
-------------

  * IGT: IGT_6440 -> IGTPW_6952
  * Linux: CI_DRM_11523 -> Patchwork_102665v2

  CI-20190529: 20190529
  CI_DRM_11523: 6b6803c3f43f5d0f960246b4b52f956f1a579833 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6952: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6952/index.html
  IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102665v2: 6b6803c3f43f5d0f960246b4b52f956f1a579833 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fba615af4388 drm/i915/gt: Expose default value for media_freq_factor in per-gt sysfs
4dbbf797fce1 drm/i915/gt: Expose per-gt RPS defaults in sysfs
571de9eed294 drm/i915/gt: Fix memory leaks in per-gt sysfs
53acdc5a10f5 drm/i915/gt: Add media RP0/RPn to per-gt sysfs
2beb6a66e339 drm/i915/pcode: Add a couple of pcode helpers
40c0bf34b990 drm/i915/gt: Convert callers to user per-gt pcode functions
53f9af589b81 drm/i915/pcode: Extend pcode functions for multiple gt's
40b9e9888c60 drm/i915/gt: Add media freq factor to per-gt sysfs
d0aa37b05656 drm/i915: Introduce has_media_ratio_mode

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/index.html

--===============4657303184988613634==
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
<tr><td><b>Series:</b></td><td>drm/i915: Media freq factor and per-gt enhancements/fixes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102665/">https://patchwork.freedesktop.org/series/102665/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11523 -&gt; Patchwork_102665v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102665v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102665v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/index.html</p>
<h2>Participating hosts (47 -&gt; 45)</h2>
<p>Additional (3): bat-adlm-1 fi-rkl-11600 fi-hsw-4770 <br />
  Missing    (5): fi-bdw-5557u fi-hsw-4200u fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102665v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/bat-dg1-5/igt@i915_selftest@live@slpc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102665v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-hsw-4770/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11523/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6440 -&gt; IGTPW_6952</li>
<li>Linux: CI_DRM_11523 -&gt; Patchwork_102665v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11523: 6b6803c3f43f5d0f960246b4b52f956f1a579833 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6952: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6952/index.html<br />
  IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102665v2: 6b6803c3f43f5d0f960246b4b52f956f1a579833 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fba615af4388 drm/i915/gt: Expose default value for media_freq_factor in per-gt sysfs<br />
4dbbf797fce1 drm/i915/gt: Expose per-gt RPS defaults in sysfs<br />
571de9eed294 drm/i915/gt: Fix memory leaks in per-gt sysfs<br />
53acdc5a10f5 drm/i915/gt: Add media RP0/RPn to per-gt sysfs<br />
2beb6a66e339 drm/i915/pcode: Add a couple of pcode helpers<br />
40c0bf34b990 drm/i915/gt: Convert callers to user per-gt pcode functions<br />
53f9af589b81 drm/i915/pcode: Extend pcode functions for multiple gt's<br />
40b9e9888c60 drm/i915/gt: Add media freq factor to per-gt sysfs<br />
d0aa37b05656 drm/i915: Introduce has_media_ratio_mode</p>

</body>
</html>

--===============4657303184988613634==--
