Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D284D26A433
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 13:34:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 953F96E22B;
	Tue, 15 Sep 2020 11:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEE7E6E241;
 Tue, 15 Sep 2020 11:34:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6C3B9A3ECB;
 Tue, 15 Sep 2020 11:34:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 15 Sep 2020 11:34:04 -0000
Message-ID: <160016964440.30599.7531112961148659286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200915091417.4086-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200915091417.4086-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gem=3A_Avoid_implicit?=
 =?utf-8?q?_vmap_for_highmem_on_x86-32?=
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
Content-Type: multipart/mixed; boundary="===============0333918500=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0333918500==
Content-Type: multipart/alternative;
 boundary="===============8257904245613398635=="

--===============8257904245613398635==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/3] drm/i915/gem: Avoid implicit vmap for highmem on x86-32
URL   : https://patchwork.freedesktop.org/series/81682/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9008_full -> Patchwork_18498_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18498_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3_array3-position-double_dvec2 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][1] +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/pig-icl-1065g7/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3_array3-position-double_dvec2.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9008_full and Patchwork_18498_full:

### New Piglit tests (7) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x2-float_float_array3-position:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat2x3_array3-position-double_dvec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3_array3-double_dvec4-position:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3_array3-position-double_dvec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4-double_dvec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4x3-float_mat3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4x3-int_ivec2_array3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18498_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][2] -> [SKIP][3] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#1982])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-kbl6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-kbl6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][6] -> [FAIL][7] ([i915#96])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@2x-busy-flip@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-hsw1/igt@kms_flip@2x-busy-flip@ab-vga1-hdmi-a1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-hsw6/igt@kms_flip@2x-busy-flip@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#79])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109441]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-iclb2/igt@kms_psr@psr2_basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-iclb5/igt@kms_psr@psr2_basic.html

  * igt@perf_pmu@module-unload:
    - shard-apl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1635] / [i915#1982])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-apl8/igt@perf_pmu@module-unload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-apl7/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-hsw:          [FAIL][20] ([i915#2389]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-hsw6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [INCOMPLETE][22] ([i915#155]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [INCOMPLETE][24] ([i915#198]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl8/igt@i915_pm_dc@dc5-psr.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl7/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_sseu@full-enable:
    - shard-glk:          [FAIL][26] -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-glk8/igt@i915_pm_sseu@full-enable.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-glk1/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-iclb:         [DMESG-WARN][28] ([i915#1982]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-iclb3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-iclb4/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][30] ([i915#1635] / [i915#1982]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-apl6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-apl1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][32] ([i915#96]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][34] ([i915#2346]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [DMESG-WARN][36] ([i915#1982]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-glk6/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-glk6/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][38] ([i915#2122]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-kbl:          [DMESG-WARN][40] ([i915#1982]) -> [PASS][41] +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-tglb:         [DMESG-WARN][42] ([i915#1982]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][44] ([i915#1188]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][46] ([i915#180]) -> [PASS][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][48] ([fdo#108145] / [i915#265]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][50] ([fdo#109441]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-iclb1/igt@kms_psr@psr2_dpms.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][52] ([i915#1542]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl9/igt@perf@blocking.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl5/igt@perf@blocking.html

  * igt@prime_busy@hang-wait@vecs0:
    - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +7 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl4/igt@prime_busy@hang-wait@vecs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl4/igt@prime_busy@hang-wait@vecs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9008 -> Patchwork_18498

  CI-20190529: 20190529
  CI_DRM_9008: 14dc141acc195be5b1d0ffb563c5c0a277569715 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5784: 265f1d4a5a14998b98f963ee04d695cf3f3c2d3a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18498: b1bfb2b6d79a051ba91b295c3d32ea977ef93095 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/index.html

--===============8257904245613398635==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/3] drm/i915/gem: Avoid implicit vmap for highmem on x86-32</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81682/">https://patchwork.freedesktop.org/series/81682/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9008_full -&gt; Patchwork_18498_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18498_full:</p>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3_array3-position-double_dvec2 (NEW):<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/pig-icl-1065g7/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3_array3-position-double_dvec2.html">INCOMPLETE</a> +6 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9008_full and Patchwork_18498_full:</p>
<h3>New Piglit tests (7)</h3>
<ul>
<li>
<p>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x2-float_float_array3-position:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat2x3_array3-position-double_dvec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3_array3-double_dvec4-position:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3_array3-position-double_dvec2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4-double_dvec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4x3-float_mat3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4x3-int_ivec2_array3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18498_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-kbl6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-kbl6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/96">i915#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-hsw1/igt@kms_flip@2x-busy-flip@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-hsw6/igt@kms_flip@2x-busy-flip@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-iclb5/igt@kms_psr@psr2_basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-apl8/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-apl7/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-hsw6/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-kbl6/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-kbl7/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl8/igt@i915_pm_dc@dc5-psr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl7/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-glk8/igt@i915_pm_sseu@full-enable.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-glk1/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-iclb3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-iclb4/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-apl6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-apl1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/96">i915#96</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-glk6/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-glk6/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-iclb1/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl9/igt@perf@blocking.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl5/igt@perf@blocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang-wait@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9008/shard-skl4/igt@prime_busy@hang-wait@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18498/shard-skl4/igt@prime_busy@hang-wait@vecs0.html">PASS</a> +7 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9008 -&gt; Patchwork_18498</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9008: 14dc141acc195be5b1d0ffb563c5c0a277569715 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5784: 265f1d4a5a14998b98f963ee04d695cf3f3c2d3a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18498: b1bfb2b6d79a051ba91b295c3d32ea977ef93095 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8257904245613398635==--

--===============0333918500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0333918500==--
