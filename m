Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EB260EF4A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 07:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D97410E143;
	Thu, 27 Oct 2022 05:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2390310E143;
 Thu, 27 Oct 2022 05:11:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0A3AAA917;
 Thu, 27 Oct 2022 05:11:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0271437344731232230=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Thu, 27 Oct 2022 05:11:26 -0000
Message-ID: <166684748688.4253.8468786535613373517@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221026232257.281240-1-anusha.srivatsa@intel.com>
In-Reply-To: <20221026232257.281240-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display=3A_Do_both_crawl_a?=
 =?utf-8?q?nd_squash_when_changing_cdclk?=
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

--===============0271437344731232230==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/display: Do both crawl and squash when changing cdclk
URL   : https://patchwork.freedesktop.org/series/110199/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12304 -> Patchwork_110199v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Additional (2): fi-rkl-11600 fi-icl-u2 
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110199v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-2}:       [DMESG-WARN][1] ([i915#5537]) -> [WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-rpls-2/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_110199v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-rkl-11600:       NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
    - fi-icl-u2:          NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-rkl-11600:       NOTRUN -> [SKIP][5] ([i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][6] ([i915#4613]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][7] ([i915#3282])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-rkl-11600:       NOTRUN -> [SKIP][8] ([i915#3012])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][9] -> [INCOMPLETE][10] ([i915#3303] / [i915#4785])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][11] ([i915#4817])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-rkl-guc:         NOTRUN -> [SKIP][12] ([fdo#111827])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-guc/igt@kms_chamelium@common-hpd-after-suspend.html
    - bat-adlp-4:         NOTRUN -> [SKIP][13] ([fdo#111827])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-adlp-4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-rkl-11600:       NOTRUN -> [SKIP][14] ([fdo#111827]) +7 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-icl-u2:          NOTRUN -> [SKIP][15] ([fdo#111827]) +8 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-rkl-11600:       NOTRUN -> [SKIP][16] ([i915#4103])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - fi-icl-u2:          NOTRUN -> [SKIP][17] ([i915#4103])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-rkl-11600:       NOTRUN -> [SKIP][18] ([fdo#109285] / [i915#4098])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
    - fi-icl-u2:          NOTRUN -> [SKIP][19] ([fdo#109285])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-adlp-4:         NOTRUN -> [SKIP][20] ([i915#3546])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-adlp-4/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-rkl-11600:       NOTRUN -> [SKIP][21] ([i915#1072]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-rkl-11600:       NOTRUN -> [SKIP][22] ([i915#3555] / [i915#4098])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-icl-u2:          NOTRUN -> [SKIP][23] ([i915#3555])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-read:
    - fi-rkl-11600:       NOTRUN -> [SKIP][24] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][25] ([fdo#109295] / [i915#3301])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][26] ([fdo#109295] / [i915#3301] / [i915#3708])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][27] ([fdo#109271] / [i915#4312] / [i915#4991])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][28] ([i915#2867]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-1}:       [DMESG-WARN][30] ([i915#6687]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [INCOMPLETE][32] ([i915#4983]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-dg2-9}:        [INCOMPLETE][34] -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-dg2-9/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         [INCOMPLETE][36] ([i915#7308]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/bat-adlp-4/igt@i915_selftest@live@migrate.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-adlp-4/igt@i915_selftest@live@migrate.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [FAIL][38] ([i915#6298]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5134]: https://gitlab.freedesktop.org/drm/intel/issues/5134
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7308]: https://gitlab.freedesktop.org/drm/intel/issues/7308


Build changes
-------------

  * Linux: CI_DRM_12304 -> Patchwork_110199v1

  CI-20190529: 20190529
  CI_DRM_12304: 29da184cfd1f57054340b6452921f79af68a1a44 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7027: e38045c24405e70fed6cfeec2f616454c68e6512 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110199v1: 29da184cfd1f57054340b6452921f79af68a1a44 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4a3470db5401 drm/i915/display: Add CDCLK Support for MTL
46fe690d63e7 drm/i915/display: Do both crawl and squash when changing cdclk

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/index.html

--===============0271437344731232230==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/display: Do both crawl and squash when changing cdclk</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110199/">https://patchwork.freedesktop.org/series/110199/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12304 -&gt; Patchwork_110199v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (2): fi-rkl-11600 fi-icl-u2 <br />
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110199v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5537">i915#5537</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110199v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-adlp-4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-adlp-4/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-11600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/bat-adlp-4/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7308">i915#7308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/bat-adlp-4/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110199v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12304 -&gt; Patchwork_110199v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12304: 29da184cfd1f57054340b6452921f79af68a1a44 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7027: e38045c24405e70fed6cfeec2f616454c68e6512 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110199v1: 29da184cfd1f57054340b6452921f79af68a1a44 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4a3470db5401 drm/i915/display: Add CDCLK Support for MTL<br />
46fe690d63e7 drm/i915/display: Do both crawl and squash when changing cdclk</p>

</body>
</html>

--===============0271437344731232230==--
