Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D119A522502
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 21:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C86910E61D;
	Tue, 10 May 2022 19:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7FA310E61D;
 Tue, 10 May 2022 19:49:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE21EA73C7;
 Tue, 10 May 2022 19:49:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6772376541240994456=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 10 May 2022 19:49:12 -0000
Message-ID: <165221215274.26422.10389946699386244545@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220510183313.1046628-1-jouni.hogander@intel.com>
In-Reply-To: <20220510183313.1046628-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?es_for_selective_fetch_area_calculation_=28rev3=29?=
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

--===============6772376541240994456==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixes for selective fetch area calculation (rev3)
URL   : https://patchwork.freedesktop.org/series/103659/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11629 -> Patchwork_103659v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/index.html

Participating hosts (43 -> 42)
------------------------------

  Additional (2): bat-adlm-1 fi-rkl-guc 
  Missing    (3): fi-ctg-p8600 fi-rkl-11600 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_103659v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@verify-random:
    - fi-rkl-guc:         NOTRUN -> [SKIP][1] ([i915#4613]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-guc:         NOTRUN -> [SKIP][2] ([i915#3282])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-rkl-guc:         NOTRUN -> [SKIP][3] ([i915#3012])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gtt:
    - fi-bdw-5557u:       [PASS][4] -> [DMESG-FAIL][5] ([i915#3674])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11629/fi-bdw-5557u/igt@i915_selftest@live@gtt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-bdw-5557u/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][6] -> [DMESG-FAIL][7] ([i915#4528])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11629/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-rkl-guc:         NOTRUN -> [SKIP][8] ([fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-rkl-guc:         NOTRUN -> [SKIP][9] ([i915#4070] / [i915#4103]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-rkl-guc:         NOTRUN -> [SKIP][10] ([fdo#109285])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-rkl-guc:         NOTRUN -> [SKIP][11] ([i915#4070] / [i915#533])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-rkl-guc:         NOTRUN -> [SKIP][12] ([i915#1072]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-rkl-guc:         NOTRUN -> [SKIP][13] ([i915#3555] / [i915#4098])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - fi-rkl-guc:         NOTRUN -> [SKIP][14] ([i915#3301] / [i915#3708])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - fi-rkl-guc:         NOTRUN -> [SKIP][15] ([i915#3291] / [i915#3708]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {fi-ehl-2}:         [DMESG-WARN][16] ([i915#5122]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11629/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gem_contexts:
    - {bat-dg2-9}:        [DMESG-FAIL][18] ([i915#5885]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11629/bat-dg2-9/igt@i915_selftest@live@gem_contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/bat-dg2-9/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][20] ([i915#3576]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11629/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3674]: https://gitlab.freedesktop.org/drm/intel/issues/3674
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5879]: https://gitlab.freedesktop.org/drm/intel/issues/5879
  [i915#5885]: https://gitlab.freedesktop.org/drm/intel/issues/5885
  [i915#5950]: https://gitlab.freedesktop.org/drm/intel/issues/5950


Build changes
-------------

  * Linux: CI_DRM_11629 -> Patchwork_103659v3

  CI-20190529: 20190529
  CI_DRM_11629: 6bbe0d378c5fc976aeaf216b5d9d30b19323db5f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103659v3: 6bbe0d378c5fc976aeaf216b5d9d30b19323db5f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e417ea0ac493 drm/i915: Ensure damage clip area is within pipe area
059c6108a384 drm/i915/psr: Use full update In case of area calculation fails
398a515089e2 drm/print: Add drm_debug_once* macros

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/index.html

--===============6772376541240994456==
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
<tr><td><b>Series:</b></td><td>Fixes for selective fetch area calculation (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103659/">https://patchwork.freedesktop.org/series/103659/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11629 -&gt; Patchwork_103659v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Additional (2): bat-adlm-1 fi-rkl-guc <br />
  Missing    (3): fi-ctg-p8600 fi-rkl-11600 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103659v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11629/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3674">i915#3674</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11629/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-rkl-guc/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11629/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11629/bat-dg2-9/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5885">i915#5885</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/bat-dg2-9/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11629/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v3/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11629 -&gt; Patchwork_103659v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11629: 6bbe0d378c5fc976aeaf216b5d9d30b19323db5f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103659v3: 6bbe0d378c5fc976aeaf216b5d9d30b19323db5f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e417ea0ac493 drm/i915: Ensure damage clip area is within pipe area<br />
059c6108a384 drm/i915/psr: Use full update In case of area calculation fails<br />
398a515089e2 drm/print: Add drm_debug_once* macros</p>

</body>
</html>

--===============6772376541240994456==--
