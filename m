Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFED6FF03B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 12:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA1510E242;
	Thu, 11 May 2023 10:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3251C10E242;
 Thu, 11 May 2023 10:55:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 242CAAADDD;
 Thu, 11 May 2023 10:55:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0380051105501072513=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Date: Thu, 11 May 2023 10:55:48 -0000
Message-ID: <168380254811.29010.10002512016836029099@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230511082013.1313484-1-luciano.coelho@intel.com>
In-Reply-To: <20230511082013.1313484-1-luciano.coelho@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_internal_workqueues?=
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

--===============0380051105501072513==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: implement internal workqueues
URL   : https://patchwork.freedesktop.org/series/117618/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13132_full -> Patchwork_117618v1_full
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

  Here are the changes found in Patchwork_117618v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-snb:          [PASS][3] -> [ABORT][4] ([i915#5161])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-snb1/igt@gem_mmap_gtt@fault-concurrent-x.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - shard-snb:          [PASS][5] -> [FAIL][6] ([i915#8295])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-snb4/igt@gem_ppgtt@blt-vs-render-ctx0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4579]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-snb1/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_color@ctm-green-to-red@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271]) +11 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-snb1/igt@kms_color@ctm-green-to-red@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#2346])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2122]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-apl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-apl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_properties@crtc-properties-legacy:
    - shard-snb:          [PASS][15] -> [SKIP][16] ([fdo#109271]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-snb4/igt@kms_properties@crtc-properties-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-snb1/igt@kms_properties@crtc-properties-legacy.html

  
#### Possible fixes ####

  * igt@gem_barrier_race@remote-request@rcs0:
    - {shard-tglu}:       [ABORT][17] ([i915#7953] / [i915#8211] / [i915#8234]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-tglu-9/igt@gem_barrier_race@remote-request@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-tglu-9/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - {shard-rkl}:        [TIMEOUT][19] ([i915#3778]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-4/igt@gem_exec_endless@dispatch@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-3/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - {shard-rkl}:        [FAIL][21] ([i915#2842]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_mmap_offset@clear@smem0:
    - {shard-dg1}:        [FAIL][23] ([i915#7962]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-dg1-14/igt@gem_mmap_offset@clear@smem0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-dg1-18/igt@gem_mmap_offset@clear@smem0.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - {shard-rkl}:        [SKIP][25] ([i915#1937] / [i915#4579]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - {shard-rkl}:        [SKIP][27] ([i915#1397]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-3/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:
    - shard-glk:          [FAIL][29] ([i915#2521]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][31] ([i915#2346]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@single-bo@pipe-b:
    - {shard-rkl}:        [INCOMPLETE][33] ([i915#8011]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-7/igt@kms_cursor_legacy@single-bo@pipe-b.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-3/igt@kms_cursor_legacy@single-bo@pipe-b.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - {shard-rkl}:        [ABORT][35] ([i915#8311]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-3/igt@kms_rotation_crc@bad-pixel-format.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-4/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - {shard-rkl}:        [ABORT][37] ([i915#7461] / [i915#8178] / [i915#8311]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_vblank@pipe-d-ts-continuation-modeset:
    - {shard-dg1}:        [DMESG-FAIL][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-dg1-12/igt@kms_vblank@pipe-d-ts-continuation-modeset.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-dg1-15/igt@kms_vblank@pipe-d-ts-continuation-modeset.html

  * igt@perf_pmu@idle@rcs0:
    - {shard-dg1}:        [FAIL][41] ([i915#4349]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-dg1-15/igt@perf_pmu@idle@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-dg1-17/igt@perf_pmu@idle@rcs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#7962]: https://gitlab.freedesktop.org/drm/intel/issues/7962
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8178]: https://gitlab.freedesktop.org/drm/intel/issues/8178
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8234]: https://gitlab.freedesktop.org/drm/intel/issues/8234
  [i915#8295]: https://gitlab.freedesktop.org/drm/intel/issues/8295
  [i915#8311]: https://gitlab.freedesktop.org/drm/intel/issues/8311
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411


Build changes
-------------

  * Linux: CI_DRM_13132 -> Patchwork_117618v1

  CI-20190529: 20190529
  CI_DRM_13132: 4760cbc0f5aa85cd9a0ff94ecc58ea3f5e087ea7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117618v1: 4760cbc0f5aa85cd9a0ff94ecc58ea3f5e087ea7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/index.html

--===============0380051105501072513==
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
<tr><td><b>Series:</b></td><td>drm/i915: implement internal workqueues</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117618/">https://patchwork.freedesktop.org/series/117618/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13132_full -&gt; Patchwork_117618v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (7 -&gt; 7)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117618v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-snb1/igt@gem_mmap_gtt@fault-concurrent-x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-x.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5161">i915#5161</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-snb4/igt@gem_ppgtt@blt-vs-render-ctx0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8295">i915#8295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-snb1/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-snb1/igt@kms_color@ctm-green-to-red@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-apl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-apl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-snb4/igt@kms_properties@crtc-properties-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-snb1/igt@kms_properties@crtc-properties-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-tglu-9/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8234">i915#8234</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-tglu-9/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-4/igt@gem_exec_endless@dispatch@rcs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-3/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-dg1-14/igt@gem_mmap_offset@clear@smem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7962">i915#7962</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-dg1-18/igt@gem_mmap_offset@clear@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-3/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-bo@pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-7/igt@kms_cursor_legacy@single-bo@pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-3/igt@kms_cursor_legacy@single-bo@pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-3/igt@kms_rotation_crc@bad-pixel-format.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8311">i915#8311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-4/igt@kms_rotation_crc@bad-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8178">i915#8178</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8311">i915#8311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-rkl-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-dg1-12/igt@kms_vblank@pipe-d-ts-continuation-modeset.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-dg1-15/igt@kms_vblank@pipe-d-ts-continuation-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@idle@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13132/shard-dg1-15/igt@perf_pmu@idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v1/shard-dg1-17/igt@perf_pmu@idle@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13132 -&gt; Patchwork_117618v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13132: 4760cbc0f5aa85cd9a0ff94ecc58ea3f5e087ea7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117618v1: 4760cbc0f5aa85cd9a0ff94ecc58ea3f5e087ea7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0380051105501072513==--
