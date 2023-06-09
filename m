Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0566772A10C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 19:15:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AAF710E6CF;
	Fri,  9 Jun 2023 17:15:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE42B10E6CF;
 Fri,  9 Jun 2023 17:15:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC045A73C7;
 Fri,  9 Jun 2023 17:15:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1220103679307655733=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 09 Jun 2023 17:15:01 -0000
Message-ID: <168633090169.15972.13074517824602822943@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230608112233.771453-1-jani.nikula@intel.com>
In-Reply-To: <20230608112233.771453-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_copy-paste_the_extra_wa?=
 =?utf-8?q?rnings_from_scripts/Makefile=2Eextrawarn?=
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

--===============1220103679307655733==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: copy-paste the extra warnings from scripts/Makefile.extrawarn
URL   : https://patchwork.freedesktop.org/series/119067/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13250_full -> Patchwork_119067v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (7 -> 7)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_119067v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify:
    - shard-apl:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@gem_lmem_swapping@verify.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][3] ([i915#2658])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@gem_pread@exhaustion.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#3886]) +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_content_protection@uevent@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][5] ([i915#1339])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@kms_content_protection@uevent@pipe-a-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2346])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#2346])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][10] -> [ABORT][11] ([i915#180])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][12] ([i915#7862]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][13] ([i915#4573]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4579]) +11 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-dp-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][15] ([fdo#109271]) +12 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-snb7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a-vga-1.html

  * igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4579]) +6 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-snb4/igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-vga-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#658]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@v3d/v3d_wait_bo@unused-bo-1ns:
    - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271]) +102 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@v3d/v3d_wait_bo@unused-bo-1ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - {shard-rkl}:        [FAIL][19] ([i915#7742]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-tglu}:       [FAIL][21] ([i915#6268]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-tglu-10/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-apl:          [TIMEOUT][23] ([i915#3063]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-apl2/igt@gem_eio@in-flight-contexts-10ms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl6/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [ABORT][25] ([i915#180]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-apl1/igt@gem_eio@in-flight-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@reset-stress:
    - {shard-dg1}:        [FAIL][27] ([i915#5784]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-dg1-17/igt@gem_eio@reset-stress.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-dg1-14/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - {shard-rkl}:        [FAIL][29] ([i915#2842]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-tglu}:       [FAIL][31] ([i915#2842]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][33] ([i915#2842]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_mmap_offset@clear@smem0:
    - {shard-dg1}:        [DMESG-WARN][35] ([i915#8304]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-dg1-18/igt@gem_mmap_offset@clear@smem0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-dg1-18/igt@gem_mmap_offset@clear@smem0.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - {shard-dg1}:        [SKIP][37] ([i915#1937] / [i915#4579]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-dg1-15/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-dg1}:        [SKIP][39] ([i915#1397]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-dg1-17/igt@i915_pm_rpm@dpms-lpsp.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][41] ([i915#72]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][43] ([i915#2346]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7862]: https://gitlab.freedesktop.org/drm/intel/issues/7862
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8304]: https://gitlab.freedesktop.org/drm/intel/issues/8304
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502


Build changes
-------------

  * Linux: CI_DRM_13250 -> Patchwork_119067v1

  CI-20190529: 20190529
  CI_DRM_13250: 6a7540294ecfbf5a517d3a6603adef6e92474808 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7322: 2dd77d6d827a308caae49ce3eba759c2bab394ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119067v1: 6a7540294ecfbf5a517d3a6603adef6e92474808 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/index.html

--===============1220103679307655733==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: copy-paste the extra warnings from scripts/Makefile.extrawarn</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119067/">https://patchwork.freedesktop.org/series/119067/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13250_full -&gt; Patchwork_119067v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (7 -&gt; 7)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119067v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@gem_lmem_swapping@verify.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@kms_content_protection@uevent@pipe-a-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1339">i915#1339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7862">i915#7862</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4573">i915#4573</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-dp-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-snb7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-snb4/igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@unused-bo-1ns:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl3/igt@v3d/v3d_wait_bo@unused-bo-1ns.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +102 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-tglu-10/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-apl2/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl6/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-apl1/igt@gem_eio@in-flight-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-apl2/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-dg1-17/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-dg1-14/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-dg1-18/igt@gem_mmap_offset@clear@smem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8304">i915#8304</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-dg1-18/igt@gem_mmap_offset@clear@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-dg1-15/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-dg1-17/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/72">i915#72</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13250/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119067v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13250 -&gt; Patchwork_119067v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13250: 6a7540294ecfbf5a517d3a6603adef6e92474808 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7322: 2dd77d6d827a308caae49ce3eba759c2bab394ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119067v1: 6a7540294ecfbf5a517d3a6603adef6e92474808 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1220103679307655733==--
