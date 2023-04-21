Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3F76EB4EF
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Apr 2023 00:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C7F10E0D8;
	Fri, 21 Apr 2023 22:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EC35010E0D8;
 Fri, 21 Apr 2023 22:34:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3C0FA47DF;
 Fri, 21 Apr 2023 22:34:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5621194180091117019=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 21 Apr 2023 22:34:27 -0000
Message-ID: <168211646792.5823.6750859980511376860@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1682077472.git.jani.nikula@intel.com>
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/display_=26_drm/i915=3A_more_struct_drm=5Fedid_conversions?=
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

--===============5621194180091117019==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/display & drm/i915: more struct drm_edid conversions
URL   : https://patchwork.freedesktop.org/series/116813/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13041_full -> Patchwork_116813v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116813v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116813v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (7 -> 7)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116813v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_116813v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-apl:          [PASS][3] -> [ABORT][4] ([i915#8211] / [i915#8234])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl3/igt@gem_barrier_race@remote-request@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl4/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@i915_module_load@reload:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180] / [i915#62] / [i915#7634])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl1/igt@i915_module_load@reload.html

  * igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-c-dp-1:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180] / [i915#62]) +32 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-c-dp-1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl1/igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-c-dp-1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html

  * igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271]) +27 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-snb1/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - {shard-rkl}:        [FAIL][14] ([i915#7742]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-3/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][16] ([i915#2846]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-glk1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - {shard-rkl}:        [FAIL][18] ([i915#2842]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [FAIL][20] ([i915#2842]) -> [PASS][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-glk:          [FAIL][22] ([i915#2842]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-glk9/igt@gem_exec_fair@basic-pace@vecs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-glk2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - {shard-rkl}:        [SKIP][24] ([i915#1937]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - {shard-rkl}:        [SKIP][26] ([i915#1397]) -> [PASS][27] +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-6/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][28] ([i915#2346]) -> [PASS][29] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@single-move@pipe-b:
    - {shard-rkl}:        [INCOMPLETE][30] ([i915#8011]) -> [PASS][31] +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-7/igt@kms_cursor_legacy@single-move@pipe-b.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-6/igt@kms_cursor_legacy@single-move@pipe-b.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][32] ([i915#4767]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_scaling@i915-max-src-size@pipe-a-hdmi-a-2:
    - {shard-rkl}:        [FAIL][34] ([i915#8292]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-3/igt@kms_plane_scaling@i915-max-src-size@pipe-a-hdmi-a-2.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-4/igt@kms_plane_scaling@i915-max-src-size@pipe-a-hdmi-a-2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#7634]: https://gitlab.freedesktop.org/drm/intel/issues/7634
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8234]: https://gitlab.freedesktop.org/drm/intel/issues/8234
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292


Build changes
-------------

  * Linux: CI_DRM_13041 -> Patchwork_116813v1

  CI-20190529: 20190529
  CI_DRM_13041: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116813v1: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/index.html

--===============5621194180091117019==
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
<tr><td><b>Series:</b></td><td>drm/display &amp; drm/i915: more struct drm_edid conversions</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116813/">https://patchwork.freedesktop.org/series/116813/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13041_full -&gt; Patchwork_116813v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116813v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116813v1_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (7 -&gt; 7)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116813v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html">DMESG-WARN</a> +9 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116813v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl3/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl4/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8234">i915#8234</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7634">i915#7634</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl1/igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-c-dp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-snb1/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-3/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-glk1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-glk9/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-glk2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-6/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-7/igt@kms_cursor_legacy@single-move@pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-6/igt@kms_cursor_legacy@single-move@pipe-b.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@i915-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/shard-rkl-3/igt@kms_plane_scaling@i915-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/shard-rkl-4/igt@kms_plane_scaling@i915-max-src-size@pipe-a-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13041 -&gt; Patchwork_116813v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13041: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116813v1: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5621194180091117019==--
