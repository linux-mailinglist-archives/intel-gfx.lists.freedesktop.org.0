Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1A7508AB2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 16:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA23C10F18C;
	Wed, 20 Apr 2022 14:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 201AF10F192;
 Wed, 20 Apr 2022 14:23:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D7ABA7DFC;
 Wed, 20 Apr 2022 14:23:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0870399701443973040=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Wed, 20 Apr 2022 14:23:10 -0000
Message-ID: <165046459008.24581.7228684604908915707@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220419182753.364237-1-jose.souza@intel.com>
In-Reply-To: <20220419182753.364237-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/display=3A_Add_workar?=
 =?utf-8?q?ound_22014263786_=28rev3=29?=
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

--===============0870399701443973040==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/display: Add workaround 22014263786 (rev3)
URL   : https://patchwork.freedesktop.org/series/102835/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11526 -> Patchwork_102835v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/index.html

Participating hosts (51 -> 45)
------------------------------

  Missing    (6): fi-kbl-soraka fi-hsw-4200u bat-adlm-1 fi-icl-u2 fi-bsw-cyan fi-ctg-p8600 

Known issues
------------

  Here are the changes found in Patchwork_102835v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-rkl-11600:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-rkl-11600:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][3] ([i915#3282])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-rkl-11600:       NOTRUN -> [SKIP][4] ([i915#3012])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          NOTRUN -> [INCOMPLETE][5] ([i915#5757])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-rkl-11600:       NOTRUN -> [SKIP][6] ([fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][7] ([i915#4070] / [i915#4103]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - fi-tgl-u2:          [PASS][8] -> [DMESG-WARN][9] ([i915#402]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-rkl-11600:       NOTRUN -> [SKIP][10] ([fdo#109285] / [i915#4098])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][11] -> [DMESG-WARN][12] ([i915#4269])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-rkl-11600:       NOTRUN -> [SKIP][13] ([i915#4070] / [i915#533])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-rkl-11600:       NOTRUN -> [SKIP][14] ([i915#1072]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-rkl-11600:       NOTRUN -> [SKIP][15] ([i915#3555] / [i915#4098])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - fi-rkl-11600:       NOTRUN -> [SKIP][16] ([i915#3301] / [i915#3708])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - fi-rkl-11600:       NOTRUN -> [SKIP][17] ([i915#3291] / [i915#3708]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][18] ([i915#4312])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [INCOMPLETE][19] ([i915#5127]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-5:          [INCOMPLETE][21] ([i915#4418]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/bat-dg1-5/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [INCOMPLETE][23] ([i915#4785]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@reset:
    - {bat-adlp-6}:       [DMESG-FAIL][25] ([i915#4983]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/bat-adlp-6/igt@i915_selftest@live@reset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/bat-adlp-6/igt@i915_selftest@live@reset.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][27] ([i915#3576]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/bat-adlp-6/igt@kms_busy@basic@flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5757]: https://gitlab.freedesktop.org/drm/intel/issues/5757


Build changes
-------------

  * Linux: CI_DRM_11526 -> Patchwork_102835v3

  CI-20190529: 20190529
  CI_DRM_11526: 6094ebd5db15c51e89ce9960d782613f8df57c63 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102835v3: 6094ebd5db15c51e89ce9960d782613f8df57c63 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d3ef37c23643 drm/i915/dg2: Add workaround 18019627453
f533301f357f drm/i915/display: Add workaround 22014263786

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/index.html

--===============0870399701443973040==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/display: Add workaround 22014263786 (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102835/">https://patchwork.freedesktop.org/series/102835/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11526 -&gt; Patchwork_102835v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/index.html</p>
<h2>Participating hosts (51 -&gt; 45)</h2>
<p>Missing    (6): fi-kbl-soraka fi-hsw-4200u bat-adlm-1 fi-icl-u2 fi-bsw-cyan fi-ctg-p8600 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102835v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5757">i915#5757</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/bat-adlp-6/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/bat-adlp-6/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11526/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102835v3/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11526 -&gt; Patchwork_102835v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11526: 6094ebd5db15c51e89ce9960d782613f8df57c63 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6440: 04262fc75ff3ec42f4db0c929d46b7cd5083911f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102835v3: 6094ebd5db15c51e89ce9960d782613f8df57c63 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d3ef37c23643 drm/i915/dg2: Add workaround 18019627453<br />
f533301f357f drm/i915/display: Add workaround 22014263786</p>

</body>
</html>

--===============0870399701443973040==--
